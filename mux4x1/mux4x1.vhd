-- Quartus II VHDL Template
-- Signed Adder/Subtractor

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux4x1 is

	port 
	(
		a		: in  std_logic_vector (7 downto 0);
		b		: in  std_logic_vector (7 downto 0);
		c 		: in  std_logic_vector (7 downto 0);
		d		: in  std_logic_vector (7 downto 0);
		s		: in  std_logic_vector (1 downto 0);
		o		: out std_logic_vector (7 downto 0)
	);

end mux4x1;

architecture arq_mux4x1 of mux4x1 is
begin
	
	with s select
	 o <= a    when "00",
			b    when "01",
			c    when "10",
			d    when "11";
					
end arq_mux4x1;
