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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/11/2024 11:11:53"

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

ENTITY 	top IS
    PORT (
	clock : IN std_logic;
	resetn : IN std_logic;
	chipselect : IN std_logic;
	writedata : IN std_logic_vector(31 DOWNTO 0);
	write_en : IN std_logic;
	readdata : OUT std_logic_vector(31 DOWNTO 0);
	add : IN std_logic_vector(1 DOWNTO 0);
	read_en : IN std_logic
	);
END top;

-- Design Ports Information
-- readdata[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[1]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[2]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[3]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[4]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[5]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[6]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[7]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[8]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[9]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[10]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[11]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[12]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[13]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[14]	=>  Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[15]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[16]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[17]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[18]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[19]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[20]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[21]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[22]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[23]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[24]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[25]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[26]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[27]	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[28]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[29]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[30]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[31]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- chipselect	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- read_en	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- add[1]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- add[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- write_en	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[0]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[1]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[2]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[3]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[4]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[5]	=>  Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[7]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[8]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[9]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[10]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[11]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[12]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[13]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[14]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[15]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[16]	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[17]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[18]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[19]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[20]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[21]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[22]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[23]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[24]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[25]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[26]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[27]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[28]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[29]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[30]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[31]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_chipselect : std_logic;
SIGNAL ww_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_write_en : std_logic;
SIGNAL ww_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_add : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_read_en : std_logic;
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \resetn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \r32_0|Q[3]~feeder_combout\ : std_logic;
SIGNAL \r32_0|Q[6]~feeder_combout\ : std_logic;
SIGNAL \r32_0|Q[7]~feeder_combout\ : std_logic;
SIGNAL \resetn~combout\ : std_logic;
SIGNAL \resetn~clkctrl_outclk\ : std_logic;
SIGNAL \write_en~combout\ : std_logic;
SIGNAL \chipselect~combout\ : std_logic;
SIGNAL \write_enable0~combout\ : std_logic;
SIGNAL \write_enable1~0_combout\ : std_logic;
SIGNAL \readdata[0]~32_combout\ : std_logic;
SIGNAL \write_enable2~combout\ : std_logic;
SIGNAL \r32_2|Q_aux~0_combout\ : std_logic;
SIGNAL \read_enable_reg_1~0_combout\ : std_logic;
SIGNAL \readdata[0]~33_combout\ : std_logic;
SIGNAL \read_en~combout\ : std_logic;
SIGNAL \readdata[31]~34_combout\ : std_logic;
SIGNAL \readdata[1]~35_combout\ : std_logic;
SIGNAL \r32_2|Q_aux~1_combout\ : std_logic;
SIGNAL \readdata[1]~36_combout\ : std_logic;
SIGNAL \r32_0|Q[2]~feeder_combout\ : std_logic;
SIGNAL \readdata[2]~37_combout\ : std_logic;
SIGNAL \readdata[2]~38_combout\ : std_logic;
SIGNAL \readdata[3]~39_combout\ : std_logic;
SIGNAL \readdata[3]~40_combout\ : std_logic;
SIGNAL \readdata[4]~41_combout\ : std_logic;
SIGNAL \readdata[4]~42_combout\ : std_logic;
SIGNAL \r32_0|Q[5]~feeder_combout\ : std_logic;
SIGNAL \readdata[5]~43_combout\ : std_logic;
SIGNAL \readdata[5]~44_combout\ : std_logic;
SIGNAL \readdata[6]~45_combout\ : std_logic;
SIGNAL \readdata[6]~46_combout\ : std_logic;
SIGNAL \readdata[7]~47_combout\ : std_logic;
SIGNAL \readdata[7]~48_combout\ : std_logic;
SIGNAL \readdata[8]~49_combout\ : std_logic;
SIGNAL \readdata[8]~50_combout\ : std_logic;
SIGNAL \readdata[9]~51_combout\ : std_logic;
SIGNAL \readdata[9]~52_combout\ : std_logic;
SIGNAL \r32_0|Q[10]~feeder_combout\ : std_logic;
SIGNAL \readdata[10]~53_combout\ : std_logic;
SIGNAL \readdata[10]~54_combout\ : std_logic;
SIGNAL \readdata[11]~55_combout\ : std_logic;
SIGNAL \readdata[11]~56_combout\ : std_logic;
SIGNAL \r32_0|Q[12]~feeder_combout\ : std_logic;
SIGNAL \readdata[12]~57_combout\ : std_logic;
SIGNAL \readdata[12]~58_combout\ : std_logic;
SIGNAL \readdata[13]~59_combout\ : std_logic;
SIGNAL \readdata[13]~60_combout\ : std_logic;
SIGNAL \readdata[14]~61_combout\ : std_logic;
SIGNAL \readdata[14]~62_combout\ : std_logic;
SIGNAL \readdata[15]~63_combout\ : std_logic;
SIGNAL \readdata[15]~64_combout\ : std_logic;
SIGNAL \r32_0|Q[16]~feeder_combout\ : std_logic;
SIGNAL \readdata[16]~65_combout\ : std_logic;
SIGNAL \readdata[16]~66_combout\ : std_logic;
SIGNAL \readdata[17]~67_combout\ : std_logic;
SIGNAL \readdata[17]~68_combout\ : std_logic;
SIGNAL \readdata[18]~69_combout\ : std_logic;
SIGNAL \readdata[18]~70_combout\ : std_logic;
SIGNAL \r32_0|Q[19]~feeder_combout\ : std_logic;
SIGNAL \readdata[19]~71_combout\ : std_logic;
SIGNAL \readdata[19]~72_combout\ : std_logic;
SIGNAL \readdata[20]~73_combout\ : std_logic;
SIGNAL \readdata[20]~74_combout\ : std_logic;
SIGNAL \r32_0|Q[21]~feeder_combout\ : std_logic;
SIGNAL \readdata[21]~75_combout\ : std_logic;
SIGNAL \readdata[21]~76_combout\ : std_logic;
SIGNAL \readdata[22]~77_combout\ : std_logic;
SIGNAL \readdata[22]~78_combout\ : std_logic;
SIGNAL \readdata[23]~79_combout\ : std_logic;
SIGNAL \readdata[23]~80_combout\ : std_logic;
SIGNAL \readdata[24]~81_combout\ : std_logic;
SIGNAL \readdata[24]~82_combout\ : std_logic;
SIGNAL \readdata[25]~83_combout\ : std_logic;
SIGNAL \readdata[25]~84_combout\ : std_logic;
SIGNAL \readdata[26]~85_combout\ : std_logic;
SIGNAL \readdata[26]~86_combout\ : std_logic;
SIGNAL \readdata[27]~87_combout\ : std_logic;
SIGNAL \readdata[27]~88_combout\ : std_logic;
SIGNAL \readdata[28]~89_combout\ : std_logic;
SIGNAL \readdata[28]~90_combout\ : std_logic;
SIGNAL \readdata[29]~91_combout\ : std_logic;
SIGNAL \readdata[29]~92_combout\ : std_logic;
SIGNAL \readdata[30]~93_combout\ : std_logic;
SIGNAL \readdata[30]~94_combout\ : std_logic;
SIGNAL \readdata[31]~95_combout\ : std_logic;
SIGNAL \readdata[31]~96_combout\ : std_logic;
SIGNAL \r32_1|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \r32_0|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \r32_2|Q_aux\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \writedata~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \add~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_resetn~clkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_resetn <= resetn;
ww_chipselect <= chipselect;
ww_writedata <= writedata;
ww_write_en <= write_en;
readdata <= ww_readdata;
ww_add <= add;
ww_read_en <= read_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\resetn~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \resetn~combout\);
\ALT_INV_resetn~clkctrl_outclk\ <= NOT \resetn~clkctrl_outclk\;

-- Location: LCFF_X57_Y16_N9
\r32_0|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(1),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(1));

