LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE ieee.numeric_std.all; 
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity smartFarm is
generic (CLK_NS: positive := 20); -- 50 MHZ
port(
	dht22_sda: inout std_logic;
	dht22_clk, dht22_reading: in std_logic;
	dht22_done: out std_logic;
	dht22_hum_result, dht22_temp_result: out integer;
	dht22_state_ssd: out std_logic_vector(6 downto 0);
		irSensorData0, irSensorData1 : in std_logic;  ----read the ir data
		fire_state : in std_logic;                    ----read fire sensor data
		soil_moisture : in std_logic;                 ----read data for moisture sensor
		gas_sensor1, gas_sensor2, gas_sensor3, gas_sensor0 : in std_logic;
		cooling_fan : out std_logic;
		water_pump  : out std_logic;                ----control the water pump relay
		Clk : in  STD_LOGIC;
          
           Servo : out  STD_LOGIC
	
	);
	
end smartFarm;


architecture workflow of smartFarm is
	signal fire : std_logic;
	signal fire_manage : std_logic;
	signal moisture : std_logic;
	signal gas_read : std_logic_vector(3 downto 0);
	signal gas_compare0, gas_compare1, gas_compare2, gas_compare3 : std_logic;
	signal gas_state : std_logic;
	signal zero : std_logic;
	component ssd is
port(
	ssd_in: in std_logic_vector(3 downto 0);
	ssd_seg: out std_logic_vector(6 downto 0)
);
end component;
	component ServoDriver is 
port (
	Clk : in  STD_LOGIC;
	Position : in STD_LOGIC_VECTOR (7 downto 0);
   Servo : out  STD_LOGIC);
end component;
     component Controller is
Port (
           Position : out  STD_LOGIC_VECTOR (7 downto 0);
			  irSensorData0 : in std_logic);
end component; 

constant DELAY_26_US: positive := 26 * 10**3 / CLK_NS + 1;
constant DELAY_30_US: positive := 30 * 10**3 / CLK_NS + 1;
constant DELAY_50_US: positive := 50 * 10**3 / CLK_NS + 1;
constant DELAY_70_US: positive := 70 * 10**3 / CLK_NS + 1;
constant DELAY_80_US: positive := 80 * 10**3 / CLK_NS + 1;
constant DELAY_1_MS:  positive := 1 * 10**6 / CLK_NS + 1;

constant state_idle : std_logic_vector(3 downto 0) := "0000";
constant state_start: std_logic_vector(3 downto 0) := "0001";
constant state_rslv: std_logic_vector(3 downto 0) := "0010";
constant state_read: std_logic_vector(3 downto 0) := "0011";
constant state_end: std_logic_vector(3 downto 0) := "0100";
constant state_check : std_logic_vector(3 downto 0) := "0101";

signal dht22_cur_state, dht22_next_state : std_logic_vector(3 downto 0);

signal count_write, count_rslv, count_read, count_end, index : integer := 0;
signal cur_rslv, prev_rslv, cur_read, prev_read,cur_end, prev_end : std_logic := '0';

signal ready : std_logic := '1';
signal bits : std_logic_vector(39 downto 0);
signal Position : std_logic_vector (7 downto 0);
	begin
		zero <= '0';
		fire <= fire_state;
		with fire select
			fire_manage <= 
				'0' when '0' ,
				'1' when '1' ;
		moisture <= soil_moisture;
		gas_read(0) <= gas_sensor0;
		gas_read(1) <= gas_sensor1;
		gas_read(2) <= gas_sensor2;
		gas_read(3) <= gas_sensor3;
		gas_compare0 <= gas_read(0) xnor zero;
		gas_compare1 <= gas_read(1) xnor zero;
		gas_compare2 <= gas_read(2) xnor zero;
		gas_compare3 <= gas_read(3) xnor zero;
		gas_state <= gas_compare0 and gas_compare1 and gas_compare2 and gas_compare3;
		with gas_state select
			cooling_fan <=
				'0' when '1',
				'1' when '0';
		
 
	water_pump <= (fire_manage OR not moisture );
	state_ssd: ssd port map (
	ssd_in => dht22_cur_state,
	ssd_seg => dht22_state_ssd
);

