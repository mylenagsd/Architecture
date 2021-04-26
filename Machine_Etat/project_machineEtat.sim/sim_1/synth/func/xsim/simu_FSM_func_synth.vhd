-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Feb 25 11:30:05 2020
-- Host        : n7-b204-09 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/projet_machineEtat/project_machineEtat/project_machineEtat.sim/sim_1/synth/func/xsim/simu_FSM_func_synth.vhd
-- Design      : FSM_Mult
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FSM_Mult is
  port (
    H : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Start : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    En : out STD_LOGIC;
    Result : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FSM_Mult : entity is true;
end FSM_Mult;

architecture STRUCTURE of FSM_Mult is
  signal A_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal B_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal En_Inc : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of En_Inc : signal is "yes";
  signal En_OBUF : STD_LOGIC;
  signal En_Shift : STD_LOGIC;
  attribute RTL_KEEP of En_Shift : signal is "yes";
  signal En_Store : STD_LOGIC;
  attribute RTL_KEEP of En_Store : signal is "yes";
  signal En_i_1_n_0 : STD_LOGIC;
  signal En_ref_Load : STD_LOGIC;
  attribute RTL_KEEP of En_ref_Load : signal is "yes";
  signal En_ref_Sum : STD_LOGIC;
  attribute RTL_KEEP of En_ref_Sum : signal is "yes";
  signal \FSM_onehot_present_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_present_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_present_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_present_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_present_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_present_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_present_state[6]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_present_state[6]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_present_state[6]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_present_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_present_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_present_state_reg_n_0_[1]\ : signal is "yes";
  signal H_IBUF : STD_LOGIC;
  signal H_IBUF_BUFG : STD_LOGIC;
  signal \Result[15]_i_1_n_0\ : STD_LOGIC;
  signal Result_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Rst_IBUF : STD_LOGIC;
  signal Start_IBUF : STD_LOGIC;
  signal decalage_A : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \decalage_A[0]_i_1_n_0\ : STD_LOGIC;
  signal \decalage_A[10]_i_1_n_0\ : STD_LOGIC;
  signal \decalage_A[11]_i_1_n_0\ : STD_LOGIC;
  signal \decalage_A[12]_i_1_n_0\ : STD_LOGIC;
  signal \decalage_A[13]_i_1_n_0\ : STD_LOGIC;
  signal \decalage_A[14]_i_1_n_0\ : STD_LOGIC;
  signal \decalage_A[15]_i_1_n_0\ : STD_LOGIC;
  signal \decalage_A[15]_i_2_n_0\ : STD_LOGIC;
  signal \decalage_A[1]_i_1_n_0\ : STD_LOGIC;
  signal \decalage_A[2]_i_1_n_0\ : STD_LOGIC;
  signal \decalage_A[3]_i_1_n_0\ : STD_LOGIC;
  signal \decalage_A[4]_i_1_n_0\ : STD_LOGIC;
  signal \decalage_A[5]_i_1_n_0\ : STD_LOGIC;
  signal \decalage_A[6]_i_1_n_0\ : STD_LOGIC;
  signal \decalage_A[7]_i_1_n_0\ : STD_LOGIC;
  signal \decalage_A[8]_i_1_n_0\ : STD_LOGIC;
  signal \decalage_A[9]_i_1_n_0\ : STD_LOGIC;
  signal \i[3]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sauv_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sauv_B[7]_i_1_n_0\ : STD_LOGIC;
  signal \somme[0]_i_1_n_0\ : STD_LOGIC;
  signal \somme[0]_i_3_n_0\ : STD_LOGIC;
  signal \somme[0]_i_4_n_0\ : STD_LOGIC;
  signal \somme[0]_i_5_n_0\ : STD_LOGIC;
  signal \somme[0]_i_6_n_0\ : STD_LOGIC;
  signal \somme[12]_i_2_n_0\ : STD_LOGIC;
  signal \somme[12]_i_3_n_0\ : STD_LOGIC;
  signal \somme[12]_i_4_n_0\ : STD_LOGIC;
  signal \somme[12]_i_5_n_0\ : STD_LOGIC;
  signal \somme[4]_i_2_n_0\ : STD_LOGIC;
  signal \somme[4]_i_3_n_0\ : STD_LOGIC;
  signal \somme[4]_i_4_n_0\ : STD_LOGIC;
  signal \somme[4]_i_5_n_0\ : STD_LOGIC;
  signal \somme[8]_i_2_n_0\ : STD_LOGIC;
  signal \somme[8]_i_3_n_0\ : STD_LOGIC;
  signal \somme[8]_i_4_n_0\ : STD_LOGIC;
  signal \somme[8]_i_5_n_0\ : STD_LOGIC;
  signal somme_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \somme_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \somme_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \somme_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \somme_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \somme_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \somme_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \somme_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \somme_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \somme_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \somme_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \somme_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \somme_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \somme_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \somme_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \somme_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \somme_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \somme_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \somme_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \somme_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \somme_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \somme_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \somme_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \somme_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \somme_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \somme_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \somme_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \somme_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \somme_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \somme_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \somme_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \somme_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_somme_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_present_state[6]_i_4\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[0]\ : label is "reset:0000001,shift:0010000,idle:0000010,load:0000100,store:0100000,inc:0001000,sum:1000000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_present_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[1]\ : label is "reset:0000001,shift:0010000,idle:0000010,load:0000100,store:0100000,inc:0001000,sum:1000000";
  attribute KEEP of \FSM_onehot_present_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[2]\ : label is "reset:0000001,shift:0010000,idle:0000010,load:0000100,store:0100000,inc:0001000,sum:1000000";
  attribute KEEP of \FSM_onehot_present_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[3]\ : label is "reset:0000001,shift:0010000,idle:0000010,load:0000100,store:0100000,inc:0001000,sum:1000000";
  attribute KEEP of \FSM_onehot_present_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[4]\ : label is "reset:0000001,shift:0010000,idle:0000010,load:0000100,store:0100000,inc:0001000,sum:1000000";
  attribute KEEP of \FSM_onehot_present_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[5]\ : label is "reset:0000001,shift:0010000,idle:0000010,load:0000100,store:0100000,inc:0001000,sum:1000000";
  attribute KEEP of \FSM_onehot_present_state_reg[5]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[6]\ : label is "reset:0000001,shift:0010000,idle:0000010,load:0000100,store:0100000,inc:0001000,sum:1000000";
  attribute KEEP of \FSM_onehot_present_state_reg[6]\ : label is "yes";
  attribute SOFT_HLUTNM of \i[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i[3]_i_2\ : label is "soft_lutpair0";
begin
\A_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(0),
      O => A_IBUF(0)
    );
\A_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(1),
      O => A_IBUF(1)
    );