-- Location: LCFF_X57_Y16_N29
\r32_0|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r32_0|Q[3]~feeder_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(3));

-- Location: LCFF_X57_Y16_N7
\r32_0|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(4),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(4));

-- Location: LCFF_X57_Y16_N3
\r32_0|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r32_0|Q[6]~feeder_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(6));

-- Location: LCFF_X57_Y16_N13
\r32_0|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r32_0|Q[7]~feeder_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(7));

-- Location: LCFF_X46_Y10_N5
\r32_0|Q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(17),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(17));

-- Location: LCFF_X45_Y10_N11
\r32_0|Q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(20),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(20));

-- Location: LCFF_X45_Y10_N7
\r32_0|Q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(23),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(23));

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

-- Location: LCCOMB_X57_Y16_N28
\r32_0|Q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r32_0|Q[3]~feeder_combout\ = \writedata~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(3),
	combout => \r32_0|Q[3]~feeder_combout\);

-- Location: LCCOMB_X57_Y16_N2
\r32_0|Q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r32_0|Q[6]~feeder_combout\ = \writedata~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(6),
	combout => \r32_0|Q[6]~feeder_combout\);

-- Location: LCCOMB_X57_Y16_N12
\r32_0|Q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r32_0|Q[7]~feeder_combout\ = \writedata~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(7),
	combout => \r32_0|Q[7]~feeder_combout\);

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\add[0]~I\ : cycloneii_io
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
	padio => ww_add(0),
	combout => \add~combout\(0));

-- Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[0]~I\ : cycloneii_io
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
	padio => ww_writedata(0),
	combout => \writedata~combout\(0));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\resetn~I\ : cycloneii_io
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
	padio => ww_resetn,
	combout => \resetn~combout\);

-- Location: CLKCTRL_G1
\resetn~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \resetn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \resetn~clkctrl_outclk\);

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\write_en~I\ : cycloneii_io
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
	padio => ww_write_en,
	combout => \write_en~combout\);

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\chipselect~I\ : cycloneii_io
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
	padio => ww_chipselect,
	combout => \chipselect~combout\);

-- Location: LCCOMB_X56_Y16_N14
write_enable0 : cycloneii_lcell_comb
-- Equation(s):
-- \write_enable0~combout\ = (!\add~combout\(1) & (\write_en~combout\ & (!\add~combout\(0) & \chipselect~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\(1),
	datab => \write_en~combout\,
	datac => \add~combout\(0),
	datad => \chipselect~combout\,
	combout => \write_enable0~combout\);

-- Location: LCFF_X45_Y10_N19
\r32_0|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(0),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(0));

-- Location: LCCOMB_X56_Y16_N28
\write_enable1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \write_enable1~0_combout\ = (!\add~combout\(1) & (\write_en~combout\ & (\add~combout\(0) & \chipselect~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\(1),
	datab => \write_en~combout\,
	datac => \add~combout\(0),
	datad => \chipselect~combout\,
	combout => \write_enable1~0_combout\);

-- Location: LCFF_X45_Y10_N1
\r32_1|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(0),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(0));

-- Location: LCCOMB_X45_Y10_N18
\readdata[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[0]~32_combout\ = (\add~combout\(0) & ((\r32_1|Q\(0)))) # (!\add~combout\(0) & (\r32_0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add~combout\(0),
	datac => \r32_0|Q\(0),
	datad => \r32_1|Q\(0),
	combout => \readdata[0]~32_combout\);

-- Location: LCCOMB_X56_Y16_N18
write_enable2 : cycloneii_lcell_comb
-- Equation(s):
-- \write_enable2~combout\ = (\add~combout\(1) & (\write_en~combout\ & (!\add~combout\(0) & \chipselect~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\(1),
	datab => \write_en~combout\,
	datac => \add~combout\(0),
	datad => \chipselect~combout\,
	combout => \write_enable2~combout\);

-- Location: LCCOMB_X53_Y16_N8
\r32_2|Q_aux~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r32_2|Q_aux~0_combout\ = (\writedata~combout\(0) & \write_enable2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata~combout\(0),
	datad => \write_enable2~combout\,
	combout => \r32_2|Q_aux~0_combout\);

-- Location: LCFF_X53_Y16_N9
\r32_2|Q_aux[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r32_2|Q_aux~0_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(0));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\add[1]~I\ : cycloneii_io
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
	padio => ww_add(1),
	combout => \add~combout\(1));

-- Location: LCCOMB_X56_Y16_N24
\read_enable_reg_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \read_enable_reg_1~0_combout\ = (\read_en~combout\ & (\chipselect~combout\ & !\add~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~combout\,
	datab => \chipselect~combout\,
	datad => \add~combout\(1),
	combout => \read_enable_reg_1~0_combout\);

-- Location: LCCOMB_X45_Y10_N20
\readdata[0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[0]~33_combout\ = (\read_enable_reg_1~0_combout\ & (\readdata[0]~32_combout\)) # (!\read_enable_reg_1~0_combout\ & ((\r32_2|Q_aux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readdata[0]~32_combout\,
	datac => \r32_2|Q_aux\(0),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[0]~33_combout\);

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\read_en~I\ : cycloneii_io
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
	padio => ww_read_en,
	combout => \read_en~combout\);

-- Location: LCCOMB_X56_Y16_N26
\readdata[31]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[31]~34_combout\ = (\read_en~combout\ & (\chipselect~combout\ & ((!\add~combout\(1)) # (!\add~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~combout\,
	datab => \chipselect~combout\,
	datac => \add~combout\(0),
	datad => \add~combout\(1),
	combout => \readdata[31]~34_combout\);

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[1]~I\ : cycloneii_io
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
	padio => ww_writedata(1),
	combout => \writedata~combout\(1));

-- Location: LCFF_X53_Y16_N5
\r32_1|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(1),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(1));

-- Location: LCCOMB_X53_Y16_N4
\readdata[1]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[1]~35_combout\ = (\add~combout\(0) & ((\r32_1|Q\(1)))) # (!\add~combout\(0) & (\r32_0|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r32_0|Q\(1),
	datac => \r32_1|Q\(1),
	datad => \add~combout\(0),
	combout => \readdata[1]~35_combout\);

-- Location: LCCOMB_X53_Y16_N18
\r32_2|Q_aux~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \r32_2|Q_aux~1_combout\ = (\write_enable2~combout\ & \writedata~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write_enable2~combout\,
	datad => \writedata~combout\(1),
	combout => \r32_2|Q_aux~1_combout\);

-- Location: LCFF_X53_Y16_N19
\r32_2|Q_aux[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r32_2|Q_aux~1_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(1));

-- Location: LCCOMB_X53_Y16_N22
\readdata[1]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[1]~36_combout\ = (\read_enable_reg_1~0_combout\ & (\readdata[1]~35_combout\)) # (!\read_enable_reg_1~0_combout\ & ((\r32_2|Q_aux\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readdata[1]~35_combout\,
	datac => \read_enable_reg_1~0_combout\,
	datad => \r32_2|Q_aux\(1),
	combout => \readdata[1]~36_combout\);

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[2]~I\ : cycloneii_io
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
	padio => ww_writedata(2),
	combout => \writedata~combout\(2));

