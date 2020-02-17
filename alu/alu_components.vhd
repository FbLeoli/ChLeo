library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package alu_components is

	component som_sub_sig is
		port(a: in signed (7 downto 0); b: in signed (7 downto 0); add_sub: in std_logic; result: out signed (7 downto 0));
	end component;
	
	component som_sub_unsig is
		port(a: in unsigned (7 downto 0); b: in unsigned (7 downto 0); add_sub: in std_logic; result: out unsigned (7 downto 0));
	end component;
	
	component comp8 is
		port(a: in signed (7 downto 0); b: in signed (7 downto 0); result: out std_logic_vector (7 downto 0));
	end component;
	
	component compU8 is
		port(a: in unsigned (7 downto 0); b: in unsigned (7 downto 0); result: out std_logic_vector (7 downto 0));
	end component;
	
end alu_components;