\A_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(2),
      O => A_IBUF(2)
    );
\A_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(3),
      O => A_IBUF(3)
    );
\A_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(4),
      O => A_IBUF(4)
    );
\A_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(5),
      O => A_IBUF(5)
    );
\A_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(6),
      O => A_IBUF(6)
    );
\A_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(7),
      O => A_IBUF(7)
    );
\B_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(0),
      O => B_IBUF(0)
    );
\B_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(1),
      O => B_IBUF(1)
    );
\B_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(2),
      O => B_IBUF(2)
    );
\B_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(3),
      O => B_IBUF(3)
    );
\B_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(4),
      O => B_IBUF(4)
    );
\B_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(5),
      O => B_IBUF(5)
    );
\B_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(6),
      O => B_IBUF(6)
    );
\B_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(7),
      O => B_IBUF(7)
    );
En_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => En_OBUF,
      O => En
    );
En_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => En_Shift,
      I1 => En_Store,
      I2 => En_Inc,
      I3 => En_ref_Sum,
      I4 => En_ref_Load,
      O => En_i_1_n_0
    );
En_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => En_i_1_n_0,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => En_Store,
      Q => En_OBUF
    );
\FSM_onehot_present_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \FSM_onehot_present_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_present_state_reg_n_0_[1]\,
      I2 => Start_IBUF,
      I3 => En_Store,
      O => \FSM_onehot_present_state[1]_i_1_n_0\
    );
\FSM_onehot_present_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_present_state_reg_n_0_[1]\,
      I1 => Start_IBUF,
      O => \FSM_onehot_present_state[2]_i_1_n_0\
    );
\FSM_onehot_present_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000EEE0E000AAA0A"
    )
        port map (
      I0 => En_ref_Load,
      I1 => \FSM_onehot_present_state[6]_i_4_n_0\,
      I2 => \FSM_onehot_present_state[6]_i_2_n_0\,
      I3 => \i_reg__0\(2),
      I4 => \FSM_onehot_present_state[6]_i_3_n_0\,
      I5 => En_Shift,
      O => \FSM_onehot_present_state[3]_i_1_n_0\
    );