-- Location: LCFF_X58_Y16_N9
\r32_2|Q_aux[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(2),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(2));

-- Location: LCCOMB_X57_Y16_N18
\r32_0|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r32_0|Q[2]~feeder_combout\ = \writedata~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(2),
	combout => \r32_0|Q[2]~feeder_combout\);

-- Location: LCFF_X57_Y16_N19
\r32_0|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r32_0|Q[2]~feeder_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(2));

-- Location: LCFF_X58_Y16_N27
\r32_1|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(2),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(2));

-- Location: LCCOMB_X58_Y16_N26
\readdata[2]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[2]~37_combout\ = (\add~combout\(0) & ((\r32_1|Q\(2)))) # (!\add~combout\(0) & (\r32_0|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r32_0|Q\(2),
	datac => \r32_1|Q\(2),
	datad => \add~combout\(0),
	combout => \readdata[2]~37_combout\);

-- Location: LCCOMB_X58_Y16_N8
\readdata[2]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[2]~38_combout\ = (\read_enable_reg_1~0_combout\ & ((\readdata[2]~37_combout\))) # (!\read_enable_reg_1~0_combout\ & (\r32_2|Q_aux\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \read_enable_reg_1~0_combout\,
	datac => \r32_2|Q_aux\(2),
	datad => \readdata[2]~37_combout\,
	combout => \readdata[2]~38_combout\);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[3]~I\ : cycloneii_io
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
	padio => ww_writedata(3),
	combout => \writedata~combout\(3));

-- Location: LCFF_X53_Y16_N17
\r32_1|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(3),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(3));

-- Location: LCCOMB_X53_Y16_N16
\readdata[3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[3]~39_combout\ = (\add~combout\(0) & ((\r32_1|Q\(3)))) # (!\add~combout\(0) & (\r32_0|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r32_0|Q\(3),
	datac => \r32_1|Q\(3),
	datad => \add~combout\(0),
	combout => \readdata[3]~39_combout\);

-- Location: LCFF_X58_Y16_N13
\r32_2|Q_aux[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(3),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(3));

-- Location: LCCOMB_X58_Y16_N12
\readdata[3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[3]~40_combout\ = (\read_enable_reg_1~0_combout\ & (\readdata[3]~39_combout\)) # (!\read_enable_reg_1~0_combout\ & ((\r32_2|Q_aux\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readdata[3]~39_combout\,
	datac => \r32_2|Q_aux\(3),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[3]~40_combout\);

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[4]~I\ : cycloneii_io
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
	padio => ww_writedata(4),
	combout => \writedata~combout\(4));

-- Location: LCFF_X53_Y16_N27
\r32_1|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(4),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(4));

-- Location: LCCOMB_X53_Y16_N26
\readdata[4]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[4]~41_combout\ = (\add~combout\(0) & ((\r32_1|Q\(4)))) # (!\add~combout\(0) & (\r32_0|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r32_0|Q\(4),
	datac => \r32_1|Q\(4),
	datad => \add~combout\(0),
	combout => \readdata[4]~41_combout\);

-- Location: LCFF_X46_Y10_N9
\r32_2|Q_aux[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(4),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(4));

-- Location: LCCOMB_X46_Y10_N8
\readdata[4]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[4]~42_combout\ = (\read_enable_reg_1~0_combout\ & (\readdata[4]~41_combout\)) # (!\read_enable_reg_1~0_combout\ & ((\r32_2|Q_aux\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[4]~41_combout\,
	datac => \r32_2|Q_aux\(4),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[4]~42_combout\);

-- Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[5]~I\ : cycloneii_io
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
	padio => ww_writedata(5),
	combout => \writedata~combout\(5));

-- Location: LCCOMB_X57_Y16_N16
\r32_0|Q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r32_0|Q[5]~feeder_combout\ = \writedata~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(5),
	combout => \r32_0|Q[5]~feeder_combout\);

-- Location: LCFF_X57_Y16_N17
\r32_0|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r32_0|Q[5]~feeder_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(5));

-- Location: LCFF_X58_Y16_N25
\r32_1|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(5),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(5));

-- Location: LCCOMB_X58_Y16_N24
\readdata[5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[5]~43_combout\ = (\add~combout\(0) & ((\r32_1|Q\(5)))) # (!\add~combout\(0) & (\r32_0|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r32_0|Q\(5),
	datac => \r32_1|Q\(5),
	datad => \add~combout\(0),
	combout => \readdata[5]~43_combout\);

-- Location: LCFF_X58_Y16_N7
\r32_2|Q_aux[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(5),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(5));

