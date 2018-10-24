library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Corrimiento_Grupo1 is
	port(
		W: in std_logic_vector(3 downto 0);
		shift: in std_logic;
		Y: out std_logic_vector(3 downto 0);
		K: out std_logic
		);
end entity;

architecture Corrimiento_Grupo1_arc of corrimiento_Grupo1 is
begin
P1: process(shift) is
begin
	if(shift='1')then
		K <= W(0);
		Y(2 downto 0) <= W(3 downto 1);
		Y(3)<='0';
	else 
		K <= '0';
		Y <= W;
	end if;
end process P1;
end architecture;