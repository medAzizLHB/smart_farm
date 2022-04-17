LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

entity ssd is 
port(
	ssd_in: in std_logic_vector(3 downto 0);
	ssd_seg: out std_logic_vector(6 downto 0)
);
end ssd;

architecture driver of ssd is
begin
	with ssd_in select
	ssd_seg <= 	
			not "0111111" when "0000",
			not "0000110" when "0001",
			not "1011011" when "0010",
			not "1001111" when "0011",
			not "1100110" when "0100",
			not "1101101" when "0101",
			not "1111101" when "0110",
			not "0000111" when "0111",
			not "1111111" when "1000",
			not "1101111" when "1001",
			not "1110111" when "1010",
			not "1111100" when "1011",
			not "0111001" when "1100",
			not "1011110" when "1101",
			not "1111001" when "1110",
			not "1110001" when "1111",
			not "0000000" when others;
end driver;