\FSM_onehot_present_state[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => En_Inc,
      I1 => En_ref_Sum,
      O => \FSM_onehot_present_state[4]_i_1_n_0\
    );
\FSM_onehot_present_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => En_Shift,
      I1 => \i_reg__0\(1),
      I2 => \i_reg__0\(3),
      I3 => \i_reg__0\(2),
      I4 => \i_reg__0\(0),
      O => \FSM_onehot_present_state[5]_i_1_n_0\
    );
\FSM_onehot_present_state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CA808A808A808"
    )
        port map (
      I0 => En_ref_Load,
      I1 => \FSM_onehot_present_state[6]_i_2_n_0\,
      I2 => \i_reg__0\(2),
      I3 => \FSM_onehot_present_state[6]_i_3_n_0\,
      I4 => \FSM_onehot_present_state[6]_i_4_n_0\,
      I5 => En_Shift,
      O => \FSM_onehot_present_state[6]_i_1_n_0\
    );
\FSM_onehot_present_state[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => sauv_B(3),
      I1 => sauv_B(2),
      I2 => \i_reg__0\(1),
      I3 => sauv_B(1),
      I4 => \i_reg__0\(0),
      I5 => sauv_B(0),
      O => \FSM_onehot_present_state[6]_i_2_n_0\
    );
\FSM_onehot_present_state[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => sauv_B(7),
      I1 => sauv_B(6),
      I2 => \i_reg__0\(1),
      I3 => sauv_B(5),
      I4 => \i_reg__0\(0),
      I5 => sauv_B(4),
      O => \FSM_onehot_present_state[6]_i_3_n_0\
    );
\FSM_onehot_present_state[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \i_reg__0\(3),
      I1 => \i_reg__0\(2),
      I2 => \i_reg__0\(0),
      I3 => \i_reg__0\(1),
      O => \FSM_onehot_present_state[6]_i_4_n_0\
    );
\FSM_onehot_present_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => '1',
      D => '0',
      PRE => Rst_IBUF,
      Q => \FSM_onehot_present_state_reg_n_0_[0]\
    );
\FSM_onehot_present_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => '1',
      CLR => Rst_IBUF,
      D => \FSM_onehot_present_state[1]_i_1_n_0\,
      Q => \FSM_onehot_present_state_reg_n_0_[1]\
    );
\FSM_onehot_present_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => '1',
      CLR => Rst_IBUF,
      D => \FSM_onehot_present_state[2]_i_1_n_0\,
      Q => En_ref_Load
    );
\FSM_onehot_present_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => '1',
      CLR => Rst_IBUF,
      D => \FSM_onehot_present_state[3]_i_1_n_0\,
      Q => En_Inc
    );
\FSM_onehot_present_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => '1',
      CLR => Rst_IBUF,
      D => \FSM_onehot_present_state[4]_i_1_n_0\,
      Q => En_Shift
    );
\FSM_onehot_present_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => '1',
      CLR => Rst_IBUF,
      D => \FSM_onehot_present_state[5]_i_1_n_0\,
      Q => En_Store
    );
\FSM_onehot_present_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => '1',
      CLR => Rst_IBUF,
      D => \FSM_onehot_present_state[6]_i_1_n_0\,
      Q => En_ref_Sum
    );
H_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => H_IBUF,
      O => H_IBUF_BUFG
    );
H_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => H,
      O => H_IBUF
    );
\Result[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => En_Shift,
      I1 => En_Store,
      I2 => En_Inc,
      I3 => En_ref_Sum,
      I4 => En_ref_Load,
      I5 => \FSM_onehot_present_state_reg_n_0_[1]\,
      O => \Result[15]_i_1_n_0\
    );
\Result_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(0),
      O => Result(0)
    );
\Result_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(10),
      O => Result(10)
    );
\Result_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(11),
      O => Result(11)
    );
\Result_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(12),
      O => Result(12)
    );
\Result_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(13),
      O => Result(13)
    );
\Result_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(14),
      O => Result(14)
    );
\Result_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(15),
      O => Result(15)
    );
\Result_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(1),
      O => Result(1)
    );
\Result_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(2),
      O => Result(2)
    );
\Result_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(3),
      O => Result(3)
    );