-- Location: LCCOMB_X58_Y16_N6
\readdata[5]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[5]~44_combout\ = (\read_enable_reg_1~0_combout\ & (\readdata[5]~43_combout\)) # (!\read_enable_reg_1~0_combout\ & ((\r32_2|Q_aux\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[5]~43_combout\,
	datac => \r32_2|Q_aux\(5),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[5]~44_combout\);

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[6]~I\ : cycloneii_io
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
	padio => ww_writedata(6),
	combout => \writedata~combout\(6));

-- Location: LCFF_X58_Y16_N21
\r32_1|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(6),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(6));

-- Location: LCCOMB_X58_Y16_N20
\readdata[6]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[6]~45_combout\ = (\add~combout\(0) & ((\r32_1|Q\(6)))) # (!\add~combout\(0) & (\r32_0|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r32_0|Q\(6),
	datac => \r32_1|Q\(6),
	datad => \add~combout\(0),
	combout => \readdata[6]~45_combout\);

-- Location: LCFF_X58_Y16_N3
\r32_2|Q_aux[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(6),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(6));

-- Location: LCCOMB_X58_Y16_N2
\readdata[6]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[6]~46_combout\ = (\read_enable_reg_1~0_combout\ & (\readdata[6]~45_combout\)) # (!\read_enable_reg_1~0_combout\ & ((\r32_2|Q_aux\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[6]~45_combout\,
	datac => \r32_2|Q_aux\(6),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[6]~46_combout\);

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[7]~I\ : cycloneii_io
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
	padio => ww_writedata(7),
	combout => \writedata~combout\(7));

-- Location: LCFF_X58_Y16_N15
\r32_2|Q_aux[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(7),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(7));

-- Location: LCFF_X58_Y16_N1
\r32_1|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(7),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(7));

-- Location: LCCOMB_X58_Y16_N0
\readdata[7]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[7]~47_combout\ = (\add~combout\(0) & ((\r32_1|Q\(7)))) # (!\add~combout\(0) & (\r32_0|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r32_0|Q\(7),
	datac => \r32_1|Q\(7),
	datad => \add~combout\(0),
	combout => \readdata[7]~47_combout\);

-- Location: LCCOMB_X58_Y16_N14
\readdata[7]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[7]~48_combout\ = (\read_enable_reg_1~0_combout\ & ((\readdata[7]~47_combout\))) # (!\read_enable_reg_1~0_combout\ & (\r32_2|Q_aux\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \read_enable_reg_1~0_combout\,
	datac => \r32_2|Q_aux\(7),
	datad => \readdata[7]~47_combout\,
	combout => \readdata[7]~48_combout\);

-- Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[8]~I\ : cycloneii_io
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
	padio => ww_writedata(8),
	combout => \writedata~combout\(8));

-- Location: LCFF_X57_Y16_N15
\r32_0|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(8),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(8));

-- Location: LCFF_X53_Y16_N13
\r32_1|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(8),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(8));

-- Location: LCCOMB_X53_Y16_N12
\readdata[8]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[8]~49_combout\ = (\add~combout\(0) & ((\r32_1|Q\(8)))) # (!\add~combout\(0) & (\r32_0|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r32_0|Q\(8),
	datac => \r32_1|Q\(8),
	datad => \add~combout\(0),
	combout => \readdata[8]~49_combout\);

-- Location: LCFF_X46_Y10_N3
\r32_2|Q_aux[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(8),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(8));

-- Location: LCCOMB_X46_Y10_N2
\readdata[8]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[8]~50_combout\ = (\read_enable_reg_1~0_combout\ & (\readdata[8]~49_combout\)) # (!\read_enable_reg_1~0_combout\ & ((\r32_2|Q_aux\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readdata[8]~49_combout\,
	datac => \r32_2|Q_aux\(8),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[8]~50_combout\);

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[9]~I\ : cycloneii_io
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
	padio => ww_writedata(9),
	combout => \writedata~combout\(9));

-- Location: LCFF_X58_Y16_N19
\r32_2|Q_aux[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(9),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(9));

-- Location: LCFF_X57_Y16_N25
\r32_0|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(9),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(9));

-- Location: LCFF_X58_Y16_N29
\r32_1|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(9),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(9));

-- Location: LCCOMB_X58_Y16_N28
\readdata[9]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[9]~51_combout\ = (\add~combout\(0) & ((\r32_1|Q\(9)))) # (!\add~combout\(0) & (\r32_0|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r32_0|Q\(9),
	datac => \r32_1|Q\(9),
	datad => \add~combout\(0),
	combout => \readdata[9]~51_combout\);

-- Location: LCCOMB_X58_Y16_N18
\readdata[9]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[9]~52_combout\ = (\read_enable_reg_1~0_combout\ & ((\readdata[9]~51_combout\))) # (!\read_enable_reg_1~0_combout\ & (\r32_2|Q_aux\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \read_enable_reg_1~0_combout\,
	datac => \r32_2|Q_aux\(9),
	datad => \readdata[9]~51_combout\,
	combout => \readdata[9]~52_combout\);

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[10]~I\ : cycloneii_io
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
	padio => ww_writedata(10),
	combout => \writedata~combout\(10));

-- Location: LCCOMB_X57_Y16_N26
\r32_0|Q[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r32_0|Q[10]~feeder_combout\ = \writedata~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(10),
	combout => \r32_0|Q[10]~feeder_combout\);

-- Location: LCFF_X57_Y16_N27
\r32_0|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r32_0|Q[10]~feeder_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(10));

-- Location: LCFF_X58_Y16_N17
\r32_1|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(10),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(10));

-- Location: LCCOMB_X58_Y16_N16
\readdata[10]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[10]~53_combout\ = (\add~combout\(0) & ((\r32_1|Q\(10)))) # (!\add~combout\(0) & (\r32_0|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r32_0|Q\(10),
	datac => \r32_1|Q\(10),
	datad => \add~combout\(0),
	combout => \readdata[10]~53_combout\);

-- Location: LCFF_X58_Y16_N31
\r32_2|Q_aux[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(10),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(10));

-- Location: LCCOMB_X58_Y16_N30
\readdata[10]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[10]~54_combout\ = (\read_enable_reg_1~0_combout\ & (\readdata[10]~53_combout\)) # (!\read_enable_reg_1~0_combout\ & ((\r32_2|Q_aux\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[10]~53_combout\,
	datac => \r32_2|Q_aux\(10),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[10]~54_combout\);

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[11]~I\ : cycloneii_io
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
	padio => ww_writedata(11),
	combout => \writedata~combout\(11));

-- Location: LCFF_X56_Y16_N31
\r32_0|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(11),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(11));

-- Location: LCFF_X56_Y16_N21
\r32_1|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(11),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(11));

