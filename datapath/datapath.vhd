library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.DPComp.all;

entity datapath is
	port 
	(
	MD_rw  : in std_logic;
	clk	 : in std_logic;
	PC_ld	 : in std_logic;
	PC_clr : in std_logic;
	PC_f	 : in std_logic;
	PC_fos8	 : in std_logic;
	IR_ld	 : in std_logic;
	IR_clr : in std_logic;
	RI1_in  : in std_logic_vector(7 downto 0);
	RI2_in  : in std_logic_vector(7 downto 0);
	RO1_out: out std_logic_vector(7 downto 0);
	RO2_out: out std_logic_vector(7 downto 0);
	RO1_ld : in std_logic;
	RO2_ld : in std_logic;
	RI1_ld : in std_logic;
	RI2_ld : in std_logic;
	R3_ld  : in std_logic;
	R1_ld : in std_logic;
	R2_ld : in std_logic;
	Mux_1s : in std_logic_vector(1 downto 0);
	Mux_2s : in std_logic_vector(1 downto 0);
	Mux_3s : in std_logic_vector(1 downto 0);
	Mux_Ds : in std_logic_vector(1 downto 0);
	ALU_s  : in std_logic_vector(3 downto 0);
	flg_ld : in std_logic;
	flag_out  : out std_logic_vector(1 downto 0);
	Inst 	    : buffer std_logic_vector(15 downto 0);
	CompOutExt: out std_logic_vector(7 downto 0);
	SaidaAux0: out std_logic_vector(10 downto 0);
	SaidaAux1: out std_logic_vector(7 downto 0);
	SaidaAux2: out std_logic_vector(7 downto 0);
	SaidaAux3: out std_logic_vector(7 downto 0);
	SaidaAux4: out std_logic_vector(7 downto 0);
	SaidaAux5: out std_logic
	);

end datapath;

architecture arqDP of datapath is
	signal ProgramAdd      : std_logic_vector(10 downto 0);
	signal memprogOut		  : std_logic_vector(15 downto 0);
	signal ALU_out		     : std_logic_vector(7  downto 0); 
	signal Data_In 		  : std_logic_vector(7 downto 0);
	signal Data_Out		  : std_logic_vector(7 downto 0);
	
	signal RI1_out         : std_logic_vector(7  downto 0);
	signal RI2_out         : std_logic_vector(7  downto 0);
	signal R3_out          : std_logic_vector(7  downto 0);
	signal R1_out          : std_logic_vector(7  downto 0);
	signal R2_out          : std_logic_vector(7  downto 0);
	signal RZ_out          : std_logic_vector(7  downto 0);
	alias  OffSet	  	     : std_logic_vector(10 DOWNTO 0) IS Inst(10 DOWNTO 0);
	alias  immediate		  : std_logic_vector(7 downto  0) IS Inst(7 downto 0);
	alias  bitsflags		  : std_logic_vector(1 DOWNTO  0) IS ALU_out(1 downto 0); 
	signal Mux1_out        : std_logic_vector(7 downto 0);	
	signal Mux2_out        : std_logic_vector(7 downto 0);
	signal Mux3_out        : std_logic_vector(7 downto 0);
	signal ALU_A			  : std_logic_vector(7 downto 0);
	signal ALU_B			  : std_logic_vector(7 downto 0);
	signal clr				  : std_logic := '0';
	signal RZ_ld	    	  : std_logic := '1';
	signal RZ	           : std_logic_vector(7  downto 0) := "00000000";
	
	
	begin
	SaidaAux0 <= ProgramAdd;
	SaidaAux1 <= R1_out;
	SaidaAux2 <= R2_out;
	SaidaAux3 <= R3_out;
	SaidaAux4 <= ALU_out;
	SaidaAux5 <= MD_rw;
	MemData	  : memdados port map(ALU_out, not(clk), Data_In, MD_rw, Data_Out); 
	MemPro     : memprog port map(ProgramAdd, clk, memprogOut);	
	PC1 		  : PC port map(PC_ld, PC_clr, OffSet, not(clk), PC_f, PC_fos8, ProgramAdd);
	IR 		  : reg16 port map(IR_ld, IR_clr, memprogOut, clk, Inst);
	RI1		  : reg8 port map(RI1_ld, clr, RI1_in, not(clk), RI1_out);
	RI2		  : reg8 port map(RI2_ld, clr, RI2_in, not(clk), RI2_out);
	RO1		  : reg8 port map(RO1_ld, clr, Mux3_out, clk, RO1_out);
	RO2		  : reg8 port map(RO2_ld, clr, Mux3_out, clk, RO2_out);
	
	
	
	R3		     : reg8 port map(R3_ld, clr, Mux1_out, clk, R3_out);
	R1		     : reg8 port map(R1_ld, clr, Mux1_out, clk, R1_out);
	R2		     : reg8 port map(R2_ld, clr, Mux1_out, clk, R2_out);
	RZreg		  : reg8 port map(RZ_ld, clr, RZ, clk, RZ_out);
	
	flag 		  : reg2 port map(flg_ld, clr, bitsflags, clk, flag_out); 
	ALU1 		  : alu port map(Mux3_out, Mux2_out, ALU_s, ALU_out);
	
	Mux1	     : mux4x1 port map(ALU_out, RI1_out, RI2_out, Data_out, Mux_1s, Mux1_out);
	Mux2	     : mux4x1 port map(immediate, R1_out, R2_out, R3_out, Mux_2s, Mux2_out);
	Mux3	     : mux4x1 port map(RZ_out, R1_out, R2_out, R3_out, Mux_3s, Mux3_out);
	MuxDados   : mux4x1 port map(RZ_out, R1_out, R2_out, R3_out, Mux_Ds, Data_In);
	
	compExt	  :comp8 port map(signed(Mux3_out), signed(Mux2_out), CompOutExt);
	--SaidaAux <= ProgramAdd(3 downto 0);
end arqDP;