\Result_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(4),
      O => Result(4)
    );
\Result_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(5),
      O => Result(5)
    );
\Result_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(6),
      O => Result(6)
    );
\Result_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(7),
      O => Result(7)
    );
\Result_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(8),
      O => Result(8)
    );
\Result_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(9),
      O => Result(9)
    );
\Result_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \Result[15]_i_1_n_0\,
      CLR => Rst_IBUF,
      D => somme_reg(0),
      Q => Result_OBUF(0)
    );
\Result_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \Result[15]_i_1_n_0\,
      CLR => Rst_IBUF,
      D => somme_reg(10),
      Q => Result_OBUF(10)
    );
\Result_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \Result[15]_i_1_n_0\,
      CLR => Rst_IBUF,
      D => somme_reg(11),
      Q => Result_OBUF(11)
    );
\Result_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \Result[15]_i_1_n_0\,
      CLR => Rst_IBUF,
      D => somme_reg(12),
      Q => Result_OBUF(12)
    );
\Result_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \Result[15]_i_1_n_0\,
      CLR => Rst_IBUF,
      D => somme_reg(13),
      Q => Result_OBUF(13)
    );
\Result_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \Result[15]_i_1_n_0\,
      CLR => Rst_IBUF,
      D => somme_reg(14),
      Q => Result_OBUF(14)
    );
\Result_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \Result[15]_i_1_n_0\,
      CLR => Rst_IBUF,
      D => somme_reg(15),
      Q => Result_OBUF(15)
    );
\Result_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \Result[15]_i_1_n_0\,
      CLR => Rst_IBUF,
      D => somme_reg(1),
      Q => Result_OBUF(1)
    );
\Result_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \Result[15]_i_1_n_0\,
      CLR => Rst_IBUF,
      D => somme_reg(2),
      Q => Result_OBUF(2)
    );
\Result_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \Result[15]_i_1_n_0\,
      CLR => Rst_IBUF,
      D => somme_reg(3),
      Q => Result_OBUF(3)
    );
\Result_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \Result[15]_i_1_n_0\,
      CLR => Rst_IBUF,
      D => somme_reg(4),
      Q => Result_OBUF(4)
    );
\Result_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \Result[15]_i_1_n_0\,
      CLR => Rst_IBUF,
      D => somme_reg(5),
      Q => Result_OBUF(5)
    );
\Result_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \Result[15]_i_1_n_0\,
      CLR => Rst_IBUF,
      D => somme_reg(6),
      Q => Result_OBUF(6)
    );
\Result_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \Result[15]_i_1_n_0\,
      CLR => Rst_IBUF,
      D => somme_reg(7),
      Q => Result_OBUF(7)
    );
\Result_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \Result[15]_i_1_n_0\,
      CLR => Rst_IBUF,
      D => somme_reg(8),
      Q => Result_OBUF(8)
    );
\Result_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \Result[15]_i_1_n_0\,
      CLR => Rst_IBUF,
      D => somme_reg(9),
      Q => Result_OBUF(9)
    );
Rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Rst,
      O => Rst_IBUF
    );
Start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Start,
      O => Start_IBUF
    );
\decalage_A[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => En_ref_Load,
      I1 => A_IBUF(0),
      O => \decalage_A[0]_i_1_n_0\
    );
\decalage_A[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decalage_A(9),
      I1 => En_ref_Load,
      O => \decalage_A[10]_i_1_n_0\
    );
\decalage_A[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decalage_A(10),
      I1 => En_ref_Load,
      O => \decalage_A[11]_i_1_n_0\
    );
\decalage_A[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decalage_A(11),
      I1 => En_ref_Load,
      O => \decalage_A[12]_i_1_n_0\
    );
\decalage_A[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decalage_A(12),
      I1 => En_ref_Load,
      O => \decalage_A[13]_i_1_n_0\
    );
\decalage_A[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decalage_A(13),
      I1 => En_ref_Load,
      O => \decalage_A[14]_i_1_n_0\
    );
\decalage_A[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => En_Inc,
      I1 => En_Shift,
      I2 => En_ref_Sum,
      I3 => En_ref_Load,
      O => \decalage_A[15]_i_1_n_0\
    );
\decalage_A[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decalage_A(14),
      I1 => En_ref_Load,
      O => \decalage_A[15]_i_2_n_0\
    );
\decalage_A[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_IBUF(1),
      I1 => En_ref_Load,
      I2 => decalage_A(0),
      O => \decalage_A[1]_i_1_n_0\
    );