-- Location: LCCOMB_X56_Y16_N20
\readdata[11]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[11]~55_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & ((\r32_1|Q\(11)))) # (!\add~combout\(0) & (\r32_0|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\(0),
	datab => \r32_0|Q\(11),
	datac => \r32_1|Q\(11),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[11]~55_combout\);

-- Location: LCFF_X58_Y16_N11
\r32_2|Q_aux[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(11),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(11));

-- Location: LCCOMB_X58_Y16_N10
\readdata[11]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[11]~56_combout\ = (\readdata[11]~55_combout\) # ((\r32_2|Q_aux\(11) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[11]~55_combout\,
	datac => \r32_2|Q_aux\(11),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[11]~56_combout\);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[12]~I\ : cycloneii_io
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
	padio => ww_writedata(12),
	combout => \writedata~combout\(12));

-- Location: LCFF_X56_Y16_N1
\r32_1|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(12),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(12));

-- Location: LCCOMB_X56_Y16_N10
\r32_0|Q[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r32_0|Q[12]~feeder_combout\ = \writedata~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(12),
	combout => \r32_0|Q[12]~feeder_combout\);

-- Location: LCFF_X56_Y16_N11
\r32_0|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r32_0|Q[12]~feeder_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(12));

-- Location: LCCOMB_X56_Y16_N0
\readdata[12]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[12]~57_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & (\r32_1|Q\(12))) # (!\add~combout\(0) & ((\r32_0|Q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\(0),
	datab => \read_enable_reg_1~0_combout\,
	datac => \r32_1|Q\(12),
	datad => \r32_0|Q\(12),
	combout => \readdata[12]~57_combout\);

-- Location: LCFF_X46_Y10_N29
\r32_2|Q_aux[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(12),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(12));

-- Location: LCCOMB_X46_Y10_N28
\readdata[12]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[12]~58_combout\ = (\readdata[12]~57_combout\) # ((\r32_2|Q_aux\(12) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[12]~57_combout\,
	datac => \r32_2|Q_aux\(12),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[12]~58_combout\);

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[13]~I\ : cycloneii_io
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
	padio => ww_writedata(13),
	combout => \writedata~combout\(13));

-- Location: LCFF_X46_Y10_N15
\r32_0|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(13),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(13));

-- Location: LCFF_X53_Y16_N7
\r32_1|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(13),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(13));

-- Location: LCCOMB_X53_Y16_N6
\readdata[13]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[13]~59_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & ((\r32_1|Q\(13)))) # (!\add~combout\(0) & (\r32_0|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_enable_reg_1~0_combout\,
	datab => \r32_0|Q\(13),
	datac => \r32_1|Q\(13),
	datad => \add~combout\(0),
	combout => \readdata[13]~59_combout\);

-- Location: LCFF_X46_Y10_N25
\r32_2|Q_aux[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(13),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(13));

-- Location: LCCOMB_X46_Y10_N24
\readdata[13]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[13]~60_combout\ = (\readdata[13]~59_combout\) # ((\r32_2|Q_aux\(13) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readdata[13]~59_combout\,
	datac => \r32_2|Q_aux\(13),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[13]~60_combout\);

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[14]~I\ : cycloneii_io
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
	padio => ww_writedata(14),
	combout => \writedata~combout\(14));

-- Location: LCFF_X56_Y16_N23
\r32_0|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(14),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(14));

-- Location: LCFF_X56_Y16_N13
\r32_1|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(14),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(14));

-- Location: LCCOMB_X56_Y16_N12
\readdata[14]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[14]~61_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & ((\r32_1|Q\(14)))) # (!\add~combout\(0) & (\r32_0|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\(0),
	datab => \r32_0|Q\(14),
	datac => \r32_1|Q\(14),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[14]~61_combout\);

-- Location: LCFF_X58_Y16_N5
\r32_2|Q_aux[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(14),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(14));

-- Location: LCCOMB_X58_Y16_N4
\readdata[14]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[14]~62_combout\ = (\readdata[14]~61_combout\) # ((\r32_2|Q_aux\(14) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[14]~61_combout\,
	datac => \r32_2|Q_aux\(14),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[14]~62_combout\);

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[15]~I\ : cycloneii_io
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
	padio => ww_writedata(15),
	combout => \writedata~combout\(15));

-- Location: LCFF_X56_Y16_N3
\r32_0|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(15),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(15));

-- Location: LCFF_X56_Y16_N17
\r32_1|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(15),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(15));

-- Location: LCCOMB_X56_Y16_N16
\readdata[15]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[15]~63_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & ((\r32_1|Q\(15)))) # (!\add~combout\(0) & (\r32_0|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\(0),
	datab => \r32_0|Q\(15),
	datac => \r32_1|Q\(15),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[15]~63_combout\);

-- Location: LCFF_X58_Y16_N23
\r32_2|Q_aux[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(15),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(15));

-- Location: LCCOMB_X58_Y16_N22
\readdata[15]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[15]~64_combout\ = (\readdata[15]~63_combout\) # ((\r32_2|Q_aux\(15) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readdata[15]~63_combout\,
	datac => \r32_2|Q_aux\(15),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[15]~64_combout\);

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[16]~I\ : cycloneii_io
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
	padio => ww_writedata(16),
	combout => \writedata~combout\(16));

-- Location: LCFF_X56_Y16_N5
\r32_1|Q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(16),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(16));

-- Location: LCCOMB_X56_Y16_N6
\r32_0|Q[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r32_0|Q[16]~feeder_combout\ = \writedata~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(16),
	combout => \r32_0|Q[16]~feeder_combout\);

-- Location: LCFF_X56_Y16_N7
\r32_0|Q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r32_0|Q[16]~feeder_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(16));

-- Location: LCCOMB_X56_Y16_N4
\readdata[16]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[16]~65_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & (\r32_1|Q\(16))) # (!\add~combout\(0) & ((\r32_0|Q\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\(0),
	datab => \read_enable_reg_1~0_combout\,
	datac => \r32_1|Q\(16),
	datad => \r32_0|Q\(16),
	combout => \readdata[16]~65_combout\);

-- Location: LCFF_X46_Y10_N27
\r32_2|Q_aux[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(16),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(16));

-- Location: LCCOMB_X46_Y10_N26
\readdata[16]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[16]~66_combout\ = (\readdata[16]~65_combout\) # ((\r32_2|Q_aux\(16) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readdata[16]~65_combout\,
	datac => \r32_2|Q_aux\(16),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[16]~66_combout\);

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[17]~I\ : cycloneii_io
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
	padio => ww_writedata(17),
	combout => \writedata~combout\(17));

