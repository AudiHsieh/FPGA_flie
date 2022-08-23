-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity histogram_histogram_map is
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
end;


architecture behav of histogram_histogram_map is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal old_reg_103 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_start : STD_LOGIC;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_done : STD_LOGIC;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_idle : STD_LOGIC;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_ready : STD_LOGIC;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_hist_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_hist_ce0 : STD_LOGIC;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_hist_we0 : STD_LOGIC;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_hist_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_start : STD_LOGIC;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_done : STD_LOGIC;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_idle : STD_LOGIC;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_ready : STD_LOGIC;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_inputA_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_inputA_ce0 : STD_LOGIC;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_ce0 : STD_LOGIC;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_we0 : STD_LOGIC;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_ce1 : STD_LOGIC;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_acc_out : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_acc_out_ap_vld : STD_LOGIC;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_old_1_out : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_old_1_out_ap_vld : STD_LOGIC;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_start_reg : STD_LOGIC := '0';
    signal ap_block_state1_ignore_call3 : BOOLEAN;
    signal grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal old_1_loc_fu_22 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln21_fu_81_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_block_state1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component histogram_histogram_map_Pipeline_VITIS_LOOP_4_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        hist_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        hist_ce0 : OUT STD_LOGIC;
        hist_we0 : OUT STD_LOGIC;
        hist_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component histogram_histogram_map_Pipeline_VITIS_LOOP_10_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        old : IN STD_LOGIC_VECTOR (31 downto 0);
        inputA_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
        inputA_ce0 : OUT STD_LOGIC;
        inputA_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        hist_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        hist_ce0 : OUT STD_LOGIC;
        hist_we0 : OUT STD_LOGIC;
        hist_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        hist_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
        hist_ce1 : OUT STD_LOGIC;
        hist_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
        acc_out : OUT STD_LOGIC_VECTOR (31 downto 0);
        acc_out_ap_vld : OUT STD_LOGIC;
        old_1_out : OUT STD_LOGIC_VECTOR (9 downto 0);
        old_1_out_ap_vld : OUT STD_LOGIC );
    end component;



begin
    grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57 : component histogram_histogram_map_Pipeline_VITIS_LOOP_4_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_start,
        ap_done => grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_done,
        ap_idle => grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_idle,
        ap_ready => grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_ready,
        hist_address0 => grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_hist_address0,
        hist_ce0 => grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_hist_ce0,
        hist_we0 => grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_hist_we0,
        hist_d0 => grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_hist_d0);

    grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63 : component histogram_histogram_map_Pipeline_VITIS_LOOP_10_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_start,
        ap_done => grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_done,
        ap_idle => grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_idle,
        ap_ready => grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_ready,
        old => old_reg_103,
        inputA_address0 => grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_inputA_address0,
        inputA_ce0 => grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_inputA_ce0,
        inputA_q0 => inputA_q0,
        hist_address0 => grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_address0,
        hist_ce0 => grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_ce0,
        hist_we0 => grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_we0,
        hist_d0 => grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_d0,
        hist_address1 => grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_address1,
        hist_ce1 => grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_ce1,
        hist_q1 => hist_q1,
        acc_out => grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_acc_out,
        acc_out_ap_vld => grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_acc_out_ap_vld,
        old_1_out => grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_old_1_out,
        old_1_out_ap_vld => grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_old_1_out_ap_vld);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_ready = ap_const_logic_1)) then 
                    grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_start_reg <= ap_const_logic_0;
            else
                if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_ready = ap_const_logic_1)) then 
                    grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_old_1_out_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                old_1_loc_fu_22 <= grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_old_1_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                old_reg_103 <= inputA_q0;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_done, grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_done, ap_CS_fsm_state4)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg)
    begin
        if (((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_done)
    begin
        if ((grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state3_blk <= ap_const_logic_0;

    ap_ST_fsm_state4_blk_assign_proc : process(grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_done)
    begin
        if ((grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state4_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state4_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state5_blk <= ap_const_logic_0;

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;


    ap_block_state1_ignore_call3_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1_ignore_call3 <= ((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_start <= grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_ap_start_reg;
    grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_start <= grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_ap_start_reg;

    hist_address0_assign_proc : process(ap_CS_fsm_state2, grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_hist_address0, grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_address0, ap_CS_fsm_state4, zext_ln21_fu_81_p1, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            hist_address0 <= zext_ln21_fu_81_p1(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            hist_address0 <= grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            hist_address0 <= grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_hist_address0;
        else 
            hist_address0 <= "XXXXXXXXXX";
        end if; 
    end process;

    hist_address1 <= grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_address1;

    hist_ce0_assign_proc : process(ap_CS_fsm_state2, grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_hist_ce0, grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_ce0, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            hist_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            hist_ce0 <= grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            hist_ce0 <= grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_hist_ce0;
        else 
            hist_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    hist_ce1_assign_proc : process(grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_ce1, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            hist_ce1 <= grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_ce1;
        else 
            hist_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    hist_d0_assign_proc : process(ap_CS_fsm_state2, grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_hist_d0, grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_d0, grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_acc_out, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            hist_d0 <= grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_acc_out;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            hist_d0 <= grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_d0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            hist_d0 <= grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_hist_d0;
        else 
            hist_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    hist_we0_assign_proc : process(ap_CS_fsm_state2, grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_hist_we0, grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_we0, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            hist_we0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            hist_we0 <= grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_hist_we0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            hist_we0 <= grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57_hist_we0;
        else 
            hist_we0 <= ap_const_logic_0;
        end if; 
    end process;


    inputA_address0_assign_proc : process(ap_CS_fsm_state1, grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_inputA_address0, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            inputA_address0 <= ap_const_lv64_0(9 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            inputA_address0 <= grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_inputA_address0;
        else 
            inputA_address0 <= "XXXXXXXXX";
        end if; 
    end process;


    inputA_ce0_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_inputA_ce0, ap_CS_fsm_state4)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            inputA_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            inputA_ce0 <= grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63_inputA_ce0;
        else 
            inputA_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln21_fu_81_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(old_1_loc_fu_22),64));
end behav;