\decalage_A[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_IBUF(2),
      I1 => En_ref_Load,
      I2 => decalage_A(1),
      O => \decalage_A[2]_i_1_n_0\
    );
\decalage_A[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_IBUF(3),
      I1 => En_ref_Load,
      I2 => decalage_A(2),
      O => \decalage_A[3]_i_1_n_0\
    );
\decalage_A[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_IBUF(4),
      I1 => En_ref_Load,
      I2 => decalage_A(3),
      O => \decalage_A[4]_i_1_n_0\
    );
\decalage_A[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_IBUF(5),
      I1 => En_ref_Load,
      I2 => decalage_A(4),
      O => \decalage_A[5]_i_1_n_0\
    );
\decalage_A[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_IBUF(6),
      I1 => En_ref_Load,
      I2 => decalage_A(5),
      O => \decalage_A[6]_i_1_n_0\
    );
\decalage_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_IBUF(7),
      I1 => En_ref_Load,
      I2 => decalage_A(6),
      O => \decalage_A[7]_i_1_n_0\
    );
\decalage_A[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decalage_A(7),
      I1 => En_ref_Load,
      O => \decalage_A[8]_i_1_n_0\
    );
\decalage_A[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decalage_A(8),
      I1 => En_ref_Load,
      O => \decalage_A[9]_i_1_n_0\
    );
\decalage_A_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \decalage_A[15]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \decalage_A[0]_i_1_n_0\,
      Q => decalage_A(0)
    );
\decalage_A_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \decalage_A[15]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \decalage_A[10]_i_1_n_0\,
      Q => decalage_A(10)
    );
\decalage_A_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \decalage_A[15]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \decalage_A[11]_i_1_n_0\,
      Q => decalage_A(11)
    );
\decalage_A_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \decalage_A[15]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \decalage_A[12]_i_1_n_0\,
      Q => decalage_A(12)
    );
\decalage_A_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \decalage_A[15]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \decalage_A[13]_i_1_n_0\,
      Q => decalage_A(13)
    );
\decalage_A_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \decalage_A[15]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \decalage_A[14]_i_1_n_0\,
      Q => decalage_A(14)
    );
\decalage_A_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \decalage_A[15]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \decalage_A[15]_i_2_n_0\,
      Q => decalage_A(15)
    );
\decalage_A_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \decalage_A[15]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \decalage_A[1]_i_1_n_0\,
      Q => decalage_A(1)
    );
\decalage_A_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \decalage_A[15]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \decalage_A[2]_i_1_n_0\,
      Q => decalage_A(2)
    );
\decalage_A_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \decalage_A[15]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \decalage_A[3]_i_1_n_0\,
      Q => decalage_A(3)
    );
\decalage_A_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \decalage_A[15]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \decalage_A[4]_i_1_n_0\,
      Q => decalage_A(4)
    );
\decalage_A_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \decalage_A[15]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \decalage_A[5]_i_1_n_0\,
      Q => decalage_A(5)
    );
\decalage_A_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \decalage_A[15]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \decalage_A[6]_i_1_n_0\,
      Q => decalage_A(6)
    );
\decalage_A_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \decalage_A[15]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \decalage_A[7]_i_1_n_0\,
      Q => decalage_A(7)
    );
\decalage_A_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \decalage_A[15]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \decalage_A[8]_i_1_n_0\,
      Q => decalage_A(8)
    );
\decalage_A_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \decalage_A[15]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \decalage_A[9]_i_1_n_0\,
      Q => decalage_A(9)
    );
\i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg__0\(0),
      O => p_0_in(0)
    );
\i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i_reg__0\(0),
      I1 => \i_reg__0\(1),
      O => p_0_in(1)
    );
\i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \i_reg__0\(0),
      I1 => \i_reg__0\(1),
      I2 => \i_reg__0\(2),
      O => p_0_in(2)
    );
\i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => En_Inc,
      I1 => En_ref_Sum,
      I2 => En_ref_Load,
      O => \i[3]_i_1_n_0\
    );
\i[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \i_reg__0\(1),
      I1 => \i_reg__0\(0),
      I2 => \i_reg__0\(2),
      I3 => \i_reg__0\(3),
      O => p_0_in(3)
    );
\i_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \i[3]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => \i_reg__0\(0)
    );
