-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "02/24/2024 10:13:10"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BCDcount IS
    PORT (
	Clock : IN std_logic;
	M : IN std_logic;
	Rn : IN std_logic;
	D0 : IN std_logic_vector(3 DOWNTO 0);
	D1 : IN std_logic_vector(3 DOWNTO 0);
	Q : OUT std_logic_vector(3 DOWNTO 0)
	);
END BCDcount;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Q[1]	=>  Location: PIN_L17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Q[2]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Q[3]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- M	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D1[0]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D0[0]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Rn	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D1[1]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D0[1]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D1[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D0[2]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D1[3]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D0[3]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF BCDcount IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_Rn : std_logic;
SIGNAL ww_D0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \D0[0]~input_o\ : std_logic;
SIGNAL \D1[0]~input_o\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \Q~0_combout\ : std_logic;
SIGNAL \Rn~input_o\ : std_logic;
SIGNAL \Q[0]~reg0_q\ : std_logic;
SIGNAL \D1[1]~input_o\ : std_logic;
SIGNAL \D0[1]~input_o\ : std_logic;
SIGNAL \Q~1_combout\ : std_logic;
SIGNAL \Q[1]~reg0_q\ : std_logic;
SIGNAL \D1[2]~input_o\ : std_logic;
SIGNAL \D0[2]~input_o\ : std_logic;
SIGNAL \Q~2_combout\ : std_logic;
SIGNAL \Q[2]~reg0_q\ : std_logic;
SIGNAL \D0[3]~input_o\ : std_logic;
SIGNAL \D1[3]~input_o\ : std_logic;
SIGNAL \Q~3_combout\ : std_logic;
SIGNAL \Q[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_D0[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D0[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D0[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D0[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_M~input_o\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_M <= M;
ww_Rn <= Rn;
ww_D0 <= D0;
ww_D1 <= D1;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Clock~inputCLKENA0_outclk\ <= NOT \Clock~inputCLKENA0_outclk\;
\ALT_INV_D0[3]~input_o\ <= NOT \D0[3]~input_o\;
\ALT_INV_D1[3]~input_o\ <= NOT \D1[3]~input_o\;
\ALT_INV_D0[2]~input_o\ <= NOT \D0[2]~input_o\;
\ALT_INV_D1[2]~input_o\ <= NOT \D1[2]~input_o\;
\ALT_INV_D0[1]~input_o\ <= NOT \D0[1]~input_o\;
\ALT_INV_D1[1]~input_o\ <= NOT \D1[1]~input_o\;
\ALT_INV_D0[0]~input_o\ <= NOT \D0[0]~input_o\;
\ALT_INV_D1[0]~input_o\ <= NOT \D1[0]~input_o\;
\ALT_INV_M~input_o\ <= NOT \M~input_o\;

-- Location: IOOBUF_X54_Y21_N56
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X54_Y20_N22
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X54_Y17_N22
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X54_Y17_N56
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOIBUF_X54_Y18_N61
\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G10
\Clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~input_o\,
	outclk => \Clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X54_Y21_N21
\D0[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(0),
	o => \D0[0]~input_o\);

-- Location: IOIBUF_X54_Y21_N4
\D1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(0),
	o => \D1[0]~input_o\);

-- Location: IOIBUF_X54_Y21_N38
\M~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: LABCELL_X53_Y21_N33
\Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~0_combout\ = ( \D1[0]~input_o\ & ( \M~input_o\ ) ) # ( \D1[0]~input_o\ & ( !\M~input_o\ & ( \D0[0]~input_o\ ) ) ) # ( !\D1[0]~input_o\ & ( !\M~input_o\ & ( \D0[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D0[0]~input_o\,
	datae => \ALT_INV_D1[0]~input_o\,
	dataf => \ALT_INV_M~input_o\,
	combout => \Q~0_combout\);

-- Location: IOIBUF_X54_Y20_N4
\Rn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rn,
	o => \Rn~input_o\);

-- Location: FF_X53_Y21_N34
\Q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputCLKENA0_outclk\,
	d => \Q~0_combout\,
	clrn => \Rn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[0]~reg0_q\);

-- Location: IOIBUF_X54_Y20_N38
\D1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(1),
	o => \D1[1]~input_o\);

-- Location: IOIBUF_X54_Y20_N55
\D0[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(1),
	o => \D0[1]~input_o\);

-- Location: LABCELL_X53_Y20_N33
\Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~1_combout\ = ( \D0[1]~input_o\ & ( \M~input_o\ & ( \D1[1]~input_o\ ) ) ) # ( !\D0[1]~input_o\ & ( \M~input_o\ & ( \D1[1]~input_o\ ) ) ) # ( \D0[1]~input_o\ & ( !\M~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D1[1]~input_o\,
	datae => \ALT_INV_D0[1]~input_o\,
	dataf => \ALT_INV_M~input_o\,
	combout => \Q~1_combout\);

-- Location: FF_X53_Y20_N34
\Q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputCLKENA0_outclk\,
	d => \Q~1_combout\,
	clrn => \Rn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[1]~reg0_q\);

-- Location: IOIBUF_X54_Y19_N38
\D1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(2),
	o => \D1[2]~input_o\);

-- Location: IOIBUF_X54_Y19_N4
\D0[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(2),
	o => \D0[2]~input_o\);

-- Location: LABCELL_X53_Y19_N33
\Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~2_combout\ = ( \D0[2]~input_o\ & ( \M~input_o\ & ( \D1[2]~input_o\ ) ) ) # ( !\D0[2]~input_o\ & ( \M~input_o\ & ( \D1[2]~input_o\ ) ) ) # ( \D0[2]~input_o\ & ( !\M~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D1[2]~input_o\,
	datae => \ALT_INV_D0[2]~input_o\,
	dataf => \ALT_INV_M~input_o\,
	combout => \Q~2_combout\);

-- Location: FF_X53_Y19_N34
\Q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputCLKENA0_outclk\,
	d => \Q~2_combout\,
	clrn => \Rn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[2]~reg0_q\);

-- Location: IOIBUF_X54_Y19_N21
\D0[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(3),
	o => \D0[3]~input_o\);

-- Location: IOIBUF_X54_Y19_N55
\D1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(3),
	o => \D1[3]~input_o\);

-- Location: LABCELL_X53_Y19_N6
\Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q~3_combout\ = ( \D1[3]~input_o\ & ( \M~input_o\ ) ) # ( \D1[3]~input_o\ & ( !\M~input_o\ & ( \D0[3]~input_o\ ) ) ) # ( !\D1[3]~input_o\ & ( !\M~input_o\ & ( \D0[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D0[3]~input_o\,
	datae => \ALT_INV_D1[3]~input_o\,
	dataf => \ALT_INV_M~input_o\,
	combout => \Q~3_combout\);

-- Location: FF_X53_Y19_N7
\Q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputCLKENA0_outclk\,
	d => \Q~3_combout\,
	clrn => \Rn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[3]~reg0_q\);

-- Location: MLABCELL_X23_Y31_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


