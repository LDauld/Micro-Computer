library ieee;
use ieee.std_logic_1164.all;
entity mux_6_1 is
port(d0,d1,d2,d3,d4,d5:in std_logic_vector(6 downto 0);
	 s:in std_logic_vector(5 downto 0);
	 cout:out std_logic_vector(6 downto 0));
end mux_6_1;
architecture exp of mux_6_1 is
begin
	cout<=d0 when s="000001" else
		  d1 when s="000010" else
		  d2 when s="000100" else
		  d3 when s="001000" else
		  d4 when s="010000" else
		  d5 when s="100000";
end exp;