\i_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \i[3]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \i_reg__0\(1)
    );
\i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \i[3]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => \i_reg__0\(2)
    );
\i_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \i[3]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => \i_reg__0\(3)
    );
\sauv_B[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_present_state_reg_n_0_[1]\,
      I1 => Rst_IBUF,
      O => \sauv_B[7]_i_1_n_0\
    );
\sauv_B_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => En_ref_Load,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => B_IBUF(0),
      Q => sauv_B(0)
    );
\sauv_B_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => En_ref_Load,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => B_IBUF(1),
      Q => sauv_B(1)
    );
\sauv_B_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => En_ref_Load,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => B_IBUF(2),
      Q => sauv_B(2)
    );
\sauv_B_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => En_ref_Load,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => B_IBUF(3),
      Q => sauv_B(3)
    );
\sauv_B_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => En_ref_Load,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => B_IBUF(4),
      Q => sauv_B(4)
    );
\sauv_B_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => En_ref_Load,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => B_IBUF(5),
      Q => sauv_B(5)
    );
\sauv_B_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => En_ref_Load,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => B_IBUF(6),
      Q => sauv_B(6)
    );
\sauv_B_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => En_ref_Load,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => B_IBUF(7),
      Q => sauv_B(7)
    );
\somme[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => En_Inc,
      I1 => En_ref_Sum,
      I2 => En_ref_Load,
      O => \somme[0]_i_1_n_0\
    );
\somme[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decalage_A(3),
      I1 => somme_reg(3),
      O => \somme[0]_i_3_n_0\
    );
\somme[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decalage_A(2),
      I1 => somme_reg(2),
      O => \somme[0]_i_4_n_0\
    );
\somme[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decalage_A(1),
      I1 => somme_reg(1),
      O => \somme[0]_i_5_n_0\
    );
\somme[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decalage_A(0),
      I1 => somme_reg(0),
      O => \somme[0]_i_6_n_0\
    );
\somme[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decalage_A(15),
      I1 => somme_reg(15),
      O => \somme[12]_i_2_n_0\
    );
\somme[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decalage_A(14),
      I1 => somme_reg(14),
      O => \somme[12]_i_3_n_0\
    );
\somme[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decalage_A(13),
      I1 => somme_reg(13),
      O => \somme[12]_i_4_n_0\
    );
\somme[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decalage_A(12),
      I1 => somme_reg(12),
      O => \somme[12]_i_5_n_0\
    );
\somme[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decalage_A(7),
      I1 => somme_reg(7),
      O => \somme[4]_i_2_n_0\
    );
\somme[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decalage_A(6),
      I1 => somme_reg(6),
      O => \somme[4]_i_3_n_0\
    );
\somme[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decalage_A(5),
      I1 => somme_reg(5),
      O => \somme[4]_i_4_n_0\
    );
\somme[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decalage_A(4),
      I1 => somme_reg(4),
      O => \somme[4]_i_5_n_0\
    );
\somme[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decalage_A(11),
      I1 => somme_reg(11),
      O => \somme[8]_i_2_n_0\
    );
\somme[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decalage_A(10),
      I1 => somme_reg(10),
      O => \somme[8]_i_3_n_0\
    );
\somme[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decalage_A(9),
      I1 => somme_reg(9),
      O => \somme[8]_i_4_n_0\
    );
\somme[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decalage_A(8),
      I1 => somme_reg(8),
      O => \somme[8]_i_5_n_0\
    );
\somme_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \somme[0]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \somme_reg[0]_i_2_n_7\,
      Q => somme_reg(0)
    );
\somme_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \somme_reg[0]_i_2_n_0\,
      CO(2) => \somme_reg[0]_i_2_n_1\,
      CO(1) => \somme_reg[0]_i_2_n_2\,
      CO(0) => \somme_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => decalage_A(3 downto 0),
      O(3) => \somme_reg[0]_i_2_n_4\,
      O(2) => \somme_reg[0]_i_2_n_5\,
      O(1) => \somme_reg[0]_i_2_n_6\,
      O(0) => \somme_reg[0]_i_2_n_7\,
      S(3) => \somme[0]_i_3_n_0\,
      S(2) => \somme[0]_i_4_n_0\,
      S(1) => \somme[0]_i_5_n_0\,
      S(0) => \somme[0]_i_6_n_0\
    );
