library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity cdu16 is
port(CLR,CDUCLK,EN:in std_logic;
	 ENO:out std_logic;
	 K:out std_logic_vector(3 downto 0));
end cdu16;

architecture exp of cdu16 is
signal Temp:std_logic_vector(3 downto 0):="0000";
begin
	process(CDUCLK)
		begin
			if (CDUCLK'event and CDUCLK='1') then
				if EN='1' and CLR='0' then
					Temp<=Temp+"0001";
				elsif CLR='1' then
					Temp<="0000";
				end if;
			end if;
	end process;
	ENO<='1' when Temp="1111" else
		 '0';
	K<=Temp;
end exp;