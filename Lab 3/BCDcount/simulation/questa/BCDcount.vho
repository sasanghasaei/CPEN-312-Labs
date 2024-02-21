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

-- DATE "02/15/2024 19:14:36"

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

ENTITY 	BCDCOUNT IS
    PORT (
	KEY0 : IN std_logic;
	CLK_50 : IN std_logic;
	MSD : OUT std_logic_vector(0 TO 6);
	LSD : OUT std_logic_vector(0 TO 6)
	);
END BCDCOUNT;

-- Design Ports Information
-- MSD[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- KEY0	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF BCDCOUNT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_CLK_50 : std_logic;
SIGNAL ww_MSD : std_logic_vector(0 TO 6);
SIGNAL ww_LSD : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK_50~input_o\ : std_logic;
SIGNAL \CLK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \Internal_Count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \Internal_Count[16]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Internal_Count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Internal_Count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Internal_Count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Internal_Count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Internal_Count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Internal_Count[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Internal_Count[22]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \ClkFlag~0_combout\ : std_logic;
SIGNAL \ClkFlag~q\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \LowDigit[0]~3_combout\ : std_logic;
SIGNAL \LowDigit~0_combout\ : std_logic;
SIGNAL \LowDigit[1]~DUPLICATE_q\ : std_logic;
SIGNAL \LowDigit[2]~1_combout\ : std_logic;
SIGNAL \LowDigit[2]~DUPLICATE_q\ : std_logic;
SIGNAL \LowDigit~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \HighDigit[0]~3_combout\ : std_logic;
SIGNAL \HighDigit[3]~2_combout\ : std_logic;
SIGNAL \HighDigit~0_combout\ : std_logic;
SIGNAL \HighDigit~1_combout\ : std_logic;
SIGNAL \HighDigit[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL Internal_Count : std_logic_vector(28 DOWNTO 0);
SIGNAL HighDigit : std_logic_vector(3 DOWNTO 0);
SIGNAL LowDigit : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_Internal_Count : std_logic_vector(28 DOWNTO 0);
SIGNAL \ALT_INV_LowDigit[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_LowDigit[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_HighDigit[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Internal_Count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Internal_Count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Internal_Count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Internal_Count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Internal_Count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Internal_Count[22]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Internal_Count[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Internal_Count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Internal_Count[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY0~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ClkFlag~q\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL ALT_INV_LowDigit : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL ALT_INV_HighDigit : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_KEY0 <= KEY0;
ww_CLK_50 <= CLK_50;
MSD <= ww_MSD;
LSD <= ww_LSD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_Internal_Count(25) <= NOT Internal_Count(25);
ALT_INV_Internal_Count(26) <= NOT Internal_Count(26);
ALT_INV_Internal_Count(27) <= NOT Internal_Count(27);
ALT_INV_Internal_Count(28) <= NOT Internal_Count(28);
ALT_INV_Internal_Count(11) <= NOT Internal_Count(11);
ALT_INV_Internal_Count(12) <= NOT Internal_Count(12);
ALT_INV_Internal_Count(13) <= NOT Internal_Count(13);
ALT_INV_Internal_Count(14) <= NOT Internal_Count(14);
ALT_INV_Internal_Count(8) <= NOT Internal_Count(8);
ALT_INV_Internal_Count(9) <= NOT Internal_Count(9);
ALT_INV_Internal_Count(10) <= NOT Internal_Count(10);
ALT_INV_Internal_Count(7) <= NOT Internal_Count(7);
ALT_INV_Internal_Count(6) <= NOT Internal_Count(6);
ALT_INV_Internal_Count(15) <= NOT Internal_Count(15);
ALT_INV_Internal_Count(20) <= NOT Internal_Count(20);
ALT_INV_Internal_Count(21) <= NOT Internal_Count(21);
ALT_INV_Internal_Count(22) <= NOT Internal_Count(22);
ALT_INV_Internal_Count(18) <= NOT Internal_Count(18);
ALT_INV_Internal_Count(16) <= NOT Internal_Count(16);
ALT_INV_Internal_Count(17) <= NOT Internal_Count(17);
ALT_INV_Internal_Count(19) <= NOT Internal_Count(19);
ALT_INV_Internal_Count(23) <= NOT Internal_Count(23);
ALT_INV_Internal_Count(24) <= NOT Internal_Count(24);
\ALT_INV_LowDigit[2]~DUPLICATE_q\ <= NOT \LowDigit[2]~DUPLICATE_q\;
\ALT_INV_LowDigit[1]~DUPLICATE_q\ <= NOT \LowDigit[1]~DUPLICATE_q\;
\ALT_INV_HighDigit[2]~DUPLICATE_q\ <= NOT \HighDigit[2]~DUPLICATE_q\;
\ALT_INV_Internal_Count[14]~DUPLICATE_q\ <= NOT \Internal_Count[14]~DUPLICATE_q\;
\ALT_INV_Internal_Count[8]~DUPLICATE_q\ <= NOT \Internal_Count[8]~DUPLICATE_q\;
\ALT_INV_Internal_Count[9]~DUPLICATE_q\ <= NOT \Internal_Count[9]~DUPLICATE_q\;
\ALT_INV_Internal_Count[10]~DUPLICATE_q\ <= NOT \Internal_Count[10]~DUPLICATE_q\;
\ALT_INV_Internal_Count[6]~DUPLICATE_q\ <= NOT \Internal_Count[6]~DUPLICATE_q\;
\ALT_INV_Internal_Count[22]~DUPLICATE_q\ <= NOT \Internal_Count[22]~DUPLICATE_q\;
\ALT_INV_Internal_Count[16]~DUPLICATE_q\ <= NOT \Internal_Count[16]~DUPLICATE_q\;
\ALT_INV_Internal_Count[17]~DUPLICATE_q\ <= NOT \Internal_Count[17]~DUPLICATE_q\;
\ALT_INV_Internal_Count[19]~DUPLICATE_q\ <= NOT \Internal_Count[19]~DUPLICATE_q\;
\ALT_INV_KEY0~input_o\ <= NOT \KEY0~input_o\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_ClkFlag~q\ <= NOT \ClkFlag~q\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
ALT_INV_LowDigit(3) <= NOT LowDigit(3);
ALT_INV_LowDigit(2) <= NOT LowDigit(2);
ALT_INV_LowDigit(1) <= NOT LowDigit(1);
ALT_INV_LowDigit(0) <= NOT LowDigit(0);
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
ALT_INV_HighDigit(3) <= NOT HighDigit(3);
ALT_INV_HighDigit(2) <= NOT HighDigit(2);
ALT_INV_HighDigit(1) <= NOT HighDigit(1);
ALT_INV_HighDigit(0) <= NOT HighDigit(0);
ALT_INV_Internal_Count(0) <= NOT Internal_Count(0);
ALT_INV_Internal_Count(1) <= NOT Internal_Count(1);
ALT_INV_Internal_Count(2) <= NOT Internal_Count(2);
ALT_INV_Internal_Count(3) <= NOT Internal_Count(3);
ALT_INV_Internal_Count(4) <= NOT Internal_Count(4);
ALT_INV_Internal_Count(5) <= NOT Internal_Count(5);

-- Location: IOOBUF_X51_Y0_N53
\MSD[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD(6));

-- Location: IOOBUF_X43_Y0_N53
\MSD[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD(5));

-- Location: IOOBUF_X38_Y0_N36
\MSD[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD(4));

-- Location: IOOBUF_X43_Y0_N36
\MSD[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD(3));

-- Location: IOOBUF_X44_Y0_N53
\MSD[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD(2));

-- Location: IOOBUF_X40_Y0_N93
\MSD[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD(1));

-- Location: IOOBUF_X44_Y0_N36
\MSD[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD(0));

-- Location: IOOBUF_X46_Y0_N36
\LSD[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD(6));

-- Location: IOOBUF_X50_Y0_N53
\LSD[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD(5));

-- Location: IOOBUF_X48_Y0_N93
\LSD[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD(4));

-- Location: IOOBUF_X50_Y0_N36
\LSD[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD(3));

-- Location: IOOBUF_X48_Y0_N76
\LSD[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD(2));

-- Location: IOOBUF_X51_Y0_N36
\LSD[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD(1));

-- Location: IOOBUF_X52_Y0_N53
\LSD[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD(0));

-- Location: IOIBUF_X22_Y0_N1
\CLK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50,
	o => \CLK_50~input_o\);

-- Location: CLKCTRL_G6
\CLK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50~input_o\,
	outclk => \CLK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X31_Y2_N30
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( Internal_Count(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~114\ = CARRY(( Internal_Count(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(0),
	cin => GND,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: LABCELL_X31_Y1_N42
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( Internal_Count(24) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( Internal_Count(24) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Internal_Count(24),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X31_Y1_N45
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( Internal_Count(25) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~90\ = CARRY(( Internal_Count(25) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(25),
	cin => \Add0~2\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X31_Y1_N47
\Internal_Count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(25));

-- Location: LABCELL_X31_Y1_N48
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( Internal_Count(26) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( Internal_Count(26) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(26),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X31_Y1_N50
\Internal_Count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(26));

-- Location: LABCELL_X31_Y1_N51
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( Internal_Count(27) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( Internal_Count(27) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(27),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X31_Y1_N52
\Internal_Count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(27));

-- Location: LABCELL_X31_Y1_N54
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( Internal_Count(28) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(28),
	cin => \Add0~82\,
	sumout => \Add0~77_sumout\);

-- Location: FF_X31_Y1_N56
\Internal_Count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(28));

-- Location: LABCELL_X31_Y2_N9
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( !Internal_Count(27) & ( (!Internal_Count(26) & (!Internal_Count(28) & !Internal_Count(25))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(26),
	datac => ALT_INV_Internal_Count(28),
	datad => ALT_INV_Internal_Count(25),
	dataf => ALT_INV_Internal_Count(27),
	combout => \LessThan0~5_combout\);

-- Location: FF_X31_Y1_N22
\Internal_Count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(17));

-- Location: FF_X31_Y1_N13
\Internal_Count[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Internal_Count[14]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y2_N6
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( \Internal_Count[14]~DUPLICATE_q\ & ( (Internal_Count(12) & (Internal_Count(13) & Internal_Count(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Internal_Count(12),
	datac => ALT_INV_Internal_Count(13),
	datad => ALT_INV_Internal_Count(11),
	dataf => \ALT_INV_Internal_Count[14]~DUPLICATE_q\,
	combout => \LessThan0~3_combout\);

-- Location: FF_X31_Y2_N2
\Internal_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~49_sumout\,
	sclr => \LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(10));

-- Location: FF_X31_Y2_N55
\Internal_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(8));

-- Location: FF_X31_Y2_N59
\Internal_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(9));

-- Location: FF_X31_Y2_N49
\Internal_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(6));

-- Location: LABCELL_X31_Y2_N24
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( !Internal_Count(6) & ( (!Internal_Count(10) & (!Internal_Count(8) & (!Internal_Count(7) & !Internal_Count(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(10),
	datab => ALT_INV_Internal_Count(8),
	datac => ALT_INV_Internal_Count(7),
	datad => ALT_INV_Internal_Count(9),
	datae => ALT_INV_Internal_Count(6),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X31_Y2_N21
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \LessThan0~2_combout\ & ( (!Internal_Count(17) & (!Internal_Count(23) & !Internal_Count(15))) ) ) # ( !\LessThan0~2_combout\ & ( (!Internal_Count(17) & (!Internal_Count(23) & (!\LessThan0~3_combout\ & !Internal_Count(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(17),
	datab => ALT_INV_Internal_Count(23),
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => ALT_INV_Internal_Count(15),
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: FF_X31_Y1_N29
\Internal_Count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(19));

-- Location: FF_X31_Y1_N19
\Internal_Count[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Internal_Count[16]~DUPLICATE_q\);

-- Location: FF_X31_Y1_N37
\Internal_Count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(22));

-- Location: LABCELL_X31_Y2_N15
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( Internal_Count(22) & ( (Internal_Count(18) & (Internal_Count(21) & Internal_Count(20))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Internal_Count(18),
	datac => ALT_INV_Internal_Count(21),
	datad => ALT_INV_Internal_Count(20),
	dataf => ALT_INV_Internal_Count(22),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X31_Y2_N18
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \LessThan0~0_combout\ & ( (!Internal_Count(23) & ((!Internal_Count(19)) # ((!Internal_Count(17) & !\Internal_Count[16]~DUPLICATE_q\)))) ) ) # ( !\LessThan0~0_combout\ & ( !Internal_Count(23) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001000110000001100100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(17),
	datab => ALT_INV_Internal_Count(23),
	datac => ALT_INV_Internal_Count(19),
	datad => \ALT_INV_Internal_Count[16]~DUPLICATE_q\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X31_Y2_N12
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~1_combout\ & ( !\LessThan0~5_combout\ ) ) # ( !\LessThan0~1_combout\ & ( (!\LessThan0~5_combout\) # ((Internal_Count(24) & !\LessThan0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110000111101011111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(24),
	datac => \ALT_INV_LessThan0~5_combout\,
	datad => \ALT_INV_LessThan0~4_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \LessThan0~6_combout\);

-- Location: FF_X31_Y2_N5
\Internal_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~113_sumout\,
	sclr => \LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(0));

-- Location: LABCELL_X31_Y2_N33
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( Internal_Count(1) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( Internal_Count(1) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(1),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X31_Y2_N35
\Internal_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(1));

-- Location: LABCELL_X31_Y2_N36
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( Internal_Count(2) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( Internal_Count(2) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(2),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X31_Y2_N38
\Internal_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(2));

-- Location: LABCELL_X31_Y2_N39
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( Internal_Count(3) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( Internal_Count(3) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(3),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X31_Y2_N41
\Internal_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(3));

-- Location: LABCELL_X31_Y2_N42
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( Internal_Count(4) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( Internal_Count(4) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(4),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X31_Y2_N43
\Internal_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(4));

-- Location: LABCELL_X31_Y2_N45
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( Internal_Count(5) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( Internal_Count(5) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(5),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X31_Y2_N47
\Internal_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(5));

-- Location: LABCELL_X31_Y2_N48
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \Internal_Count[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~42\ = CARRY(( \Internal_Count[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Internal_Count[6]~DUPLICATE_q\,
	cin => \Add0~94\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X31_Y2_N50
\Internal_Count[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Internal_Count[6]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y2_N51
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( Internal_Count(7) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( Internal_Count(7) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(7),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X31_Y2_N53
\Internal_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(7));

-- Location: LABCELL_X31_Y2_N54
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \Internal_Count[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~58\ = CARRY(( \Internal_Count[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Internal_Count[8]~DUPLICATE_q\,
	cin => \Add0~46\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X31_Y2_N56
\Internal_Count[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Internal_Count[8]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y2_N57
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \Internal_Count[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( \Internal_Count[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Internal_Count[9]~DUPLICATE_q\,
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X31_Y2_N58
\Internal_Count[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Internal_Count[9]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y1_N0
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \Internal_Count[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( \Internal_Count[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Internal_Count[10]~DUPLICATE_q\,
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X31_Y2_N1
\Internal_Count[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~49_sumout\,
	sclr => \LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Internal_Count[10]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y1_N3
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( Internal_Count(11) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~74\ = CARRY(( Internal_Count(11) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(11),
	cin => \Add0~50\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X31_Y1_N5
\Internal_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(11));

-- Location: LABCELL_X31_Y1_N6
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( Internal_Count(12) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( Internal_Count(12) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(12),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X31_Y1_N7
\Internal_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(12));

-- Location: LABCELL_X31_Y1_N9
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( Internal_Count(13) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( Internal_Count(13) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(13),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X31_Y1_N11
\Internal_Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(13));

-- Location: LABCELL_X31_Y1_N12
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( Internal_Count(14) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( Internal_Count(14) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Internal_Count(14),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X31_Y1_N14
\Internal_Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(14));

-- Location: LABCELL_X31_Y1_N15
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( Internal_Count(15) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~38\ = CARRY(( Internal_Count(15) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(15),
	cin => \Add0~62\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X31_Y1_N17
\Internal_Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(15));

-- Location: LABCELL_X31_Y1_N18
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( Internal_Count(16) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~18\ = CARRY(( Internal_Count(16) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(16),
	cin => \Add0~38\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X31_Y1_N20
\Internal_Count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(16));

-- Location: LABCELL_X31_Y1_N21
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \Internal_Count[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( \Internal_Count[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Internal_Count[17]~DUPLICATE_q\,
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X31_Y1_N23
\Internal_Count[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Internal_Count[17]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y1_N24
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( Internal_Count(18) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~22\ = CARRY(( Internal_Count(18) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(18),
	cin => \Add0~14\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X31_Y1_N26
\Internal_Count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(18));

-- Location: LABCELL_X31_Y1_N27
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \Internal_Count[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~10\ = CARRY(( \Internal_Count[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Internal_Count[19]~DUPLICATE_q\,
	cin => \Add0~22\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X31_Y1_N28
\Internal_Count[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Internal_Count[19]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y1_N30
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( Internal_Count(20) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~34\ = CARRY(( Internal_Count(20) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Internal_Count(20),
	cin => \Add0~10\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X31_Y1_N32
\Internal_Count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(20));

-- Location: LABCELL_X31_Y1_N33
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( Internal_Count(21) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( Internal_Count(21) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(21),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X31_Y1_N35
\Internal_Count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(21));

-- Location: LABCELL_X31_Y1_N36
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \Internal_Count[22]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( \Internal_Count[22]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Internal_Count[22]~DUPLICATE_q\,
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X31_Y1_N38
\Internal_Count[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Internal_Count[22]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y1_N39
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( Internal_Count(23) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~6\ = CARRY(( Internal_Count(23) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(23),
	cin => \Add0~26\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X31_Y1_N40
\Internal_Count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(23));

-- Location: FF_X31_Y1_N44
\Internal_Count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(24));

-- Location: LABCELL_X31_Y2_N3
\ClkFlag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClkFlag~0_combout\ = ( \LessThan0~4_combout\ & ( \ClkFlag~q\ & ( \LessThan0~5_combout\ ) ) ) # ( !\LessThan0~4_combout\ & ( \ClkFlag~q\ & ( (\LessThan0~5_combout\ & ((!Internal_Count(24)) # (\LessThan0~1_combout\))) ) ) ) # ( \LessThan0~4_combout\ & ( 
-- !\ClkFlag~q\ & ( !\LessThan0~5_combout\ ) ) ) # ( !\LessThan0~4_combout\ & ( !\ClkFlag~q\ & ( (!\LessThan0~5_combout\) # ((Internal_Count(24) & !\LessThan0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110000111100001111000000001010000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(24),
	datac => \ALT_INV_LessThan0~5_combout\,
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_LessThan0~4_combout\,
	dataf => \ALT_INV_ClkFlag~q\,
	combout => \ClkFlag~0_combout\);

-- Location: FF_X31_Y2_N29
ClkFlag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~input_o\,
	asdata => \ClkFlag~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkFlag~q\);

-- Location: IOIBUF_X10_Y0_N92
\KEY0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: FF_X32_Y2_N25
\LowDigit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	asdata => \LowDigit[2]~1_combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LowDigit(2));

-- Location: LABCELL_X32_Y2_N18
\LowDigit[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit[0]~3_combout\ = !LowDigit(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_LowDigit(0),
	combout => \LowDigit[0]~3_combout\);

-- Location: FF_X32_Y2_N23
\LowDigit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	asdata => \LowDigit[0]~3_combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LowDigit(0));

-- Location: FF_X32_Y2_N56
\LowDigit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	asdata => \LowDigit~0_combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LowDigit(1));

-- Location: LABCELL_X32_Y2_N42
\LowDigit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit~0_combout\ = ( LowDigit(3) & ( (!LowDigit(1) & (\LowDigit[2]~DUPLICATE_q\ & LowDigit(0))) # (LowDigit(1) & ((!LowDigit(0)))) ) ) # ( !LowDigit(3) & ( !LowDigit(1) $ (!LowDigit(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101000010100101010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_LowDigit(1),
	datac => \ALT_INV_LowDigit[2]~DUPLICATE_q\,
	datad => ALT_INV_LowDigit(0),
	dataf => ALT_INV_LowDigit(3),
	combout => \LowDigit~0_combout\);

-- Location: FF_X32_Y2_N55
\LowDigit[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	asdata => \LowDigit~0_combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LowDigit[1]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y2_N15
\LowDigit[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit[2]~1_combout\ = ( \LowDigit[1]~DUPLICATE_q\ & ( !LowDigit(2) $ (!LowDigit(0)) ) ) # ( !\LowDigit[1]~DUPLICATE_q\ & ( LowDigit(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_LowDigit(2),
	datad => ALT_INV_LowDigit(0),
	dataf => \ALT_INV_LowDigit[1]~DUPLICATE_q\,
	combout => \LowDigit[2]~1_combout\);

-- Location: FF_X32_Y2_N26
\LowDigit[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	asdata => \LowDigit[2]~1_combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LowDigit[2]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y2_N33
\LowDigit~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit~2_combout\ = ( \LowDigit[1]~DUPLICATE_q\ & ( !LowDigit(3) $ (((!\LowDigit[2]~DUPLICATE_q\) # (!LowDigit(0)))) ) ) # ( !\LowDigit[1]~DUPLICATE_q\ & ( (LowDigit(3) & ((!LowDigit(0)) # (\LowDigit[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000011110000010100001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit[2]~DUPLICATE_q\,
	datac => ALT_INV_LowDigit(3),
	datad => ALT_INV_LowDigit(0),
	dataf => \ALT_INV_LowDigit[1]~DUPLICATE_q\,
	combout => \LowDigit~2_combout\);

-- Location: FF_X32_Y2_N14
\LowDigit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	asdata => \LowDigit~2_combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LowDigit(3));

-- Location: LABCELL_X32_Y2_N57
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( LowDigit(0) & ( !\LowDigit[2]~DUPLICATE_q\ & ( (LowDigit(3) & !LowDigit(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_LowDigit(3),
	datad => ALT_INV_LowDigit(1),
	datae => ALT_INV_LowDigit(0),
	dataf => \ALT_INV_LowDigit[2]~DUPLICATE_q\,
	combout => \Equal0~0_combout\);

-- Location: FF_X32_Y2_N38
\HighDigit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	asdata => \HighDigit~1_combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HighDigit(2));

-- Location: LABCELL_X32_Y2_N3
\HighDigit[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit[0]~3_combout\ = ( !HighDigit(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_HighDigit(0),
	combout => \HighDigit[0]~3_combout\);

-- Location: FF_X32_Y2_N53
\HighDigit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	asdata => \HighDigit[0]~3_combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HighDigit(0));

-- Location: LABCELL_X32_Y2_N39
\HighDigit[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit[3]~2_combout\ = ( \Equal0~0_combout\ & ( \HighDigit[2]~DUPLICATE_q\ & ( !HighDigit(3) $ (((!HighDigit(0)) # (!HighDigit(1)))) ) ) ) # ( !\Equal0~0_combout\ & ( \HighDigit[2]~DUPLICATE_q\ & ( HighDigit(3) ) ) ) # ( \Equal0~0_combout\ & ( 
-- !\HighDigit[2]~DUPLICATE_q\ & ( HighDigit(3) ) ) ) # ( !\Equal0~0_combout\ & ( !\HighDigit[2]~DUPLICATE_q\ & ( HighDigit(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HighDigit(0),
	datab => ALT_INV_HighDigit(1),
	datad => ALT_INV_HighDigit(3),
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_HighDigit[2]~DUPLICATE_q\,
	combout => \HighDigit[3]~2_combout\);

-- Location: FF_X32_Y2_N5
\HighDigit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	asdata => \HighDigit[3]~2_combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HighDigit(3));

-- Location: LABCELL_X32_Y2_N0
\HighDigit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit~0_combout\ = ( \HighDigit[2]~DUPLICATE_q\ & ( (!HighDigit(1) & (HighDigit(0) & HighDigit(3))) # (HighDigit(1) & (!HighDigit(0))) ) ) # ( !\HighDigit[2]~DUPLICATE_q\ & ( !HighDigit(1) $ (!HighDigit(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000110000001111000011000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_HighDigit(1),
	datac => ALT_INV_HighDigit(0),
	datad => ALT_INV_HighDigit(3),
	dataf => \ALT_INV_HighDigit[2]~DUPLICATE_q\,
	combout => \HighDigit~0_combout\);

-- Location: FF_X32_Y2_N8
\HighDigit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	asdata => \HighDigit~0_combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HighDigit(1));

-- Location: LABCELL_X32_Y2_N48
\HighDigit~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit~1_combout\ = ( HighDigit(3) & ( HighDigit(0) & ( !HighDigit(2) $ (!HighDigit(1)) ) ) ) # ( !HighDigit(3) & ( HighDigit(0) & ( (!HighDigit(2) & HighDigit(1)) ) ) ) # ( HighDigit(3) & ( !HighDigit(0) & ( HighDigit(2) ) ) ) # ( !HighDigit(3) & ( 
-- !HighDigit(0) & ( HighDigit(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_HighDigit(2),
	datad => ALT_INV_HighDigit(1),
	datae => ALT_INV_HighDigit(3),
	dataf => ALT_INV_HighDigit(0),
	combout => \HighDigit~1_combout\);

-- Location: FF_X32_Y2_N37
\HighDigit[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	asdata => \HighDigit~1_combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HighDigit[2]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y2_N27
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( HighDigit(1) & ( (!HighDigit(3) & ((!\HighDigit[2]~DUPLICATE_q\) # (!HighDigit(0)))) ) ) # ( !HighDigit(1) & ( !\HighDigit[2]~DUPLICATE_q\ $ (!HighDigit(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit[2]~DUPLICATE_q\,
	datac => ALT_INV_HighDigit(3),
	datad => ALT_INV_HighDigit(0),
	dataf => ALT_INV_HighDigit(1),
	combout => \Mux13~0_combout\);

-- Location: MLABCELL_X34_Y2_N18
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( HighDigit(1) & ( ((!\HighDigit[2]~DUPLICATE_q\) # (HighDigit(3))) # (HighDigit(0)) ) ) # ( !HighDigit(1) & ( (!HighDigit(3) & (HighDigit(0) & !\HighDigit[2]~DUPLICATE_q\)) # (HighDigit(3) & ((\HighDigit[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HighDigit(0),
	datab => ALT_INV_HighDigit(3),
	datac => \ALT_INV_HighDigit[2]~DUPLICATE_q\,
	dataf => ALT_INV_HighDigit(1),
	combout => \Mux12~0_combout\);

-- Location: MLABCELL_X34_Y2_N15
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( HighDigit(1) & ( (HighDigit(0)) # (HighDigit(3)) ) ) # ( !HighDigit(1) & ( (HighDigit(0)) # (\HighDigit[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit[2]~DUPLICATE_q\,
	datac => ALT_INV_HighDigit(3),
	datad => ALT_INV_HighDigit(0),
	dataf => ALT_INV_HighDigit(1),
	combout => \Mux11~0_combout\);

-- Location: MLABCELL_X34_Y2_N33
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( HighDigit(1) & ( ((\HighDigit[2]~DUPLICATE_q\ & HighDigit(0))) # (HighDigit(3)) ) ) # ( !HighDigit(1) & ( !\HighDigit[2]~DUPLICATE_q\ $ (((!HighDigit(0)) # (HighDigit(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100101010101011010010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit[2]~DUPLICATE_q\,
	datac => ALT_INV_HighDigit(3),
	datad => ALT_INV_HighDigit(0),
	dataf => ALT_INV_HighDigit(1),
	combout => \Mux10~0_combout\);

-- Location: MLABCELL_X34_Y2_N39
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( HighDigit(1) & ( ((!\HighDigit[2]~DUPLICATE_q\ & !HighDigit(0))) # (HighDigit(3)) ) ) # ( !HighDigit(1) & ( (\HighDigit[2]~DUPLICATE_q\ & HighDigit(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111000011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit[2]~DUPLICATE_q\,
	datac => ALT_INV_HighDigit(3),
	datad => ALT_INV_HighDigit(0),
	dataf => ALT_INV_HighDigit(1),
	combout => \Mux9~0_combout\);

-- Location: MLABCELL_X34_Y2_N9
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( HighDigit(1) & ( ((\HighDigit[2]~DUPLICATE_q\ & !HighDigit(0))) # (HighDigit(3)) ) ) # ( !HighDigit(1) & ( (\HighDigit[2]~DUPLICATE_q\ & ((HighDigit(0)) # (HighDigit(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit[2]~DUPLICATE_q\,
	datac => ALT_INV_HighDigit(3),
	datad => ALT_INV_HighDigit(0),
	dataf => ALT_INV_HighDigit(1),
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X34_Y2_N48
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( HighDigit(1) & ( HighDigit(3) ) ) # ( !HighDigit(1) & ( !\HighDigit[2]~DUPLICATE_q\ $ (((!HighDigit(0)) # (HighDigit(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001011010010110100101100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HighDigit(0),
	datab => ALT_INV_HighDigit(3),
	datac => \ALT_INV_HighDigit[2]~DUPLICATE_q\,
	dataf => ALT_INV_HighDigit(1),
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X32_Y2_N27
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( LowDigit(0) & ( (!LowDigit(3) & (!\LowDigit[2]~DUPLICATE_q\ $ (!\LowDigit[1]~DUPLICATE_q\))) # (LowDigit(3) & (!\LowDigit[2]~DUPLICATE_q\ & !\LowDigit[1]~DUPLICATE_q\)) ) ) # ( !LowDigit(0) & ( !LowDigit(3) $ 
-- (((!\LowDigit[2]~DUPLICATE_q\ & !\LowDigit[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010010110101010000001011010101010100101101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_LowDigit(3),
	datac => \ALT_INV_LowDigit[2]~DUPLICATE_q\,
	datad => \ALT_INV_LowDigit[1]~DUPLICATE_q\,
	datae => ALT_INV_LowDigit(0),
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X32_Y2_N12
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \LowDigit[1]~DUPLICATE_q\ & ( ((!\LowDigit[2]~DUPLICATE_q\) # (LowDigit(3))) # (LowDigit(0)) ) ) # ( !\LowDigit[1]~DUPLICATE_q\ & ( (!\LowDigit[2]~DUPLICATE_q\ & (LowDigit(0) & !LowDigit(3))) # (\LowDigit[2]~DUPLICATE_q\ & 
-- ((LowDigit(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000110011010001000011001111011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_LowDigit(0),
	datab => \ALT_INV_LowDigit[2]~DUPLICATE_q\,
	datad => ALT_INV_LowDigit(3),
	dataf => \ALT_INV_LowDigit[1]~DUPLICATE_q\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X32_Y2_N21
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \LowDigit[1]~DUPLICATE_q\ & ( (LowDigit(0)) # (LowDigit(3)) ) ) # ( !\LowDigit[1]~DUPLICATE_q\ & ( (LowDigit(0)) # (\LowDigit[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit[2]~DUPLICATE_q\,
	datac => ALT_INV_LowDigit(3),
	datad => ALT_INV_LowDigit(0),
	dataf => \ALT_INV_LowDigit[1]~DUPLICATE_q\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X32_Y2_N9
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\LowDigit[1]~DUPLICATE_q\ & (!\LowDigit[2]~DUPLICATE_q\ $ (((!LowDigit(0)) # (LowDigit(3)))))) # (\LowDigit[1]~DUPLICATE_q\ & (((\LowDigit[2]~DUPLICATE_q\ & LowDigit(0))) # (LowDigit(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011110010111001001111001011100100111100101110010011110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit[1]~DUPLICATE_q\,
	datab => \ALT_INV_LowDigit[2]~DUPLICATE_q\,
	datac => ALT_INV_LowDigit(3),
	datad => ALT_INV_LowDigit(0),
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X32_Y2_N30
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \LowDigit[1]~DUPLICATE_q\ & ( ((!\LowDigit[2]~DUPLICATE_q\ & !LowDigit(0))) # (LowDigit(3)) ) ) # ( !\LowDigit[1]~DUPLICATE_q\ & ( (\LowDigit[2]~DUPLICATE_q\ & LowDigit(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011001100111011101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit[2]~DUPLICATE_q\,
	datab => ALT_INV_LowDigit(3),
	datad => ALT_INV_LowDigit(0),
	dataf => \ALT_INV_LowDigit[1]~DUPLICATE_q\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X32_Y2_N45
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( LowDigit(3) & ( (\LowDigit[2]~DUPLICATE_q\) # (LowDigit(1)) ) ) # ( !LowDigit(3) & ( (\LowDigit[2]~DUPLICATE_q\ & (!LowDigit(1) $ (!LowDigit(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_LowDigit(1),
	datab => \ALT_INV_LowDigit[2]~DUPLICATE_q\,
	datad => ALT_INV_LowDigit(0),
	dataf => ALT_INV_LowDigit(3),
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X32_Y2_N6
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( LowDigit(3) & ( (\LowDigit[2]~DUPLICATE_q\) # (\LowDigit[1]~DUPLICATE_q\) ) ) # ( !LowDigit(3) & ( (!\LowDigit[1]~DUPLICATE_q\ & (!\LowDigit[2]~DUPLICATE_q\ $ (!LowDigit(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit[1]~DUPLICATE_q\,
	datab => \ALT_INV_LowDigit[2]~DUPLICATE_q\,
	datad => ALT_INV_LowDigit(0),
	dataf => ALT_INV_LowDigit(3),
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X5_Y23_N3
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


