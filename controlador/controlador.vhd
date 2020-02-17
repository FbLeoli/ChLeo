-- Quartus II VHDL Template
-- Four-State Mealy State Machine

-- A Mealy machine has outputs that depend on both the state and
-- the inputs.	When the inputs change, the outputs are updated
-- immediately, without waiting for a clock edge.  The outputs
-- can be written more than once per state or per clock cycle.

library ieee;
use ieee.std_logic_1164.all;

entity controlador is
	port
	(
		clk		   : in	std_logic;
		reset	      : in	std_logic;
		instruction : in  std_logic_vector(15 downto 0);
		PC_fC			: buffer std_logic;
		PC_fos8C			: buffer std_logic;
		MD_rwC, PC_ldC, PC_clrC, IR_ldC, IR_clrC, RO1_ldC, RO2_ldC, RI1_ldC, flg_ldC, RI2_ldC, R3_ldC, R1_ldC, R2_ldC: out std_logic;
		Mux_1sC, Mux_2sC, Mux_3sC, Mux_DsC: out std_logic_vector(1 downto 0);
		ALU_sC		: out std_logic_vector(3 downto 0);
		outG1 		: out std_logic := '0';
		CompOutExtC : in std_logic_vector(7 downto 0);
		s				: out std_logic_vector(1 downto 0)
	);

end entity;

architecture arq_controlador of controlador is

	-- Build an enumerated type for the state machine
	type state_type is (inicio, busca, decod, ADD, SUB, ANDD, ORR, XORR, CMP, CMPU, SLLL, SLRR, SLAA, INN, OUTT, MOV, ADDI, ANDI, ORI, XORI, LOAD, STORE, JMP, RET, BEQ, BLT, BHT);

	-- Register to hold the current state
	signal state : state_type := inicio;
	signal f 	 : std_logic := '0';
	alias opcodeAux : std_logic_vector(1 downto 0)is instruction(15 downto 14); 
	alias opcode1   : std_logic_vector(3 downto 0)is instruction(13 downto 10); 
	alias opcode2   : std_logic_vector(1 downto 0)is instruction(13 downto 12); 
	alias RD			 : std_logic_vector(1 downto 0) is instruction(9 downto 8);
	alias RS1	    : std_logic_vector(1 downto 0) is instruction(7 downto 6);
	alias RS2		 : std_logic_vector(1 downto 0) is instruction(5 downto 4);
	alias RDI 		 : std_logic_vector(1 downto 0) is instruction(11 downto 10);
	alias RSI 		 : std_logic_vector(1 downto 0) is instruction(9 downto 8);

 
	
