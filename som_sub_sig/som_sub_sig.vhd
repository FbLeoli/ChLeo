-- Quartus II VHDL Template
-- Signed Adder/Subtractor

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity som_sub_sig is

	port 
	(
		a		: in signed (7 downto 0);
		b		: in signed (7 downto 0);
		add_sub : in std_logic;
		result	: out signed (7 downto 0)
	);

end som_sub_sig;

architecture arq_som_sub_sig of som_sub_sig is
begin

	process(a,b,add_sub)
	begin
		-- Add if "add_sub" is 1, else subtract
		if (add_sub = '1') then
			result <= a + b;
		else
			result <= a - b;
		end if;
	end process;

end arq_som_sub_sig;
