library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comp8 is


	port 
	(
		a	   : in signed	(7 downto 0);
		b	   : in signed	(7 downto 0);
		result : out std_logic_vector (7 downto 0)
	);

end comp8;

architecture arq_comp8 of comp8 is
begin
	result <= "00000000" when (a < b) else
				 "00000001" when (a = b) else
				 "00000010" when (a > b);			

end arq_comp8;
