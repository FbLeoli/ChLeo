-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "10/23/2019 13:54:55"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	reg16 IS
    PORT (
	load : IN std_logic;
	clear : IN std_logic;
	data : IN std_logic_vector(15 DOWNTO 0);
	clock : IN std_logic;
	reg_var : OUT std_logic_vector(15 DOWNTO 0)
	);
END reg16;

-- Design Ports Information
-- reg_var[0]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[1]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[3]	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[4]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[5]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[6]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[7]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[8]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[9]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[10]	=>  Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[11]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[12]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[13]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[14]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[15]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clear	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- load	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[1]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[2]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[3]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[4]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[5]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[6]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[7]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[8]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[9]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[10]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[11]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[12]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[13]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[14]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[15]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF reg16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_reg_var : std_logic_vector(15 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \clear~combout\ : std_logic;
SIGNAL \reg_var~0_combout\ : std_logic;
SIGNAL \load~combout\ : std_logic;
SIGNAL \reg_var[0]~1_combout\ : std_logic;
SIGNAL \reg_var[0]~reg0_regout\ : std_logic;
SIGNAL \reg_var~2_combout\ : std_logic;
SIGNAL \reg_var[1]~reg0_regout\ : std_logic;
SIGNAL \reg_var~3_combout\ : std_logic;
SIGNAL \reg_var[2]~reg0_regout\ : std_logic;
SIGNAL \reg_var~4_combout\ : std_logic;
SIGNAL \reg_var[3]~reg0_regout\ : std_logic;
SIGNAL \reg_var~5_combout\ : std_logic;
SIGNAL \reg_var[4]~reg0_regout\ : std_logic;
SIGNAL \reg_var~6_combout\ : std_logic;
SIGNAL \reg_var[5]~reg0_regout\ : std_logic;
SIGNAL \reg_var~7_combout\ : std_logic;
SIGNAL \reg_var[6]~reg0_regout\ : std_logic;
SIGNAL \reg_var~8_combout\ : std_logic;
SIGNAL \reg_var[7]~reg0_regout\ : std_logic;
SIGNAL \reg_var~9_combout\ : std_logic;
SIGNAL \reg_var[8]~reg0_regout\ : std_logic;
SIGNAL \reg_var~10_combout\ : std_logic;
SIGNAL \reg_var[9]~reg0_regout\ : std_logic;
SIGNAL \reg_var~11_combout\ : std_logic;
SIGNAL \reg_var[10]~reg0_regout\ : std_logic;
SIGNAL \reg_var~12_combout\ : std_logic;
SIGNAL \reg_var[11]~reg0_regout\ : std_logic;
SIGNAL \reg_var~13_combout\ : std_logic;
SIGNAL \reg_var[12]~reg0_regout\ : std_logic;
SIGNAL \reg_var~14_combout\ : std_logic;
SIGNAL \reg_var[13]~reg0_regout\ : std_logic;
SIGNAL \reg_var~15_combout\ : std_logic;
SIGNAL \reg_var[14]~reg0_regout\ : std_logic;
SIGNAL \reg_var~16_combout\ : std_logic;
SIGNAL \reg_var[15]~reg0_regout\ : std_logic;
SIGNAL \data~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_load <= load;
ww_clear <= clear;
ww_data <= data;
ww_clock <= clock;
reg_var <= ww_reg_var;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(1),
	combout => \data~combout\(1));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(4),
	combout => \data~combout\(4));

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(6),
	combout => \data~combout\(6));

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(11),
	combout => \data~combout\(11));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(14),
	combout => \data~combout\(14));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clear~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clear,
	combout => \clear~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(0),
	combout => \data~combout\(0));

-- Location: LCCOMB_X1_Y7_N16
\reg_var~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~0_combout\ = (\clear~combout\ & \data~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~combout\,
	datad => \data~combout\(0),
	combout => \reg_var~0_combout\);

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\load~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_load,
	combout => \load~combout\);

-- Location: LCCOMB_X1_Y7_N22
\reg_var[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var[0]~1_combout\ = (\load~combout\) # (!\clear~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~combout\,
	datac => \load~combout\,
	combout => \reg_var[0]~1_combout\);

-- Location: LCFF_X1_Y7_N17
\reg_var[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~0_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[0]~reg0_regout\);

-- Location: LCCOMB_X1_Y7_N10
\reg_var~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~2_combout\ = (\data~combout\(1) & \clear~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(1),
	datac => \clear~combout\,
	combout => \reg_var~2_combout\);

-- Location: LCFF_X1_Y7_N11
\reg_var[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~2_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[1]~reg0_regout\);

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(2),
	combout => \data~combout\(2));

-- Location: LCCOMB_X1_Y7_N4
\reg_var~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~3_combout\ = (\data~combout\(2) & \clear~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data~combout\(2),
	datac => \clear~combout\,
	combout => \reg_var~3_combout\);

-- Location: LCFF_X1_Y7_N5
\reg_var[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~3_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[2]~reg0_regout\);

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(3),
	combout => \data~combout\(3));

-- Location: LCCOMB_X1_Y7_N6
\reg_var~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~4_combout\ = (\clear~combout\ & \data~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~combout\,
	datac => \data~combout\(3),
	combout => \reg_var~4_combout\);