-- PROCESS THAT SWITCHES BETWEEN STATES
process (dht22_clk)
begin
	if rising_edge(dht22_clk) then 
		dht22_cur_state <= dht22_next_state;
	end if;
end process;

-- PROCESS STATE LOGIC
process (dht22_clk)
variable result_hum_h, result_hum_l, result_temp_h, result_temp_l, result_parity: std_logic_vector(7 downto 0);
variable total : std_logic_vector(31 downto 0);
variable new_count : integer := 0;
begin
	if rising_edge(dht22_clk) then
	case dht22_cur_state is
		when state_idle => 	
			dht22_sda <= '1';
			count_write <= 0;
			count_rslv <= 0;
			count_read <= 0;
			count_end <= 0;

			if dht22_reading = '0' then
				ready <= '1';
			end if;
			
			if dht22_reading = '1' and ready = '1' then 
				dht22_next_state <= state_start;
			else
				dht22_next_state <= state_idle;
			end if;
		when state_start =>
			dht22_done <= '0';
			if count_write = 0 then
				dht22_sda <= '0';		 		-- Pull down for start
			end if;
		
			if count_write = DELAY_1_MS then 		-- Hold down 1MS for Tbe
				dht22_sda <= '1';
			end if;

			if count_write = DELAY_1_MS + DELAY_30_US then 	-- 1 MS for expired time and 30US for Tgo
				dht22_sda <= '0';
				dht22_next_state <= state_rslv;
			else
				dht22_next_state <= state_start;
			end if;

			count_write <= count_write + 1;
		when state_rslv =>
			dht22_sda <= 'Z';
			cur_rslv <= dht22_sda;

			if count_rslv > DELAY_80_US and prev_rslv = '1' and cur_rslv = '0' then -- If Trel and Theh > 80 US and SDA is falling
				cur_rslv <= '0';
				prev_rslv <= '0';
				dht22_next_state <= state_read;
			else
				dht22_next_state <= state_rslv;
			end if;

			prev_rslv <= cur_rslv;
			count_rslv <= count_rslv + 1;
		when state_read =>  
			dht22_sda <= 'Z';
			cur_read <= dht22_sda;
			new_count := 1;

			if prev_read = '1' and cur_read = '0' then 		-- Check SDA is falling
		
				if count_read < DELAY_50_US + DELAY_30_US then 	-- 50US for Tlow and 30US for Thi0
					bits(39 - index) <= '0';
					index <= index + 1;
					new_count := 0;
				end if;
		
				if (count_read > DELAY_50_US + DELAY_30_US) and count_read < DELAY_50_US + DELAY_70_US then  -- 50US for Tlow and 70US for Thi1
					bits(39 - index) <= '1';
					index <= index + 1;
					new_count := 0;
				end if;

			end if;
		
			if index > 39 then
				cur_read <= '0';
				prev_read <= '0';
				index <= 0;
				dht22_next_state <= state_end;
			else
				dht22_next_state <= state_read;
			end if;
	
			prev_read <= cur_read;
			if new_count = 1 then
				count_read <= count_read + 1;
			else
				count_read <= 0;
			end if;
		when state_end => 
			dht22_sda <= 'Z';
			cur_end <= dht22_sda;

			if prev_end = '0' and cur_end = '1' then 
				dht22_next_state <= state_check;
				report "check";
			else
				dht22_next_state <= state_end;
			end if;
			
			prev_end <= cur_end;
			count_end <= count_end + 1;
		when state_check => 
			dht22_sda <= '1';

			result_hum_h := bits(39 downto 32);
			result_hum_l := bits(31 downto 24);
			result_temp_h := bits(23 downto 16);
			result_temp_l := bits(15 downto 8);
			result_parity := bits(7 downto 0);

			total := result_hum_h & result_hum_l & result_temp_h & result_temp_l;

			if total(7 downto 0) = not result_parity then
				report "PARITY CHECK FAILED";
			end if;

			dht22_hum_result <= to_integer(unsigned(result_hum_h & result_hum_l));
			dht22_temp_result <= to_integer(unsigned(result_temp_h & result_temp_l));
			
			dht22_done <= '1';

			ready <= '0';
			--dht22_next_state <= state_idle;

		when others => dht22_next_state <= state_idle;
	end case;
	end if;
end process;
	
end workflow;