-- Location: LCFF_X45_Y10_N15
\r32_1|Q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(17),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(17));

-- Location: LCCOMB_X45_Y10_N14
\readdata[17]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[17]~67_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & ((\r32_1|Q\(17)))) # (!\add~combout\(0) & (\r32_0|Q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r32_0|Q\(17),
	datab => \add~combout\(0),
	datac => \r32_1|Q\(17),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[17]~67_combout\);

-- Location: LCFF_X46_Y10_N7
\r32_2|Q_aux[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(17),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(17));

-- Location: LCCOMB_X46_Y10_N6
\readdata[17]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[17]~68_combout\ = (\readdata[17]~67_combout\) # ((\r32_2|Q_aux\(17) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[17]~67_combout\,
	datac => \r32_2|Q_aux\(17),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[17]~68_combout\);

-- Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[18]~I\ : cycloneii_io
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
	padio => ww_writedata(18),
	combout => \writedata~combout\(18));

-- Location: LCFF_X45_Y10_N25
\r32_1|Q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(18),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(18));

-- Location: LCFF_X45_Y10_N3
\r32_0|Q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(18),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(18));

-- Location: LCCOMB_X45_Y10_N24
\readdata[18]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[18]~69_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & (\r32_1|Q\(18))) # (!\add~combout\(0) & ((\r32_0|Q\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_enable_reg_1~0_combout\,
	datab => \add~combout\(0),
	datac => \r32_1|Q\(18),
	datad => \r32_0|Q\(18),
	combout => \readdata[18]~69_combout\);

-- Location: LCFF_X46_Y10_N1
\r32_2|Q_aux[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(18),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(18));

-- Location: LCCOMB_X46_Y10_N0
\readdata[18]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[18]~70_combout\ = (\readdata[18]~69_combout\) # ((\r32_2|Q_aux\(18) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readdata[18]~69_combout\,
	datac => \r32_2|Q_aux\(18),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[18]~70_combout\);

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[19]~I\ : cycloneii_io
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
	padio => ww_writedata(19),
	combout => \writedata~combout\(19));

-- Location: LCFF_X45_Y10_N13
\r32_1|Q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(19),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(19));

-- Location: LCCOMB_X45_Y10_N22
\r32_0|Q[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r32_0|Q[19]~feeder_combout\ = \writedata~combout\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(19),
	combout => \r32_0|Q[19]~feeder_combout\);

-- Location: LCFF_X45_Y10_N23
\r32_0|Q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r32_0|Q[19]~feeder_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(19));

-- Location: LCCOMB_X45_Y10_N12
\readdata[19]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[19]~71_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & (\r32_1|Q\(19))) # (!\add~combout\(0) & ((\r32_0|Q\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_enable_reg_1~0_combout\,
	datab => \add~combout\(0),
	datac => \r32_1|Q\(19),
	datad => \r32_0|Q\(19),
	combout => \readdata[19]~71_combout\);

-- Location: LCFF_X46_Y10_N11
\r32_2|Q_aux[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(19),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(19));

-- Location: LCCOMB_X46_Y10_N10
\readdata[19]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[19]~72_combout\ = (\readdata[19]~71_combout\) # ((\r32_2|Q_aux\(19) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[19]~71_combout\,
	datac => \r32_2|Q_aux\(19),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[19]~72_combout\);

-- Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[20]~I\ : cycloneii_io
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
	padio => ww_writedata(20),
	combout => \writedata~combout\(20));

-- Location: LCFF_X45_Y10_N9
\r32_1|Q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(20),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(20));

-- Location: LCCOMB_X45_Y10_N8
\readdata[20]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[20]~73_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & ((\r32_1|Q\(20)))) # (!\add~combout\(0) & (\r32_0|Q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r32_0|Q\(20),
	datab => \add~combout\(0),
	datac => \r32_1|Q\(20),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[20]~73_combout\);

-- Location: LCFF_X46_Y10_N21
\r32_2|Q_aux[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(20),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(20));

-- Location: LCCOMB_X46_Y10_N20
\readdata[20]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[20]~74_combout\ = (\readdata[20]~73_combout\) # ((\r32_2|Q_aux\(20) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[20]~73_combout\,
	datac => \r32_2|Q_aux\(20),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[20]~74_combout\);

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[21]~I\ : cycloneii_io
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
	padio => ww_writedata(21),
	combout => \writedata~combout\(21));

-- Location: LCFF_X45_Y10_N5
\r32_1|Q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(21),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(21));

-- Location: LCCOMB_X45_Y10_N30
\r32_0|Q[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r32_0|Q[21]~feeder_combout\ = \writedata~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata~combout\(21),
	combout => \r32_0|Q[21]~feeder_combout\);

-- Location: LCFF_X45_Y10_N31
\r32_0|Q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r32_0|Q[21]~feeder_combout\,
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(21));

-- Location: LCCOMB_X45_Y10_N4
\readdata[21]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[21]~75_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & (\r32_1|Q\(21))) # (!\add~combout\(0) & ((\r32_0|Q\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_enable_reg_1~0_combout\,
	datab => \add~combout\(0),
	datac => \r32_1|Q\(21),
	datad => \r32_0|Q\(21),
	combout => \readdata[21]~75_combout\);

-- Location: LCFF_X46_Y10_N31
\r32_2|Q_aux[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(21),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(21));

-- Location: LCCOMB_X46_Y10_N30
\readdata[21]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[21]~76_combout\ = (\readdata[21]~75_combout\) # ((\r32_2|Q_aux\(21) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readdata[21]~75_combout\,
	datac => \r32_2|Q_aux\(21),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[21]~76_combout\);

-- Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[22]~I\ : cycloneii_io
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
	padio => ww_writedata(22),
	combout => \writedata~combout\(22));

-- Location: LCFF_X45_Y10_N17
\r32_1|Q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(22),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(22));

-- Location: LCFF_X45_Y10_N27
\r32_0|Q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(22),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(22));

-- Location: LCCOMB_X45_Y10_N16
\readdata[22]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[22]~77_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & (\r32_1|Q\(22))) # (!\add~combout\(0) & ((\r32_0|Q\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_enable_reg_1~0_combout\,
	datab => \add~combout\(0),
	datac => \r32_1|Q\(22),
	datad => \r32_0|Q\(22),
	combout => \readdata[22]~77_combout\);

-- Location: LCFF_X46_Y10_N17
\r32_2|Q_aux[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(22),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(22));