\somme_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \somme[0]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \somme_reg[8]_i_1_n_5\,
      Q => somme_reg(10)
    );
\somme_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \somme[0]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \somme_reg[8]_i_1_n_4\,
      Q => somme_reg(11)
    );
\somme_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \somme[0]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \somme_reg[12]_i_1_n_7\,
      Q => somme_reg(12)
    );
\somme_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \somme_reg[8]_i_1_n_0\,
      CO(3) => \NLW_somme_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \somme_reg[12]_i_1_n_1\,
      CO(1) => \somme_reg[12]_i_1_n_2\,
      CO(0) => \somme_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => decalage_A(14 downto 12),
      O(3) => \somme_reg[12]_i_1_n_4\,
      O(2) => \somme_reg[12]_i_1_n_5\,
      O(1) => \somme_reg[12]_i_1_n_6\,
      O(0) => \somme_reg[12]_i_1_n_7\,
      S(3) => \somme[12]_i_2_n_0\,
      S(2) => \somme[12]_i_3_n_0\,
      S(1) => \somme[12]_i_4_n_0\,
      S(0) => \somme[12]_i_5_n_0\
    );
\somme_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \somme[0]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \somme_reg[12]_i_1_n_6\,
      Q => somme_reg(13)
    );
\somme_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \somme[0]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \somme_reg[12]_i_1_n_5\,
      Q => somme_reg(14)
    );
\somme_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \somme[0]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \somme_reg[12]_i_1_n_4\,
      Q => somme_reg(15)
    );
\somme_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \somme[0]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \somme_reg[0]_i_2_n_6\,
      Q => somme_reg(1)
    );
\somme_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \somme[0]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \somme_reg[0]_i_2_n_5\,
      Q => somme_reg(2)
    );
\somme_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \somme[0]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \somme_reg[0]_i_2_n_4\,
      Q => somme_reg(3)
    );
\somme_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \somme[0]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \somme_reg[4]_i_1_n_7\,
      Q => somme_reg(4)
    );
\somme_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \somme_reg[0]_i_2_n_0\,
      CO(3) => \somme_reg[4]_i_1_n_0\,
      CO(2) => \somme_reg[4]_i_1_n_1\,
      CO(1) => \somme_reg[4]_i_1_n_2\,
      CO(0) => \somme_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => decalage_A(7 downto 4),
      O(3) => \somme_reg[4]_i_1_n_4\,
      O(2) => \somme_reg[4]_i_1_n_5\,
      O(1) => \somme_reg[4]_i_1_n_6\,
      O(0) => \somme_reg[4]_i_1_n_7\,
      S(3) => \somme[4]_i_2_n_0\,
      S(2) => \somme[4]_i_3_n_0\,
      S(1) => \somme[4]_i_4_n_0\,
      S(0) => \somme[4]_i_5_n_0\
    );
\somme_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \somme[0]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \somme_reg[4]_i_1_n_6\,
      Q => somme_reg(5)
    );
\somme_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \somme[0]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \somme_reg[4]_i_1_n_5\,
      Q => somme_reg(6)
    );
\somme_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \somme[0]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \somme_reg[4]_i_1_n_4\,
      Q => somme_reg(7)
    );
\somme_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \somme[0]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \somme_reg[8]_i_1_n_7\,
      Q => somme_reg(8)
    );
\somme_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \somme_reg[4]_i_1_n_0\,
      CO(3) => \somme_reg[8]_i_1_n_0\,
      CO(2) => \somme_reg[8]_i_1_n_1\,
      CO(1) => \somme_reg[8]_i_1_n_2\,
      CO(0) => \somme_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => decalage_A(11 downto 8),
      O(3) => \somme_reg[8]_i_1_n_4\,
      O(2) => \somme_reg[8]_i_1_n_5\,
      O(1) => \somme_reg[8]_i_1_n_6\,
      O(0) => \somme_reg[8]_i_1_n_7\,
      S(3) => \somme[8]_i_2_n_0\,
      S(2) => \somme[8]_i_3_n_0\,
      S(1) => \somme[8]_i_4_n_0\,
      S(0) => \somme[8]_i_5_n_0\
    );
\somme_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => H_IBUF_BUFG,
      CE => \somme[0]_i_1_n_0\,
      CLR => \sauv_B[7]_i_1_n_0\,
      D => \somme_reg[8]_i_1_n_6\,
      Q => somme_reg(9)
    );
end STRUCTURE;
