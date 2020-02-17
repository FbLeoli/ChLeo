library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC is
	port
	(
		load	: in std_logic;
		clear	: in std_logic;
		os    : in std_logic_vector(10 downto 0);
		clock : in std_logic;
		f     : in std_logic;
		fos8	: in std_logic;

		-- Output ports
		address_prog: buffer  std_logic_vector(10 downto 0)

	);
end PC;

architecture arq_PC of PC is

alias os8   : std_logic_vector(7 downto 0)is os(7 downto 0); 

begin
process(clear, clock)
begin
		if (rising_edge(clock)) then
				if (clear = '1') then
					address_prog <= "00000000000";
				elsif (load = '1') then
						if (f = '0') then
								address_prog <= std_logic_vector(unsigned(address_prog) + 1);
						else
							if (fos8 = '0') then
								address_prog <= std_logic_vector(unsigned(os));
							else
								address_prog <= std_logic_vector(ABS(signed(address_prog)) + signed(os8) - 1);
							end if;
						end if;
				end if;
		end if;
end process;
end arq_PC;
	