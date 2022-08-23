-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity histogram is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    inputA_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    inputA_ce0 : OUT STD_LOGIC;
    inputA_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    inputA_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    inputA_we0 : OUT STD_LOGIC;
    inputA_address1 : OUT STD_LOGIC_VECTOR (8 downto 0);
    inputA_ce1 : OUT STD_LOGIC;
    inputA_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    inputA_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    inputA_we1 : OUT STD_LOGIC;
    inputB_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    inputB_ce0 : OUT STD_LOGIC;
    inputB_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    inputB_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    inputB_we0 : OUT STD_LOGIC;
    inputB_address1 : OUT STD_LOGIC_VECTOR (8 downto 0);
    inputB_ce1 : OUT STD_LOGIC;
    inputB_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    inputB_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    inputB_we1 : OUT STD_LOGIC;
    hist_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    hist_ce0 : OUT STD_LOGIC;
    hist_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    hist_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    hist_we0 : OUT STD_LOGIC;
    hist_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    hist_ce1 : OUT STD_LOGIC;
    hist_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    hist_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    hist_we1 : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC );
end;


architecture behav of histogram is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "histogram_histogram,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=5.806000,HLS_SYN_LAT=1066,HLS_SYN_TPT=1067,HLS_SYN_MEM=8,HLS_SYN_DSP=0,HLS_SYN_FF=425,HLS_SYN_LUT=903,HLS_VERSION=2021_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal hist1_i_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal hist1_i_q1 : STD_LOGIC_VECTOR (31 downto 0);
    signal hist1_t_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal hist1_t_q1 : STD_LOGIC_VECTOR (31 downto 0);
    signal hist2_i_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal hist2_i_q1 : STD_LOGIC_VECTOR (31 downto 0);
    signal hist2_t_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal hist2_t_q1 : STD_LOGIC_VECTOR (31 downto 0);
    signal histogram_map3_U0_ap_start : STD_LOGIC;
    signal histogram_map3_U0_ap_done : STD_LOGIC;
    signal histogram_map3_U0_ap_continue : STD_LOGIC;
    signal histogram_map3_U0_ap_idle : STD_LOGIC;
    signal histogram_map3_U0_ap_ready : STD_LOGIC;
    signal histogram_map3_U0_inputA_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal histogram_map3_U0_inputA_ce0 : STD_LOGIC;
    signal histogram_map3_U0_hist_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal histogram_map3_U0_hist_ce0 : STD_LOGIC;
    signal histogram_map3_U0_hist_we0 : STD_LOGIC;
    signal histogram_map3_U0_hist_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal histogram_map3_U0_hist_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal histogram_map3_U0_hist_ce1 : STD_LOGIC;
    signal histogram_map_U0_ap_start : STD_LOGIC;
    signal histogram_map_U0_ap_done : STD_LOGIC;
    signal histogram_map_U0_ap_continue : STD_LOGIC;
    signal histogram_map_U0_ap_idle : STD_LOGIC;
    signal histogram_map_U0_ap_ready : STD_LOGIC;
    signal histogram_map_U0_inputA_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal histogram_map_U0_inputA_ce0 : STD_LOGIC;
    signal histogram_map_U0_hist_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal histogram_map_U0_hist_ce0 : STD_LOGIC;
    signal histogram_map_U0_hist_we0 : STD_LOGIC;
    signal histogram_map_U0_hist_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal histogram_map_U0_hist_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal histogram_map_U0_hist_ce1 : STD_LOGIC;
    signal histogram_reduce_U0_ap_start : STD_LOGIC;
    signal histogram_reduce_U0_ap_done : STD_LOGIC;
    signal histogram_reduce_U0_ap_continue : STD_LOGIC;
    signal histogram_reduce_U0_ap_idle : STD_LOGIC;
    signal histogram_reduce_U0_ap_ready : STD_LOGIC;
    signal histogram_reduce_U0_hist1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal histogram_reduce_U0_hist1_ce0 : STD_LOGIC;
    signal histogram_reduce_U0_hist2_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal histogram_reduce_U0_hist2_ce0 : STD_LOGIC;
    signal histogram_reduce_U0_hist_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal histogram_reduce_U0_hist_ce0 : STD_LOGIC;
    signal histogram_reduce_U0_hist_we0 : STD_LOGIC;
    signal histogram_reduce_U0_hist_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal hist1_i_full_n : STD_LOGIC;
    signal hist1_t_empty_n : STD_LOGIC;
    signal hist2_i_full_n : STD_LOGIC;
    signal hist2_t_empty_n : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal ap_sync_reg_histogram_map3_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_histogram_map3_U0_ap_ready : STD_LOGIC;
    signal ap_sync_reg_histogram_map_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_histogram_map_U0_ap_ready : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component histogram_histogram_map3 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        inputA_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
        inputA_ce0 : OUT STD_LOGIC;
        inputA_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        hist_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        hist_ce0 : OUT STD_LOGIC;
        hist_we0 : OUT STD_LOGIC;
        hist_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        hist_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
        hist_ce1 : OUT STD_LOGIC;
        hist_q1 : IN STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component histogram_histogram_map IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        inputA_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
        inputA_ce0 : OUT STD_LOGIC;
        inputA_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        hist_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        hist_ce0 : OUT STD_LOGIC;
        hist_we0 : OUT STD_LOGIC;
        hist_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        hist_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
        hist_ce1 : OUT STD_LOGIC;
        hist_q1 : IN STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component histogram_histogram_reduce IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        hist1_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        hist1_ce0 : OUT STD_LOGIC;
        hist1_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        hist2_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        hist2_ce0 : OUT STD_LOGIC;
        hist2_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        hist_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        hist_ce0 : OUT STD_LOGIC;
        hist_we0 : OUT STD_LOGIC;
        hist_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component histogram_hist1 IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        i_address0 : IN STD_LOGIC_VECTOR (9 downto 0);
        i_ce0 : IN STD_LOGIC;
        i_we0 : IN STD_LOGIC;
        i_d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        i_q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        i_address1 : IN STD_LOGIC_VECTOR (9 downto 0);
        i_ce1 : IN STD_LOGIC;
        i_q1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        t_address0 : IN STD_LOGIC_VECTOR (9 downto 0);
        t_ce0 : IN STD_LOGIC;
        t_we0 : IN STD_LOGIC;
        t_d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        t_q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        t_address1 : IN STD_LOGIC_VECTOR (9 downto 0);
        t_ce1 : IN STD_LOGIC;
        t_q1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        i_ce : IN STD_LOGIC;
        t_ce : IN STD_LOGIC;
        i_full_n : OUT STD_LOGIC;
        i_write : IN STD_LOGIC;
        t_empty_n : OUT STD_LOGIC;
        t_read : IN STD_LOGIC );
    end component;



