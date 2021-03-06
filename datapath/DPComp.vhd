library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package DPComp is
	component comp8 is
		port(a: in signed (7 downto 0); b: in signed (7 downto 0); result: out std_logic_vector (7 downto 0));
	end component;

	component reg2 is
		port(load	: in std_logic; clear	: in std_logic; data  : in std_logic_vector(1 downto 0); clock : in std_logic;
		reg_var	: out  std_logic_vector(1 downto 0));
	end component; 
	
	component reg8 is
		port(load	: in std_logic; clear: in std_logic; data: in std_logic_vector(7 downto 0); clock: in std_logic;
		reg_var	: out  std_logic_vector(7 downto 0));
	end component; 
	
	component reg11 is
		port(load	: in std_logic; clear: in std_logic; data: in std_logic_vector(10 downto 0); clock: in std_logic;
		reg_var	: out  std_logic_vector(10 downto 0));
	end component; 
	
	component reg16 is
		port(load	: in std_logic; clear: in std_logic; data: in std_logic_vector(15 downto 0); clock: in std_logic;
		reg_var	: out  std_logic_vector(15 downto 0));
	end component; 
	
	component PC is 
	port(	load	: in std_logic;	clear	: in std_logic; os    : in std_logic_vector(10 downto 0); clock : in std_logic;
		   f     : in std_logic;  fos8     : in std_logic;   address_prog: buffer  std_logic_vector(10 downto 0)
	);
	end component;
	
	component memdados is 
	port( address: IN STD_LOGIC_VECTOR (7 DOWNTO 0); clock: IN STD_LOGIC  := '1'; data: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
	  wren: IN STD_LOGIC ; q: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	end component;
	
	component memprog is 
	PORT
	(address	: IN STD_LOGIC_VECTOR (10 DOWNTO 0); clock	: IN STD_LOGIC  := '1'; q	: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	end component;
	
	component alu is port 
	(
		a: in std_logic_vector	(7 downto 0);	b: in std_logic_vector	(7 downto 0);	s: in std_logic_vector	(3 downto 0); 
		result : out std_logic_vector (7 downto 0)
	);
	end component;
	
	component mux4x1 is	port 
	(
	 a: in  std_logic_vector (7 downto 0);	b: in  std_logic_vector (7 downto 0); c: in  std_logic_vector (7 downto 0);
	 d: in  std_logic_vector (7 downto 0); s: in  std_logic_vector (1 downto 0); o: out std_logic_vector (7 downto 0)
	);
	end component;

	
end DPComp;