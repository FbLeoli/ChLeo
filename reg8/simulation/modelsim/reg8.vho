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

-- DATE "10/16/2019 14:49:43"

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

ENTITY 	reg8 IS
    PORT (
	load : IN std_logic;
	clear : IN std_logic;
	data : IN std_logic_vector(7 DOWNTO 0);
	clock : IN std_logic;
	reg_var : OUT std_logic_vector(7 DOWNTO 0)
	);
END reg8;

-- Design Ports Information
-- reg_var[0]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[1]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[2]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[3]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[4]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[5]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[6]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_var[7]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clear	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- load	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[1]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[2]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[3]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[4]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[5]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[6]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[7]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF reg8 IS
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
SIGNAL ww_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_reg_var : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \data~combout\ : std_logic_vector(7 DOWNTO 0);

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

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y28_N8
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

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y28_N24
\reg_var[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var[0]~1_combout\ = (\load~combout\) # (!\clear~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~combout\,
	datac => \clear~combout\,
	combout => \reg_var[0]~1_combout\);

-- Location: LCFF_X64_Y28_N9
\reg_var[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~0_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[0]~reg0_regout\);

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y28_N26
\reg_var~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~2_combout\ = (\clear~combout\ & \data~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear~combout\,
	datac => \data~combout\(1),
	combout => \reg_var~2_combout\);

-- Location: LCFF_X64_Y28_N27
\reg_var[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~2_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[1]~reg0_regout\);

-- Location: LCCOMB_X64_Y28_N4
\reg_var~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~3_combout\ = (\data~combout\(2) & \clear~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(2),
	datac => \clear~combout\,
	combout => \reg_var~3_combout\);

-- Location: LCFF_X64_Y28_N5
\reg_var[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~3_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[2]~reg0_regout\);

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y28_N14
\reg_var~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~4_combout\ = (\clear~combout\ & \data~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~combout\,
	datad => \data~combout\(3),
	combout => \reg_var~4_combout\);

-- Location: LCFF_X64_Y28_N15
\reg_var[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~4_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[3]~reg0_regout\);

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y28_N0
\reg_var~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~5_combout\ = (\clear~combout\ & \data~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~combout\,
	datad => \data~combout\(4),
	combout => \reg_var~5_combout\);

-- Location: LCFF_X64_Y28_N1
\reg_var[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~5_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[4]~reg0_regout\);

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y28_N10
\reg_var~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~6_combout\ = (\clear~combout\ & \data~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~combout\,
	datad => \data~combout\(5),
	combout => \reg_var~6_combout\);

-- Location: LCFF_X64_Y28_N11
\reg_var[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~6_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[5]~reg0_regout\);

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y28_N12
\reg_var~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~7_combout\ = (\clear~combout\ & \data~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~combout\,
	datad => \data~combout\(6),
	combout => \reg_var~7_combout\);

-- Location: LCFF_X64_Y28_N13
\reg_var[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~7_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[6]~reg0_regout\);

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y28_N22
\reg_var~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_var~8_combout\ = (\clear~combout\ & \data~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~combout\,
	datad => \data~combout\(7),
	combout => \reg_var~8_combout\);

-- Location: LCFF_X64_Y28_N23
\reg_var[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_var~8_combout\,
	ena => \reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_var[7]~reg0_regout\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
END structure;


