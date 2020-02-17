library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compU8 is


	port 
	(
		a	   : in unsigned	(7 downto 0);
		b	   : in unsigned	(7 downto 0);
		result : out std_logic_vector (7 downto 0)
	);

end compU8;

architecture arq_compU8 of compU8 is
begin
	result <= "00000000" when (a < b) else
				 "00000001" when (a = b) else
				 "00000010" when (a > b);			

end arq_compU8;
