library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Alarma_Grupo1 is
	port( D,K,H: in std_logic;
			B: out std_logic);

end entity;


architecture Alarma_Grupo1_arc of Alarma_Grupo1 is
begin
	B <= (D and (K or H));
end architecture;