-- Location: LCCOMB_X46_Y10_N16
\readdata[22]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[22]~78_combout\ = (\readdata[22]~77_combout\) # ((\r32_2|Q_aux\(22) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readdata[22]~77_combout\,
	datac => \r32_2|Q_aux\(22),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[22]~78_combout\);

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[23]~I\ : cycloneii_io
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
	padio => ww_writedata(23),
	combout => \writedata~combout\(23));

-- Location: LCFF_X45_Y10_N29
\r32_1|Q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(23),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(23));

-- Location: LCCOMB_X45_Y10_N28
\readdata[23]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[23]~79_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & ((\r32_1|Q\(23)))) # (!\add~combout\(0) & (\r32_0|Q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r32_0|Q\(23),
	datab => \add~combout\(0),
	datac => \r32_1|Q\(23),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[23]~79_combout\);

-- Location: LCFF_X46_Y10_N19
\r32_2|Q_aux[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(23),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(23));

-- Location: LCCOMB_X46_Y10_N18
\readdata[23]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[23]~80_combout\ = (\readdata[23]~79_combout\) # ((\r32_2|Q_aux\(23) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readdata[23]~79_combout\,
	datac => \r32_2|Q_aux\(23),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[23]~80_combout\);

-- Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[24]~I\ : cycloneii_io
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
	padio => ww_writedata(24),
	combout => \writedata~combout\(24));

-- Location: LCFF_X46_Y10_N13
\r32_0|Q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(24),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(24));

-- Location: LCFF_X53_Y16_N1
\r32_1|Q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(24),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(24));

-- Location: LCCOMB_X53_Y16_N0
\readdata[24]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[24]~81_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & ((\r32_1|Q\(24)))) # (!\add~combout\(0) & (\r32_0|Q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_enable_reg_1~0_combout\,
	datab => \r32_0|Q\(24),
	datac => \r32_1|Q\(24),
	datad => \add~combout\(0),
	combout => \readdata[24]~81_combout\);

-- Location: LCFF_X46_Y10_N23
\r32_2|Q_aux[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(24),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(24));

-- Location: LCCOMB_X46_Y10_N22
\readdata[24]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[24]~82_combout\ = (\readdata[24]~81_combout\) # ((\r32_2|Q_aux\(24) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readdata[24]~81_combout\,
	datac => \r32_2|Q_aux\(24),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[24]~82_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[25]~I\ : cycloneii_io
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
	padio => ww_writedata(25),
	combout => \writedata~combout\(25));

-- Location: LCFF_X54_Y16_N25
\r32_0|Q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(25),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(25));

-- Location: LCFF_X53_Y16_N3
\r32_1|Q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(25),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(25));

-- Location: LCCOMB_X53_Y16_N2
\readdata[25]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[25]~83_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & ((\r32_1|Q\(25)))) # (!\add~combout\(0) & (\r32_0|Q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_enable_reg_1~0_combout\,
	datab => \r32_0|Q\(25),
	datac => \r32_1|Q\(25),
	datad => \add~combout\(0),
	combout => \readdata[25]~83_combout\);

-- Location: LCFF_X54_Y16_N11
\r32_2|Q_aux[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(25),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(25));

-- Location: LCCOMB_X54_Y16_N10
\readdata[25]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[25]~84_combout\ = (\readdata[25]~83_combout\) # ((\r32_2|Q_aux\(25) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[25]~83_combout\,
	datac => \r32_2|Q_aux\(25),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[25]~84_combout\);

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[26]~I\ : cycloneii_io
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
	padio => ww_writedata(26),
	combout => \writedata~combout\(26));

-- Location: LCFF_X53_Y16_N21
\r32_1|Q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(26),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(26));

-- Location: LCFF_X54_Y16_N5
\r32_0|Q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(26),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(26));

-- Location: LCCOMB_X53_Y16_N20
\readdata[26]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[26]~85_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & (\r32_1|Q\(26))) # (!\add~combout\(0) & ((\r32_0|Q\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_enable_reg_1~0_combout\,
	datab => \add~combout\(0),
	datac => \r32_1|Q\(26),
	datad => \r32_0|Q\(26),
	combout => \readdata[26]~85_combout\);

-- Location: LCFF_X54_Y16_N31
\r32_2|Q_aux[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(26),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(26));

-- Location: LCCOMB_X54_Y16_N30
\readdata[26]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[26]~86_combout\ = (\readdata[26]~85_combout\) # ((\r32_2|Q_aux\(26) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[26]~85_combout\,
	datac => \r32_2|Q_aux\(26),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[26]~86_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[27]~I\ : cycloneii_io
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
	padio => ww_writedata(27),
	combout => \writedata~combout\(27));

-- Location: LCFF_X53_Y16_N15
\r32_1|Q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(27),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(27));

-- Location: LCFF_X54_Y16_N1
\r32_0|Q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(27),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(27));

-- Location: LCCOMB_X53_Y16_N14
\readdata[27]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[27]~87_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & (\r32_1|Q\(27))) # (!\add~combout\(0) & ((\r32_0|Q\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_enable_reg_1~0_combout\,
	datab => \add~combout\(0),
	datac => \r32_1|Q\(27),
	datad => \r32_0|Q\(27),
	combout => \readdata[27]~87_combout\);

-- Location: LCFF_X54_Y16_N19
\r32_2|Q_aux[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(27),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(27));

-- Location: LCCOMB_X54_Y16_N18
\readdata[27]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[27]~88_combout\ = (\readdata[27]~87_combout\) # ((\r32_2|Q_aux\(27) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[27]~87_combout\,
	datac => \r32_2|Q_aux\(27),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[27]~88_combout\);

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[28]~I\ : cycloneii_io
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
	padio => ww_writedata(28),
	combout => \writedata~combout\(28));

-- Location: LCFF_X54_Y16_N21
\r32_0|Q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(28),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(28));

-- Location: LCFF_X56_Y16_N9
\r32_1|Q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(28),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(28));

-- Location: LCCOMB_X56_Y16_N8
\readdata[28]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[28]~89_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & ((\r32_1|Q\(28)))) # (!\add~combout\(0) & (\r32_0|Q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\(0),
	datab => \r32_0|Q\(28),
	datac => \r32_1|Q\(28),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[28]~89_combout\);

-- Location: LCFF_X54_Y16_N15
\r32_2|Q_aux[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(28),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(28));

-- Location: LCCOMB_X54_Y16_N14
\readdata[28]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[28]~90_combout\ = (\readdata[28]~89_combout\) # ((\r32_2|Q_aux\(28) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[28]~89_combout\,
	datac => \r32_2|Q_aux\(28),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[28]~90_combout\);

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[29]~I\ : cycloneii_io
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
	padio => ww_writedata(29),
	combout => \writedata~combout\(29));

