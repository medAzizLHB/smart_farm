library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ServoDriver is
    Port ( Clk : in  STD_LOGIC;
	        Position : in STD_LOGIC_VECTOR (7 downto 0);
           Servo : out  STD_LOGIC);
end ServoDriver;

architecture Behavioral of ServoDriver is

constant ClockDiv: integer := 63;

signal ClockTick: std_logic := '0';
signal ClockCount: std_logic_vector (6 downto 0) := "0000000";

signal PulseCount: std_logic_vector (11 downto 0) := "000000000000";

begin

process (Clk)
begin
	if Clk='1' and Clk'event then
		if ClockCount = ClockDiv-2 then
			ClockTick <= '1';
		else
			ClockTick <= '0';
		end if;
		if ClockTick='1' then
			ClockCount <= "0000000";
		else
			ClockCount <= ClockCount + 1;
		end if;
	end if;
end process;

process (Clk)
begin
	if Clk='1' and Clk'event then
		if ClockTick='1' then
			PulseCount <= PulseCount + 1;
		end if;
		if PulseCount < ("0001" & Position) then
			Servo <= '1';
		else
			Servo <= '0';
		end if;
	end if;
end process;

end Behavioral;