begin	

	process (clk, reset)
	begin
		if (reset = '1') then
			state <= inicio;
	
		elsif (rising_edge(clk)) then
			case state is
				when inicio =>
					state <= busca;		
					
				when busca =>
					state <= decod;			
				when decod =>
					case opcodeAux is
						when "00" =>
							case opcode1 is
								when "0000" =>
									state <= ADD;
								when "0001" =>
									state <= SUB;
								when "0010" =>
									state <= ANDD;
								when "0011" =>
									state <= ORR;
								when "0100" =>
									state <= XORR;
								when "0101" =>
									state <= CMP;
								when "0110" =>
									state <= CMPU;	
								when "0111" =>
									state <= SLLL;
								when "1000" =>
									state <= SLRR;
								when "1001" =>
									state <= SLAA;
								when "1010" =>
									state <= INN;
								when "1011" =>
									state <= OUTT;
								when "1100" =>
									state <= MOV;
								when others =>
									state <= inicio;
							end case;
						when "01" =>
							case opcode2 is
								when "00" =>
									state <= ADDI;  
								when "01" =>
									state <= ANDI;
								when "10" =>
									state <= ORI;
								when "11" =>
									state <= XORI;
								when others =>
									state <= inicio;
							end case;
						when "10" =>
							case opcode2 is
								when "00" =>
									state <= LOAD;  
								when "01" =>
									state <= STORE;
								when "10" =>
									state <= JMP;
								when others =>
									state <= inicio;
							end case;
						when "11" =>
							case opcode2 is
								when "00" =>
									state <= BEQ;  
								when "01" =>
									state <= BLT;
								when "10" =>
									state <= BHT;
								when others =>
									state <= inicio;
							end case;
						when others =>
							state <= inicio;
					end case;
				
				when others => 
					state <= busca;
			end case;
		end if;
	end process;
	
	
	process (state)
	begin		
			case state is
				when inicio =>
					PC_clrC <= '1';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					IR_ldC  <= '0';
					R1_ldC  <= '0';
					R2_ldC  <= '0';
					R3_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					MD_rwC  <= '0';
					s <= "00";
					
				when busca =>
					PC_clrC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					IR_ldC  <= '1';
					PC_ldC  <= '1';
					R1_ldC  <= '0';
					R2_ldC  <= '0';
					R3_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					MD_rwC  <= '0';
					ALU_sC <= "0001";
					Mux_2sC <= "00";
					Mux_3sC <= "00";
					s <= "01";
					
				when decod =>		
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					R1_ldC  <= '0';
					R2_ldC  <= '0';
					R3_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					ALU_sC <= "0001";
					Mux_2sC <= "00";
					Mux_3sC <= "00";
					s <= "10";
				
				--ADD
				when ADD =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					outG1 <= '0';
					case RD is
						when "00" | "01" =>
							R1_ldC <= '1';
							R2_ldC  <= '0';
							R3_ldC  <= '0';
						when "10" => 
							R2_ldC <= '1';
							R1_ldC  <= '0';
							R3_ldC  <= '0';
						when "11" => 
							R3_ldC <= '1';
							R2_ldC  <= '0';
							R1_ldC  <= '0';
					end case; 
					if (RS1 = "00") then 
						Mux_3sC <= RS1;
						Mux_2sC <= RS2;
					else
						Mux_2sC <= RS1;
						Mux_3sC <= RS2;
					end if;
					Mux_1sC <= "00";
					ALU_sC <= "0001";
				
				--SUB
				when SUB =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					case RD is
						when "00" | "01" =>
							R1_ldC <= '1';
							R2_ldC  <= '0';
							R3_ldC  <= '0';
						when "10" => 
							R2_ldC <= '1';
							R1_ldC  <= '0';
							R3_ldC  <= '0';
						when "11" => 
							R3_ldC <= '1';
							R2_ldC  <= '0';
							R1_ldC  <= '0';
					end case; 
					if (RS1 = "00") then 
						Mux_3sC <= RS1;
						Mux_2sC <= RS2;
					else
						Mux_2sC <= RS1;
						Mux_3sC <= RS2;
					end if;
					Mux_1sC <= "00";
					ALU_sC <= "0010";
				
				--ANDD
				when ANDD =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					case RD is
						when "00" | "01" =>
							R1_ldC <= '1';
							R2_ldC  <= '0';
							R3_ldC  <= '0';
						when "10" => 
							R2_ldC <= '1';
							R1_ldC  <= '0';
							R3_ldC  <= '0';
						when "11" => 
							R3_ldC <= '1';
							R2_ldC  <= '0';
							R1_ldC  <= '0';
					end case; 
					if (RS1 = "00") then 
						Mux_3sC <= RS1;
						Mux_2sC <= RS2;
					else
						Mux_2sC <= RS1;
						Mux_3sC <= RS2;
					end if;
					Mux_1sC <= "00";
					ALU_sC <= "0011";
					
				--ORR
				when ORR =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					case RD is
						when "00" | "01" =>
							R1_ldC <= '1';
							R2_ldC  <= '0';
							R3_ldC  <= '0';
						when "10" => 
							R2_ldC <= '1';
							R1_ldC  <= '0';
							R3_ldC  <= '0';
						when "11" => 
							R3_ldC <= '1';
							R2_ldC  <= '0';
							R1_ldC  <= '0';
					end case; 
					if (RS1 = "00") then 
						Mux_3sC <= RS1;
						Mux_2sC <= RS2;
					else
						Mux_2sC <= RS1;
						Mux_3sC <= RS2;
					end if;
					Mux_1sC <= "00";
					ALU_sC <= "0100";
				
			   --XORR	
				when XORR =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					case RD is
						when "00" | "01" =>
							R1_ldC <= '1';
							R2_ldC  <= '0';
							R3_ldC  <= '0';
						when "10" => 
							R2_ldC <= '1';
							R1_ldC  <= '0';
							R3_ldC  <= '0';
						when "11" => 
							R3_ldC <= '1';
							R2_ldC  <= '0';
							R1_ldC  <= '0';
					end case; 
					if (RS1 = "00") then 
						Mux_3sC <= RS1;
						Mux_2sC <= RS2;
					else
						Mux_2sC <= RS1;
						Mux_3sC <= RS2;
					end if;
					Mux_1sC <= "00";
					ALU_sC <= "0101";
				
				--CMP
				when CMP =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					flg_ldC <= '1';
					MD_rwC  <= '0';
					 
					Mux_3sC <= RD;
					Mux_2sC <= RS1;
				
					ALU_sC <= "0110";
					
				--CMPU
				when CMPU =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					flg_ldC <= '1';
					MD_rwC  <= '0';
					 
					Mux_3sC <= RD;
					Mux_2sC <= RS1;
				
					ALU_sC <= "0111";
					
				--SLLL RS1 é o quanto queremos deslocar
				when SLLL =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					case RD is
						when "00" | "01" =>
							R1_ldC <= '1';
							R2_ldC  <= '0';
							R3_ldC  <= '0';
						when "10" => 
							R2_ldC <= '1';
							R1_ldC  <= '0';
							R3_ldC  <= '0';
						when "11" => 
							R3_ldC <= '1';
							R2_ldC  <= '0';
							R1_ldC  <= '0';
					end case; 
					if (RS1 = "00") then 
						Mux_3sC <= RS1;
						Mux_2sC <= RS2;
					else
						Mux_2sC <= RS1;
						Mux_3sC <= RS2;
					end if;
					Mux_1sC <= "00";
					ALU_sC <= "1000";
					
				--SLRR
				when SLRR =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					case RD is
						when "00" | "01" =>
							R1_ldC <= '1';
							R2_ldC  <= '0';
							R3_ldC  <= '0';
						when "10" => 
							R2_ldC <= '1';
							R1_ldC  <= '0';
							R3_ldC  <= '0';
						when "11" => 
							R3_ldC <= '1';
							R2_ldC  <= '0';
							R1_ldC  <= '0';
					end case; 
					if (RS1 = "00") then 
						Mux_3sC <= RS1;
						Mux_2sC <= RS2;
					else
						Mux_2sC <= RS1;
						Mux_3sC <= RS2;
					end if;
					Mux_1sC <= "00";
					ALU_sC <= "1001";
					
			   --SLAA
				when SLAA =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					case RD is
						when "00" | "01" =>
							R1_ldC <= '1';
							R2_ldC  <= '0';
							R3_ldC  <= '0';
						when "10" => 
							R2_ldC <= '1';
							R1_ldC  <= '0';
							R3_ldC  <= '0';
						when "11" => 
							R3_ldC <= '1';
							R2_ldC  <= '0';
							R1_ldC  <= '0';
					end case; 
					if (RS1 = "00") then 
						Mux_3sC <= RS1;
						Mux_2sC <= RS2;
					else
						Mux_2sC <= RS1;
						Mux_3sC <= RS2;
					end if;
					Mux_1sC <= "00";
					ALU_sC <= "1010";
				
				
				--ADDI	
				when ADDI =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					case RDI is
						when "00" | "01" =>
							R1_ldC <= '1';
							R2_ldC  <= '0';
							R3_ldC  <= '0';
						when "10" => 
							R2_ldC <= '1';
							R1_ldC  <= '0';
							R3_ldC  <= '0';
						when "11" => 
							R3_ldC <= '1';
							R2_ldC  <= '0';
							R1_ldC  <= '0';
					end case; 
					Mux_2sC <= "00";
					Mux_3sC <= RSI;
					Mux_1sC <= "00";
					ALU_sC <= "0001";
					
				--ANDI	
				when ANDI =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					case RDI is
						when "00" | "01" =>
							R1_ldC <= '1';
							R2_ldC  <= '0';
							R3_ldC  <= '0';
						when "10" => 
							R2_ldC <= '1';
							R1_ldC  <= '0';
							R3_ldC  <= '0';
						when "11" => 
							R3_ldC <= '1';
							R2_ldC  <= '0';
							R1_ldC  <= '0';
					end case; 
					Mux_2sC <= "00";
					Mux_3sC <= RSI;
					Mux_1sC <= "00";
					ALU_sC <= "0011";
					
				--ORI	
				when ORI =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					case RDI is
						when "00" | "01" =>
							R1_ldC <= '1';
							R2_ldC  <= '0';
							R3_ldC  <= '0';
						when "10" => 
							R2_ldC <= '1';
							R1_ldC  <= '0';
							R3_ldC  <= '0';
						when "11" => 
							R3_ldC <= '1';
							R2_ldC  <= '0';
							R1_ldC  <= '0';
					end case; 
					Mux_2sC <= "00";
					Mux_3sC <= RSI;
					Mux_1sC <= "00";
					ALU_sC <= "0100";
					
				--XORI	
				when XORI =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					case RDI is
						when "00" | "01" =>
							R1_ldC <= '1';
							R2_ldC  <= '0';
							R3_ldC  <= '0';
						when "10" => 
							R2_ldC <= '1';
							R1_ldC  <= '0';
							R3_ldC  <= '0';
						when "11" => 
							R3_ldC <= '1';
							R2_ldC  <= '0';
							R1_ldC  <= '0';
					end case; 
					Mux_2sC <= "00";
					Mux_3sC <= RSI;
					Mux_1sC <= "00";
					ALU_sC <= "0101";
					
				--IN	
				when INN=>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					if (RS1(1) = '0') then 
						RI1_ldC <= '1';	
						RI2_ldC <= '0';	
						Mux_1sC <= "01";
					else
						RI1_ldC <= '0';
						RI2_ldC <= '1';
						Mux_1sC <= "10";
					end if;
					
					case RD is
						when "00" | "01" =>
							R1_ldC <= '1';
							R2_ldC  <= '0';
							R3_ldC  <= '0';
						when "10" => 
							R2_ldC <= '1';
							R1_ldC  <= '0';
							R3_ldC  <= '0';
						when "11" => 
							R3_ldC <= '1';
							R2_ldC  <= '0';
							R1_ldC  <= '0';
					end case; 
				
					
			--OUTT
				when OUTT=>
						s <= "11";
						IR_ldC  <= '0';
					   PC_clrC <= '0';
					   PC_ldC  <= '0';
					   RI1_ldC <= '0';
					   RI2_ldC <= '0';
						R1_ldC  <= '0';
						R2_ldC  <= '0';
						R3_ldC  <= '0';
						flg_ldC <= '0';
						PC_fC   <= '0';
						PC_fos8C<= '0';
						MD_rwC  <= '0';
						if (RS1(1) = '0') then 
							RO1_ldC <= '1';	
							RO2_ldC <= '0';
						else
							RO1_ldC <= '0';
							RO2_ldC <= '1';
						end if;
						Mux_3sC <= RD;
						
				--MOV
				when MOV=>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					case RD is
						when "00" | "01" =>
							R1_ldC  <= '1';
							R2_ldC  <= '0';
							R3_ldC  <= '0';
						when "10" => 
							R2_ldC <= '1';
							R1_ldC  <= '0';
							R3_ldC  <= '0';
						when "11" => 
							R3_ldC <= '1';
							R2_ldC  <= '0';
							R1_ldC  <= '0';
					end case; 
					Mux_2sC <= RS1;
					Mux_3sC <= "00";
					Mux_1sC <= "00";
					ALU_sC <= "0001";
					
				--JMP	
				when JMP =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '1';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					R3_ldC  <= '0';
					R2_ldC  <= '0';
					R1_ldC  <= '0';
				   PC_fC   <= '1';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					
					
						
				--BEQ	
				when BEQ =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					R3_ldC  <= '0';
					R2_ldC  <= '0';
					R1_ldC  <= '0';
					flg_ldC <= '1';
					MD_rwC  <= '0';
					Mux_3sC <= RDI;
					Mux_2sC <= RSI;
					
					if(CompOutExtC = "00000001")then
				   PC_fC   <= '1';
					PC_fos8C<= '1';
					PC_ldC  <= '1';
					else
					PC_fC   <= '0';
					PC_fos8C<= '0';
					PC_ldC  <= '0';
					end if;
					
				--BLT	
				when BLT =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					R3_ldC  <= '0';
					R2_ldC  <= '0';
					R1_ldC  <= '0';
					flg_ldC <= '1';
					MD_rwC  <= '0';
					Mux_3sC <= RDI;
					Mux_2sC <= RSI;
					
					if(CompOutExtC = "00000000")then
				   PC_fC   <= '1';
					PC_fos8C<= '1';
					PC_ldC  <= '1';
					else
					PC_fC   <= '0';
					PC_fos8C<= '0';
					PC_ldC  <= '0';
					end if;
					
				--BHT
				when BHT =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					R3_ldC  <= '0';
					R2_ldC  <= '0';
					R1_ldC  <= '0';
					flg_ldC <= '1';
					MD_rwC  <= '0';
					Mux_3sC <= RDI;
					Mux_2sC <= RSI;
					
					if(CompOutExtC = "00000010")then
				   PC_fC   <= '1';
					PC_fos8C<= '1';
					PC_ldC  <= '1';
					else
					PC_fC   <= '0';
					PC_fos8C<= '0';
					PC_ldC  <= '0';
					end if;
					
					
				--LOAD
				when LOAD =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '0';
					outG1 <= '0';
					case RDI is
						when "00" | "01" =>
							R1_ldC <= '1';
							R2_ldC  <= '0';
							R3_ldC  <= '0';
						when "10" => 
							R2_ldC <= '1';
							R1_ldC  <= '0';
							R3_ldC  <= '0';
						when "11" => 
							R3_ldC <= '1';
							R2_ldC  <= '0';
							R1_ldC  <= '0';
					end case; 
					Mux_2sC <= "00";
					Mux_3sC <= RSI;
					Mux_1sC <= "11";
					ALU_sC <= "0001";
				
				--STORE
				when STORE =>
					s <= "11";
					IR_ldC  <= '0';
					PC_clrC <= '0';
					PC_ldC  <= '0';
					RI1_ldC <= '0';
					RI2_ldC <= '0';
					RO1_ldC <= '0';
					RO2_ldC <= '0';
					flg_ldC <= '0';
					PC_fC   <= '0';
					PC_fos8C<= '0';
					MD_rwC  <= '1';
					R1_ldC  <= '0';
					R2_ldC  <= '0';
					R3_ldC  <= '0';
						
					outG1 <= '0';
					Mux_DsC <= RDI;
					Mux_2sC <= "00";
					Mux_3sC <= RSI;
					Mux_1sC <= "00";
					ALU_sC <= "0001";
					

				when others =>
			end case;
	end process;
end arq_controlador;