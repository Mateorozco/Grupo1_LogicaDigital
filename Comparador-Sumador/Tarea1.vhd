
library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Tarea1 is
	port(	 A,B: in INTEGER RANGE 0 TO 7;
			 Suma: out INTEGER RANGE 0 TO 15;
			 Comp: out STD_LOGIC);
end entity;

architecture Tarea1_arc of Tarea1 is
begin
p1: process(A,B) is
	begin
		if(A>B)then
			Comp <= '1';
		else
			Comp <= '0';
		end if;
		
		Suma <= a+b;
	
	end process;
end architecture;
