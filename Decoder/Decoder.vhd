library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decoder is
	port( A,B,C: in std_logic;
			F0,F1,F2,F3,F4,F5,F6,F7: out std_logic);
			
end entity;

architecture Decoder_arc of Decoder is
begin
	F0 <= not(A and B and C);
	F1 <= ((not A )and (not B) and C);
	F2 <= ((not A) and B and(not C));
	F3 <= ((not A) and B and C);
	F4	<= (A and (not B) and (not C));
	F5	<=	(A and (not B) and C);
	F6	<=	(A and B and (not C));
	F7	<=	(A and B and C);
end architecture;