begin
    hist1_U : component histogram_hist1
    generic map (
        DataWidth => 32,
        AddressRange => 544,
        AddressWidth => 10)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        i_address0 => histogram_map3_U0_hist_address0,
        i_ce0 => histogram_map3_U0_hist_ce0,
        i_we0 => histogram_map3_U0_hist_we0,
        i_d0 => histogram_map3_U0_hist_d0,
        i_q0 => hist1_i_q0,
        i_address1 => histogram_map3_U0_hist_address1,
        i_ce1 => histogram_map3_U0_hist_ce1,
        i_q1 => hist1_i_q1,
        t_address0 => histogram_reduce_U0_hist1_address0,
        t_ce0 => histogram_reduce_U0_hist1_ce0,
        t_we0 => ap_const_logic_0,
        t_d0 => ap_const_lv32_0,
        t_q0 => hist1_t_q0,
        t_address1 => ap_const_lv10_0,
        t_ce1 => ap_const_logic_0,
        t_q1 => hist1_t_q1,
        i_ce => ap_const_logic_1,
        t_ce => ap_const_logic_1,
        i_full_n => hist1_i_full_n,
        i_write => histogram_map3_U0_ap_done,
        t_empty_n => hist1_t_empty_n,
        t_read => histogram_reduce_U0_ap_ready);

    hist2_U : component histogram_hist1
    generic map (
        DataWidth => 32,
        AddressRange => 544,
        AddressWidth => 10)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        i_address0 => histogram_map_U0_hist_address0,
        i_ce0 => histogram_map_U0_hist_ce0,
        i_we0 => histogram_map_U0_hist_we0,
        i_d0 => histogram_map_U0_hist_d0,
        i_q0 => hist2_i_q0,
        i_address1 => histogram_map_U0_hist_address1,
        i_ce1 => histogram_map_U0_hist_ce1,
        i_q1 => hist2_i_q1,
        t_address0 => histogram_reduce_U0_hist2_address0,
        t_ce0 => histogram_reduce_U0_hist2_ce0,
        t_we0 => ap_const_logic_0,
        t_d0 => ap_const_lv32_0,
        t_q0 => hist2_t_q0,
        t_address1 => ap_const_lv10_0,
        t_ce1 => ap_const_logic_0,
        t_q1 => hist2_t_q1,
        i_ce => ap_const_logic_1,
        t_ce => ap_const_logic_1,
        i_full_n => hist2_i_full_n,
        i_write => histogram_map_U0_ap_done,
        t_empty_n => hist2_t_empty_n,
        t_read => histogram_reduce_U0_ap_ready);

    histogram_map3_U0 : component histogram_histogram_map3
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => histogram_map3_U0_ap_start,
        ap_done => histogram_map3_U0_ap_done,
        ap_continue => histogram_map3_U0_ap_continue,
        ap_idle => histogram_map3_U0_ap_idle,
        ap_ready => histogram_map3_U0_ap_ready,
        inputA_address0 => histogram_map3_U0_inputA_address0,
        inputA_ce0 => histogram_map3_U0_inputA_ce0,
        inputA_q0 => inputA_q0,
        hist_address0 => histogram_map3_U0_hist_address0,
        hist_ce0 => histogram_map3_U0_hist_ce0,
        hist_we0 => histogram_map3_U0_hist_we0,
        hist_d0 => histogram_map3_U0_hist_d0,
        hist_address1 => histogram_map3_U0_hist_address1,
        hist_ce1 => histogram_map3_U0_hist_ce1,
        hist_q1 => hist1_i_q1);

    histogram_map_U0 : component histogram_histogram_map
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => histogram_map_U0_ap_start,
        ap_done => histogram_map_U0_ap_done,
        ap_continue => histogram_map_U0_ap_continue,
        ap_idle => histogram_map_U0_ap_idle,
        ap_ready => histogram_map_U0_ap_ready,
        inputA_address0 => histogram_map_U0_inputA_address0,
        inputA_ce0 => histogram_map_U0_inputA_ce0,
        inputA_q0 => inputB_q0,
        hist_address0 => histogram_map_U0_hist_address0,
        hist_ce0 => histogram_map_U0_hist_ce0,
        hist_we0 => histogram_map_U0_hist_we0,
        hist_d0 => histogram_map_U0_hist_d0,
        hist_address1 => histogram_map_U0_hist_address1,
        hist_ce1 => histogram_map_U0_hist_ce1,
        hist_q1 => hist2_i_q1);

    histogram_reduce_U0 : component histogram_histogram_reduce
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => histogram_reduce_U0_ap_start,
        ap_done => histogram_reduce_U0_ap_done,
        ap_continue => histogram_reduce_U0_ap_continue,
        ap_idle => histogram_reduce_U0_ap_idle,
        ap_ready => histogram_reduce_U0_ap_ready,
        hist1_address0 => histogram_reduce_U0_hist1_address0,
        hist1_ce0 => histogram_reduce_U0_hist1_ce0,
        hist1_q0 => hist1_t_q0,
        hist2_address0 => histogram_reduce_U0_hist2_address0,
        hist2_ce0 => histogram_reduce_U0_hist2_ce0,
        hist2_q0 => hist2_t_q0,
        hist_address0 => histogram_reduce_U0_hist_address0,
        hist_ce0 => histogram_reduce_U0_hist_ce0,
        hist_we0 => histogram_reduce_U0_hist_we0,
        hist_d0 => histogram_reduce_U0_hist_d0);





    ap_sync_reg_histogram_map3_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_histogram_map3_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_histogram_map3_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_histogram_map3_U0_ap_ready <= ap_sync_histogram_map3_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_histogram_map_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_histogram_map_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_histogram_map_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_histogram_map_U0_ap_ready <= ap_sync_histogram_map_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;

    ap_done <= histogram_reduce_U0_ap_done;
    ap_idle <= (histogram_reduce_U0_ap_idle and histogram_map_U0_ap_idle and histogram_map3_U0_ap_idle and (hist2_t_empty_n xor ap_const_logic_1) and (hist1_t_empty_n xor ap_const_logic_1));
    ap_ready <= ap_sync_ready;
    ap_sync_histogram_map3_U0_ap_ready <= (histogram_map3_U0_ap_ready or ap_sync_reg_histogram_map3_U0_ap_ready);
    ap_sync_histogram_map_U0_ap_ready <= (histogram_map_U0_ap_ready or ap_sync_reg_histogram_map_U0_ap_ready);
    ap_sync_ready <= (ap_sync_histogram_map_U0_ap_ready and ap_sync_histogram_map3_U0_ap_ready);
    hist_address0 <= histogram_reduce_U0_hist_address0;
    hist_address1 <= ap_const_lv10_0;
    hist_ce0 <= histogram_reduce_U0_hist_ce0;
    hist_ce1 <= ap_const_logic_0;
    hist_d0 <= histogram_reduce_U0_hist_d0;
    hist_d1 <= ap_const_lv32_0;
    hist_we0 <= histogram_reduce_U0_hist_we0;
    hist_we1 <= ap_const_logic_0;
    histogram_map3_U0_ap_continue <= hist1_i_full_n;
    histogram_map3_U0_ap_start <= ((ap_sync_reg_histogram_map3_U0_ap_ready xor ap_const_logic_1) and ap_start);
    histogram_map_U0_ap_continue <= hist2_i_full_n;
    histogram_map_U0_ap_start <= ((ap_sync_reg_histogram_map_U0_ap_ready xor ap_const_logic_1) and ap_start);
    histogram_reduce_U0_ap_continue <= ap_const_logic_1;
    histogram_reduce_U0_ap_start <= (hist2_t_empty_n and hist1_t_empty_n);
    inputA_address0 <= histogram_map3_U0_inputA_address0;
    inputA_address1 <= ap_const_lv9_0;
    inputA_ce0 <= histogram_map3_U0_inputA_ce0;
    inputA_ce1 <= ap_const_logic_0;
    inputA_d0 <= ap_const_lv32_0;
    inputA_d1 <= ap_const_lv32_0;
    inputA_we0 <= ap_const_logic_0;
    inputA_we1 <= ap_const_logic_0;
    inputB_address0 <= histogram_map_U0_inputA_address0;
    inputB_address1 <= ap_const_lv9_0;
    inputB_ce0 <= histogram_map_U0_inputA_ce0;
    inputB_ce1 <= ap_const_logic_0;
    inputB_d0 <= ap_const_lv32_0;
    inputB_d1 <= ap_const_lv32_0;
    inputB_we0 <= ap_const_logic_0;
    inputB_we1 <= ap_const_logic_0;
end behav;