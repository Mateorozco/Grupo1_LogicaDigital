library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Check_Grupo1 is
	generic(
		long_entrada:natural:=15
	);
	port(
		A: in std_logic_vector(long_entrada downto 0);
		Y: out std_logic
	);
end entity;

architecture Check_Grupo1_arc of Check_Grupo1 is
begin
	P1: process(A) is
	variable Par:std_logic;
	begin
	Par:='1';
	for i in A'range loop
		if(A(i) = '1' and Par='1') then
			Par:='0';
		elsif(A(i)='1' and Par ='0') then
			Par:='1';
		end if; 
	end loop;
	Y <= Par;
	end process P1;
end architecture;