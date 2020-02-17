library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg8 is
	port
	(
		-- Input ports
		load	: in std_logic;
		clear	: in std_logic;
		data  : in std_logic_vector(7 downto 0);
		clock : in std_logic;

		-- Output ports
		reg_var	: out  std_logic_vector(7 downto 0)

	);
end reg8;

architecture arq_reg8 of reg8 is


begin

	-- In Altera devices, register signals have a set priority.
-- The HDL design should reflect this priority.
process(clear, load, data, clock)
begin
		-- At a clock edge, if asynchronous signals have not taken priority,
		-- respond to the appropriate synchronous signal.
		-- Check for synchronous reset, then synchronous load.
		-- If none of these takes precedence, update the register output
		-- to be the register input.
		if (rising_edge(clock)) then
				if (clear = '1') then
					reg_var <= "00000000";
				elsif (load = '1') then
					reg_var <= data;
				
				end if;
		end if;
end process;
end arq_reg8;
	