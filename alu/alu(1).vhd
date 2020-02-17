library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.alu_components.all;

entity alu is
	port 
	(
		a	   : in std_logic_vector	(7 downto 0);
		b	   : in std_logic_vector	(7 downto 0);
		s     : in std_logic_vector	(3 downto 0);
		result : out std_logic_vector (7 downto 0)
	);

end alu;

architecture arqALU of alu is
	signal rsom_sig    : signed (7 downto 0);
	signal rsub_sig	 : signed (7 downto 0);
	signal rsom_unsig  : signed (7 downto 0);
	signal rsub_unsig  : signed (7 downto 0);
	signal rcomp	    : std_logic_vector (7 downto 0);
	signal rcompU      : std_logic_vector (7 downto 0);
	
begin
	som_sig    : som_sub_sig port map(signed(a), signed(b), '1', rsom_sig);
	sub_sig    : som_sub_sig port map(signed(a), signed(b), '0', rsub_sig);
	comp		  : comp8 port map(signed(a), signed(b), rcomp);
	compU		  : compU8 port map(unsigned(a), unsigned(b), rcompU);
	
	with s select
			result <= std_logic_vector(rsom_sig)  when "0001",
						 std_logic_vector(rsub_sig)  when "0010",
						 (a and b) when "0011",
						 (a or b) when "0100",
						 (a xor b) when "0101",
						 rcomp  when "0110",
						 rcompU when "0111",
						 std_logic_vector(shift_left(unsigned(a), to_integer(unsigned(b)))) when "1000",
						 std_logic_vector(shift_right(unsigned(a), to_integer(unsigned(b)))) when "1001",
						 std_logic_vector(shift_right(signed(a), to_integer(unsigned(b)))) when "1010",
						 "00000000" when others;
	
end arqALU;
