library ieee;
use ieee.std_logic_1164.all;
entity SHOW is
port(cin:in std_logic_vector(3 downto 0);
	 cout:out std_logic_vector(6 downto 0));
end SHOW;
architecture exp of SHOW is
begin
	cout<="1111110" when cin="0000" else
		  "0110000" when cin="0001" else
		  "1101101" when cin="0010" else
		  "1111001" when cin="0011" else
		  "0110011" when cin="0100" else
		  "1011011" when cin="0101" else
		  "1011111" when cin="0110" else
		  "1110000" when cin="0111" else
		  "1111111" when cin="1000" else
		  "1111011" when cin="1001" else
		  "1110111" when cin="1010" else
		  "0011111" when cin="1011" else
		  "1001110" when cin="1100" else
		  "0111101" when cin="1101" else
		  "1001111" when cin="1110" else
		  "1000111" when cin="1111" else
		  "0000001";
end exp;
		  