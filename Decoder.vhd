library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decoder is
	port( A,B: in std_logic;
	     F0,F1,F2,F3: out std_logic);	
end entity;
architecture Decoder_arc of Decoder is

begin
	F0 <= not(A and B);
	F1 <= ((not A )and B);
	F2 <= (A and (not B));
	F3 <= (A and B);

end architecture;