-- Location: LCFF_X1_Y7_N7
\reg_var[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~4_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[3]~reg0_regout\);

-- Location: LCCOMB_X1_Y7_N0
\reg_var~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~5_combout\ = (\data~combout\(4) & \clear~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(4),
	datac => \clear~combout\,
	combout => \reg_var~5_combout\);

-- Location: LCFF_X1_Y7_N1
\reg_var[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~5_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[4]~reg0_regout\);

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(5),
	combout => \data~combout\(5));

-- Location: LCCOMB_X1_Y7_N26
\reg_var~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~6_combout\ = (\data~combout\(5) & \clear~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data~combout\(5),
	datac => \clear~combout\,
	combout => \reg_var~6_combout\);

-- Location: LCFF_X1_Y7_N27
\reg_var[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~6_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[5]~reg0_regout\);

-- Location: LCCOMB_X1_Y7_N28
\reg_var~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~7_combout\ = (\data~combout\(6) & \clear~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(6),
	datac => \clear~combout\,
	combout => \reg_var~7_combout\);

-- Location: LCFF_X1_Y7_N29
\reg_var[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~7_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[6]~reg0_regout\);

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(7),
	combout => \data~combout\(7));

-- Location: LCCOMB_X1_Y7_N14
\reg_var~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~8_combout\ = (\data~combout\(7) & \clear~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data~combout\(7),
	datac => \clear~combout\,
	combout => \reg_var~8_combout\);

-- Location: LCFF_X1_Y7_N15
\reg_var[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~8_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[7]~reg0_regout\);

-- Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(8),
	combout => \data~combout\(8));

-- Location: LCCOMB_X1_Y7_N8
\reg_var~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~9_combout\ = (\clear~combout\ & \data~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~combout\,
	datac => \data~combout\(8),
	combout => \reg_var~9_combout\);

-- Location: LCFF_X1_Y7_N9
\reg_var[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~9_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[8]~reg0_regout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(9),
	combout => \data~combout\(9));

-- Location: LCCOMB_X1_Y7_N18
\reg_var~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~10_combout\ = (\clear~combout\ & \data~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~combout\,
	datac => \data~combout\(9),
	combout => \reg_var~10_combout\);

-- Location: LCFF_X1_Y7_N19
\reg_var[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~10_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[9]~reg0_regout\);

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(10),
	combout => \data~combout\(10));

-- Location: LCCOMB_X1_Y7_N12
\reg_var~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~11_combout\ = (\data~combout\(10) & \clear~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data~combout\(10),
	datac => \clear~combout\,
	combout => \reg_var~11_combout\);

-- Location: LCFF_X1_Y7_N13
\reg_var[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~11_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[10]~reg0_regout\);

-- Location: LCCOMB_X1_Y7_N30
\reg_var~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~12_combout\ = (\data~combout\(11) & \clear~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(11),
	datac => \clear~combout\,
	combout => \reg_var~12_combout\);

-- Location: LCFF_X1_Y7_N31
\reg_var[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~12_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[11]~reg0_regout\);

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(12),
	combout => \data~combout\(12));

-- Location: LCCOMB_X41_Y5_N16
\reg_var~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~13_combout\ = (\clear~combout\ & \data~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~combout\,
	datac => \data~combout\(12),
	combout => \reg_var~13_combout\);

-- Location: LCFF_X41_Y5_N17
\reg_var[12]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~13_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[12]~reg0_regout\);

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(13),
	combout => \data~combout\(13));

-- Location: LCCOMB_X1_Y7_N24
\reg_var~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~14_combout\ = (\clear~combout\ & \data~combout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~combout\,
	datac => \data~combout\(13),
	combout => \reg_var~14_combout\);

-- Location: LCFF_X1_Y7_N25
\reg_var[13]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~14_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[13]~reg0_regout\);

-- Location: LCCOMB_X1_Y7_N2
\reg_var~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~15_combout\ = (\data~combout\(14) & \clear~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(14),
	datac => \clear~combout\,
	combout => \reg_var~15_combout\);

-- Location: LCFF_X1_Y7_N3
\reg_var[14]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~15_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[14]~reg0_regout\);

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(15),
	combout => \data~combout\(15));

-- Location: LCCOMB_X1_Y7_N20
\reg_var~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~16_combout\ = (\clear~combout\ & \data~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~combout\,
	datac => \data~combout\(15),
	combout => \reg_var~16_combout\);

-- Location: LCFF_X1_Y7_N21
\reg_var[15]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~16_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[15]~reg0_regout\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_var[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_var[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg_var(0));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_var[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_var[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg_var(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_var[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_var[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg_var(2));

-- Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_var[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_var[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg_var(3));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_var[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_var[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg_var(4));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_var[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_var[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg_var(5));

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_var[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_var[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg_var(6));

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_var[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_var[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg_var(7));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_var[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_var[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg_var(8));

-- Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_var[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_var[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg_var(9));

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_var[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_var[10]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg_var(10));

-- Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_var[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_var[11]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg_var(11));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_var[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_var[12]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg_var(12));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_var[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_var[13]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg_var(13));

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_var[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_var[14]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg_var(14));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_var[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_var[15]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_reg_var(15));
END structure;


