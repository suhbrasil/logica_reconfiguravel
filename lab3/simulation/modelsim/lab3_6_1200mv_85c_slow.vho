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

-- DATE "10/30/2024 12:10:43"

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
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab3 IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic_vector(2 DOWNTO 0);
	Q_IN : IN std_logic_vector(3 DOWNTO 0);
	ID : OUT std_logic_vector(2 DOWNTO 0);
	EN : IN std_logic;
	CLR : IN std_logic;
	LD : IN std_logic;
	LOAD : IN std_logic_vector(3 DOWNTO 0)
	);
END lab3;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID[2]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_IN[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_IN[1]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_IN[2]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_IN[0]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_ID : std_logic_vector(2 DOWNTO 0);
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
SIGNAL \Q_IN[2]~input_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \ID[0]~output_o\ : std_logic;
SIGNAL \ID[1]~output_o\ : std_logic;
SIGNAL \ID[2]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Q_IN[1]~input_o\ : std_logic;
SIGNAL \Q_IN[3]~input_o\ : std_logic;
SIGNAL \Q_IN[0]~input_o\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \index~2_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \tot_4[0]~2_combout\ : std_logic;
SIGNAL \index~0_combout\ : std_logic;
SIGNAL \index~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \tot_4~1_combout\ : std_logic;
SIGNAL \tot_4[0]~0_combout\ : std_logic;
SIGNAL \tot_4~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \tot_4~4_combout\ : std_logic;
SIGNAL tot_4 : std_logic_vector(2 DOWNTO 0);
SIGNAL index : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
Q <= ww_Q;
ww_Q_IN <= Q_IN;
ID <= ww_ID;
ww_EN <= EN;
ww_CLR <= CLR;
ww_LD <= LD;
ww_LOAD <= LOAD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;

-- Location: IOIBUF_X1_Y0_N8
\Q_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q_IN(2),
	o => \Q_IN[2]~input_o\);

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X0_Y4_N23
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

-- Location: IOOBUF_X0_Y5_N23
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

-- Location: IOOBUF_X0_Y6_N16
\ID[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => index(0),
	devoe => ww_devoe,
	o => \ID[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\ID[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => index(1),
	devoe => ww_devoe,
	o => \ID[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\ID[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => index(2),
	devoe => ww_devoe,
	o => \ID[2]~output_o\);

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

-- Location: IOIBUF_X3_Y0_N1
\Q_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q_IN(1),
	o => \Q_IN[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\Q_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q_IN(3),
	o => \Q_IN[3]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\Q_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q_IN(0),
	o => \Q_IN[0]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: LCCOMB_X1_Y4_N14
\index~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \index~2_combout\ = (!\CLR~input_o\ & ((index(1) & (index(2) $ (index(0)))) # (!index(1) & (index(2) & index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => \CLR~input_o\,
	datac => index(2),
	datad => index(0),
	combout => \index~2_combout\);

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

-- Location: IOIBUF_X1_Y0_N22
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X1_Y4_N30
\tot_4[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_4[0]~2_combout\ = (\CLR~input_o\) # (\EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datac => \EN~input_o\,
	combout => \tot_4[0]~2_combout\);

-- Location: FF_X1_Y4_N15
\index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \index~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \tot_4[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(2));

-- Location: LCCOMB_X1_Y4_N22
\index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \index~0_combout\ = (!index(0) & (!\CLR~input_o\ & ((index(1)) # (!index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(1),
	datab => index(2),
	datac => index(0),
	datad => \CLR~input_o\,
	combout => \index~0_combout\);

-- Location: FF_X1_Y4_N23
\index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \index~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \tot_4[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(0));

-- Location: LCCOMB_X1_Y4_N20
\index~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \index~1_combout\ = (!\CLR~input_o\ & (index(1) $ (index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datac => index(1),
	datad => index(0),
	combout => \index~1_combout\);

-- Location: FF_X1_Y4_N21
\index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \index~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \tot_4[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(1));

-- Location: LCCOMB_X1_Y4_N10
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (index(0) & (((index(1))))) # (!index(0) & ((index(1) & (\Q_IN[2]~input_o\)) # (!index(1) & ((\Q_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q_IN[2]~input_o\,
	datab => \Q_IN[0]~input_o\,
	datac => index(0),
	datad => index(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y4_N12
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (index(0) & ((\Mux0~0_combout\ & ((\Q_IN[3]~input_o\))) # (!\Mux0~0_combout\ & (\Q_IN[1]~input_o\)))) # (!index(0) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => \Q_IN[1]~input_o\,
	datac => \Q_IN[3]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X1_Y4_N24
\tot_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_4~1_combout\ = (\tot_4[0]~0_combout\ & (tot_4(0) $ (\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tot_4[0]~0_combout\,
	datac => tot_4(0),
	datad => \Mux0~1_combout\,
	combout => \tot_4~1_combout\);

-- Location: FF_X1_Y4_N25
\tot_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \tot_4~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \tot_4[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tot_4(0));

-- Location: LCCOMB_X1_Y4_N16
\tot_4[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_4[0]~0_combout\ = (!\CLR~input_o\ & ((index(0)) # ((index(1)) # (!index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datab => index(2),
	datac => index(1),
	datad => \CLR~input_o\,
	combout => \tot_4[0]~0_combout\);

-- Location: LCCOMB_X1_Y4_N26
\tot_4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_4~3_combout\ = (\tot_4[0]~0_combout\ & (tot_4(1) $ (((\Mux0~1_combout\ & tot_4(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \tot_4[0]~0_combout\,
	datac => tot_4(1),
	datad => tot_4(0),
	combout => \tot_4~3_combout\);

-- Location: FF_X1_Y4_N27
\tot_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \tot_4~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \tot_4[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tot_4(1));

-- Location: LCCOMB_X1_Y4_N28
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = tot_4(2) $ (((tot_4(1) & (tot_4(0) & \Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tot_4(1),
	datab => tot_4(0),
	datac => tot_4(2),
	datad => \Mux0~1_combout\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y4_N8
\tot_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tot_4~4_combout\ = (\tot_4[0]~0_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tot_4[0]~0_combout\,
	datad => \Add0~0_combout\,
	combout => \tot_4~4_combout\);

-- Location: FF_X1_Y4_N9
\tot_4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \tot_4~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \tot_4[0]~2_combout\,
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

-- Location: IOIBUF_X0_Y24_N22
\LOAD[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(1),
	o => \LOAD[1]~input_o\);

-- Location: IOIBUF_X45_Y34_N1
\LOAD[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD(2),
	o => \LOAD[2]~input_o\);

-- Location: IOIBUF_X43_Y34_N15
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

ww_ID(0) <= \ID[0]~output_o\;

ww_ID(1) <= \ID[1]~output_o\;

ww_ID(2) <= \ID[2]~output_o\;
END structure;


