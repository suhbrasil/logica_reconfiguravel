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

-- DATE "11/01/2024 11:38:20"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab3 IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	Q : OUT IEEE.NUMERIC_STD.unsigned(2 DOWNTO 0);
	Q_IN : IN IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0);
	EN : IN std_logic;
	CLR : IN std_logic;
	LD : IN std_logic;
	LOAD : IN IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0)
	);
END lab3;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_IN[0]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_IN[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_IN[2]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_IN[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Q : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Q_IN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_EN : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_LD : std_logic;
SIGNAL ww_LOAD : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LD~input_o\ : std_logic;
SIGNAL \LOAD[0]~input_o\ : std_logic;
SIGNAL \LOAD[1]~input_o\ : std_logic;
SIGNAL \LOAD[2]~input_o\ : std_logic;
SIGNAL \LOAD[3]~input_o\ : std_logic;
SIGNAL \Q_IN[1]~input_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \Q_IN[0]~input_o\ : std_logic;
SIGNAL \Q_IN[3]~input_o\ : std_logic;
SIGNAL \Q_IN[2]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \tot_4~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \tot_4[0]~1_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \tot_4~2_combout\ : std_logic;
SIGNAL \tot_4~3_combout\ : std_logic;
SIGNAL tot_4 : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
Q <= IEEE.NUMERIC_STD.UNSIGNED(ww_Q);
ww_Q_IN <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(Q_IN);
ww_EN <= EN;
ww_CLR <= CLR;
ww_LD <= LD;
ww_LOAD <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(LOAD);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;

-- Location: IOIBUF_X1_Y0_N1
\Q_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q_IN(1),
	o => \Q_IN[1]~input_o\);

-- Location: IOOBUF_X0_Y11_N2
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tot_4(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tot_4(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tot_4(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y7_N1
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\Q_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q_IN(0),
	o => \Q_IN[0]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\Q_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q_IN(3),
	o => \Q_IN[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\Q_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q_IN(2),
	o => \Q_IN[2]~input_o\);

-- Location: LCCOMB_X1_Y11_N6
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \Q_IN[1]~input_o\ $ (\Q_IN[0]~input_o\ $ (\Q_IN[3]~input_o\ $ (\Q_IN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q_IN[1]~input_o\,
	datab => \Q_IN[0]~input_o\,
	datac => \Q_IN[3]~input_o\,
	datad => \Q_IN[2]~input_o\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X1_Y11_N16
\tot_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_4~0_combout\ = (!\CLR~input_o\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLR~input_o\,
	datad => \Add1~0_combout\,
	combout => \tot_4~0_combout\);

-- Location: IOIBUF_X0_Y16_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G4
\RST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N8
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X1_Y11_N0
\tot_4[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_4[0]~1_combout\ = (\CLR~input_o\) # (\EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLR~input_o\,
	datad => \EN~input_o\,
	combout => \tot_4[0]~1_combout\);

-- Location: FF_X1_Y11_N17
\tot_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \tot_4~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \tot_4[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tot_4(0));

-- Location: LCCOMB_X1_Y11_N2
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\Q_IN[3]~input_o\ & ((\Q_IN[2]~input_o\) # (\Q_IN[1]~input_o\ $ (\Q_IN[0]~input_o\)))) # (!\Q_IN[3]~input_o\ & (\Q_IN[2]~input_o\ & (\Q_IN[1]~input_o\ $ (\Q_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q_IN[1]~input_o\,
	datab => \Q_IN[0]~input_o\,
	datac => \Q_IN[3]~input_o\,
	datad => \Q_IN[2]~input_o\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X1_Y11_N18
\tot_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_4~2_combout\ = (!\CLR~input_o\ & (\Add1~1_combout\ $ (((\Q_IN[1]~input_o\ & \Q_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q_IN[1]~input_o\,
	datab => \Q_IN[0]~input_o\,
	datac => \CLR~input_o\,
	datad => \Add1~1_combout\,
	combout => \tot_4~2_combout\);

-- Location: FF_X1_Y11_N19
\tot_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \tot_4~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \tot_4[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tot_4(1));

-- Location: LCCOMB_X1_Y11_N20
\tot_4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_4~3_combout\ = (\Q_IN[1]~input_o\ & (\Q_IN[0]~input_o\ & (!\CLR~input_o\ & \Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q_IN[1]~input_o\,
	datab => \Q_IN[0]~input_o\,
	datac => \CLR~input_o\,
	datad => \Add1~1_combout\,
	combout => \tot_4~3_combout\);

-- Location: FF_X1_Y11_N21
\tot_4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \tot_4~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \tot_4[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tot_4(2));

-- Location: IOIBUF_X53_Y17_N8
\LD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LD,
	o => \LD~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\LOAD[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(0),
	o => \LOAD[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\LOAD[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(1),
	o => \LOAD[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\LOAD[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(2),
	o => \LOAD[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\LOAD[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(3),
	o => \LOAD[3]~input_o\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;
END structure;