-- Location: LCFF_X54_Y16_N17
\r32_0|Q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(29),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(29));

-- Location: LCFF_X53_Y16_N25
\r32_1|Q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(29),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(29));

-- Location: LCCOMB_X53_Y16_N24
\readdata[29]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[29]~91_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & ((\r32_1|Q\(29)))) # (!\add~combout\(0) & (\r32_0|Q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_enable_reg_1~0_combout\,
	datab => \r32_0|Q\(29),
	datac => \r32_1|Q\(29),
	datad => \add~combout\(0),
	combout => \readdata[29]~91_combout\);

-- Location: LCFF_X54_Y16_N27
\r32_2|Q_aux[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(29),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(29));

-- Location: LCCOMB_X54_Y16_N26
\readdata[29]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[29]~92_combout\ = (\readdata[29]~91_combout\) # ((\r32_2|Q_aux\(29) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readdata[29]~91_combout\,
	datac => \r32_2|Q_aux\(29),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[29]~92_combout\);

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[30]~I\ : cycloneii_io
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
	padio => ww_writedata(30),
	combout => \writedata~combout\(30));

-- Location: LCFF_X54_Y16_N29
\r32_0|Q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(30),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(30));

-- Location: LCFF_X53_Y16_N11
\r32_1|Q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(30),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(30));

-- Location: LCCOMB_X53_Y16_N10
\readdata[30]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[30]~93_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & ((\r32_1|Q\(30)))) # (!\add~combout\(0) & (\r32_0|Q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_enable_reg_1~0_combout\,
	datab => \r32_0|Q\(30),
	datac => \r32_1|Q\(30),
	datad => \add~combout\(0),
	combout => \readdata[30]~93_combout\);

-- Location: LCFF_X54_Y16_N23
\r32_2|Q_aux[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(30),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(30));

-- Location: LCCOMB_X54_Y16_N22
\readdata[30]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[30]~94_combout\ = (\readdata[30]~93_combout\) # ((\r32_2|Q_aux\(30) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readdata[30]~93_combout\,
	datac => \r32_2|Q_aux\(30),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[30]~94_combout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[31]~I\ : cycloneii_io
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
	padio => ww_writedata(31),
	combout => \writedata~combout\(31));

-- Location: LCFF_X54_Y16_N9
\r32_0|Q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(31),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_0|Q\(31));

-- Location: LCFF_X53_Y16_N29
\r32_1|Q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(31),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_1|Q\(31));

-- Location: LCCOMB_X53_Y16_N28
\readdata[31]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[31]~95_combout\ = (\read_enable_reg_1~0_combout\ & ((\add~combout\(0) & ((\r32_1|Q\(31)))) # (!\add~combout\(0) & (\r32_0|Q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_enable_reg_1~0_combout\,
	datab => \r32_0|Q\(31),
	datac => \r32_1|Q\(31),
	datad => \add~combout\(0),
	combout => \readdata[31]~95_combout\);

-- Location: LCFF_X54_Y16_N3
\r32_2|Q_aux[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(31),
	aclr => \ALT_INV_resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r32_2|Q_aux\(31));

-- Location: LCCOMB_X54_Y16_N2
\readdata[31]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata[31]~96_combout\ = (\readdata[31]~95_combout\) # ((\r32_2|Q_aux\(31) & !\read_enable_reg_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readdata[31]~95_combout\,
	datac => \r32_2|Q_aux\(31),
	datad => \read_enable_reg_1~0_combout\,
	combout => \readdata[31]~96_combout\);

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[0]~I\ : cycloneii_io
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
	datain => \readdata[0]~33_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(0));

-- Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[1]~I\ : cycloneii_io
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
	datain => \readdata[1]~36_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(1));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[2]~I\ : cycloneii_io
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
	datain => \readdata[2]~38_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(2));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[3]~I\ : cycloneii_io
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
	datain => \readdata[3]~40_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(3));

-- Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[4]~I\ : cycloneii_io
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
	datain => \readdata[4]~42_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(4));

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[5]~I\ : cycloneii_io
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
	datain => \readdata[5]~44_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(5));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[6]~I\ : cycloneii_io
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
	datain => \readdata[6]~46_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(6));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[7]~I\ : cycloneii_io
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
	datain => \readdata[7]~48_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(7));

-- Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[8]~I\ : cycloneii_io
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
	datain => \readdata[8]~50_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(8));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[9]~I\ : cycloneii_io
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
	datain => \readdata[9]~52_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(9));

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[10]~I\ : cycloneii_io
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
	datain => \readdata[10]~54_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(10));

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[11]~I\ : cycloneii_io
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
	datain => \readdata[11]~56_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(11));

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[12]~I\ : cycloneii_io
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
	datain => \readdata[12]~58_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(12));

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[13]~I\ : cycloneii_io
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
	datain => \readdata[13]~60_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(13));

-- Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[14]~I\ : cycloneii_io
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
	datain => \readdata[14]~62_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(14));

-- Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[15]~I\ : cycloneii_io
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
	datain => \readdata[15]~64_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(15));

-- Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[16]~I\ : cycloneii_io
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
	datain => \readdata[16]~66_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(16));

-- Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[17]~I\ : cycloneii_io
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
	datain => \readdata[17]~68_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(17));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[18]~I\ : cycloneii_io
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
	datain => \readdata[18]~70_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(18));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[19]~I\ : cycloneii_io
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
	datain => \readdata[19]~72_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(19));

-- Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[20]~I\ : cycloneii_io
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
	datain => \readdata[20]~74_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(20));

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[21]~I\ : cycloneii_io
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
	datain => \readdata[21]~76_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(21));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[22]~I\ : cycloneii_io
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
	datain => \readdata[22]~78_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(22));

-- Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[23]~I\ : cycloneii_io
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
	datain => \readdata[23]~80_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(23));

-- Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[24]~I\ : cycloneii_io
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
	datain => \readdata[24]~82_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(24));

-- Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[25]~I\ : cycloneii_io
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
	datain => \readdata[25]~84_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(25));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[26]~I\ : cycloneii_io
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
	datain => \readdata[26]~86_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(26));

-- Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[27]~I\ : cycloneii_io
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
	datain => \readdata[27]~88_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(27));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[28]~I\ : cycloneii_io
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
	datain => \readdata[28]~90_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(28));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[29]~I\ : cycloneii_io
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
	datain => \readdata[29]~92_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(29));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[30]~I\ : cycloneii_io
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
	datain => \readdata[30]~94_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(30));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[31]~I\ : cycloneii_io
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
	datain => \readdata[31]~96_combout\,
	oe => \readdata[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_readdata(31));
END structure;


