library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Controller is
    Port (
           Position : out  STD_LOGIC_VECTOR (7 downto 0));
end Controller;

architecture Behavioral of Controller is

signal ServoPos: unsigned(7 downto 0) := "00000000";

signal irSensorData0: std_logic;
signal Direction: std_logic;

begin

process (irSensorData0)
begin
	if irSensorData0='1' then
		if Direction='1' then
			ServoPos <= ServoPos + 4;
			Position <= conv_std_logic_vector(ServoPos, 8);
		wait for 5 sec;
			ServoPos <= ServoPos - 4;
			Position <= conv_std_logic_vector(ServoPos, 8);
		end if;
	end if;
end process;



end Behavioral;