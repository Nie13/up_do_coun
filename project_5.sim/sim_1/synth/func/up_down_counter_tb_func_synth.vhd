-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Mon Oct 16 19:01:13 2017
-- Host        : l-THINK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/l/Desktop/6463ADVHDes/code/project_5/project_5.sim/sim_1/synth/func/up_down_counter_tb_func_synth.vhd
-- Design      : up_down_count
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity up_down_count is
  port (
    counter : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    up : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of up_down_count : entity is true;
end up_down_count;

architecture STRUCTURE of up_down_count is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal counter_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \i_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \i_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \i_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal up_IBUF : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_cnt[2]_i_1\ : label is "soft_lutpair0";
begin
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\counter_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_OBUF(0),
      O => counter(0)
    );
\counter_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_OBUF(1),
      O => counter(1)
    );
\counter_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_OBUF(2),
      O => counter(2)
    );
\i_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_OBUF(0),
      O => \i_cnt[0]_i_1_n_0\
    );
\i_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => counter_OBUF(0),
      I1 => counter_OBUF(1),
      I2 => up_IBUF,
      O => \i_cnt[1]_i_1_n_0\
    );
\i_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => counter_OBUF(0),
      I1 => counter_OBUF(1),
      I2 => counter_OBUF(2),
      I3 => up_IBUF,
      O => \i_cnt[2]_i_1_n_0\
    );
\i_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \i_cnt[0]_i_1_n_0\,
      Q => counter_OBUF(0)
    );
\i_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \i_cnt[1]_i_1_n_0\,
      Q => counter_OBUF(1)
    );
\i_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \i_cnt[2]_i_1_n_0\,
      Q => counter_OBUF(2)
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
up_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => up,
      O => up_IBUF
    );
end STRUCTURE;
