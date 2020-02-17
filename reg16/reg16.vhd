library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg16 is
	port
	(
		-- Input ports
		load	: in std_logic;
		clear	: in std_logic;
		data  : in std_logic_vector(15 downto 0);
		clock : in std_logic;

		-- Output ports
		reg_var	: out  std_logic_vector(15 downto 0)

	);
end reg16;

architecture arq_reg16 of reg16 is


begin

process(clear, load, data, clock)
begin
		if (rising_edge(clock)) then
				if (clear = '1') then
					reg_var <= "0000000000000000";
				elsif (load = '1') then
					reg_var <= data;
				end if;
		end if;
end process;
end arq_reg16;
	