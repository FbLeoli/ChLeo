-- Quartus II VHDL Template
-- Unsigned Adder/Subtractor

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity som_sub_unsig is


	port 
	(
		a		: in unsigned (7 downto 0);
		b		: in unsigned (7 downto 0);
		add_sub : in std_logic;
		result	: out unsigned (7 downto 0)
	);

end som_sub_unsig;

architecture arq_som_sub_unsig of som_sub_unsig is
begin

	process(a,b,add_sub)
	begin
		-- add if "add_sub" is 1, else subtract
		if (add_sub = '1') then
			result <= a + b;
		else
			result <= a - b;
		end if;
	end process;

end arq_som_sub_unsig;
