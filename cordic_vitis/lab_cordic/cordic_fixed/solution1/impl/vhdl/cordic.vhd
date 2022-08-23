-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cordic is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    theta_V : IN STD_LOGIC_VECTOR (9 downto 0);
    s_V : OUT STD_LOGIC_VECTOR (9 downto 0);
    s_V_ap_vld : OUT STD_LOGIC;
    c_V : OUT STD_LOGIC_VECTOR (9 downto 0);
    c_V_ap_vld : OUT STD_LOGIC );
end;


architecture behav of cordic is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "cordic,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.777200,HLS_SYN_LAT=18,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=55,HLS_SYN_LUT=280,HLS_VERSION=2020_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv10_136 : STD_LOGIC_VECTOR (9 downto 0) := "0100110110";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal cordic_phase_V_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal cordic_phase_V_ce0 : STD_LOGIC;
    signal cordic_phase_V_q0 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_Val2_4_reg_89 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_Val2_2_reg_99 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_Val2_s_reg_112 : STD_LOGIC_VECTOR (9 downto 0);
    signal ush_reg_125 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln17_fu_137_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln17_reg_247 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal j_fu_143_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal j_reg_251 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal current_sin_V_2_fu_218_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal current_cos_V_2_fu_226_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln1496_fu_234_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_phi_mux_ush_phi_fu_129_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln30_fu_149_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal zext_ln17_fu_154_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal r_V_1_fu_164_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal r_V_fu_158_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln1265_fu_190_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_1_fu_170_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal current_sin_V_1_fu_206_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal current_sin_V_fu_184_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal current_cos_V_1_fu_200_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal current_cos_V_fu_178_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln703_fu_212_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal sub_ln703_fu_194_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component cordic_cordic_phabkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (8 downto 0) );
    end component;



begin
    cordic_phase_V_U : component cordic_cordic_phabkb
    generic map (
        DataWidth => 9,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => cordic_phase_V_address0,
        ce0 => cordic_phase_V_ce0,
        q0 => cordic_phase_V_q0);





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


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    p_Val2_2_reg_99_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln17_reg_247 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                p_Val2_2_reg_99 <= current_sin_V_2_fu_218_p3;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                p_Val2_2_reg_99 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    p_Val2_4_reg_89_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln17_reg_247 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                p_Val2_4_reg_89 <= select_ln1496_fu_234_p3;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                p_Val2_4_reg_89 <= theta_V;
            end if; 
        end if;
    end process;

    p_Val2_s_reg_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln17_reg_247 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                p_Val2_s_reg_112 <= current_cos_V_2_fu_226_p3;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                p_Val2_s_reg_112 <= ap_const_lv10_136;
            end if; 
        end if;
    end process;

    ush_reg_125_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln17_reg_247 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                ush_reg_125 <= j_reg_251;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                ush_reg_125 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln17_reg_247 <= icmp_ln17_fu_137_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                j_reg_251 <= j_fu_143_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln17_fu_137_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln17_fu_137_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln17_fu_137_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln703_fu_212_p2 <= std_logic_vector(unsigned(zext_ln1265_fu_190_p1) + unsigned(p_Val2_4_reg_89));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln17_fu_137_p2)
    begin
        if ((icmp_ln17_fu_137_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_ush_phi_fu_129_p4_assign_proc : process(ush_reg_125, icmp_ln17_reg_247, ap_CS_fsm_pp0_stage0, j_reg_251, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln17_reg_247 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_phi_mux_ush_phi_fu_129_p4 <= j_reg_251;
        else 
            ap_phi_mux_ush_phi_fu_129_p4 <= ush_reg_125;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    c_V <= p_Val2_s_reg_112;

    c_V_ap_vld_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            c_V_ap_vld <= ap_const_logic_1;
        else 
            c_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    cordic_phase_V_address0 <= zext_ln30_fu_149_p1(6 - 1 downto 0);

    cordic_phase_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            cordic_phase_V_ce0 <= ap_const_logic_1;
        else 
            cordic_phase_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    current_cos_V_1_fu_200_p2 <= std_logic_vector(unsigned(r_V_1_fu_164_p2) + unsigned(p_Val2_s_reg_112));
    current_cos_V_2_fu_226_p3 <= 
        current_cos_V_1_fu_200_p2 when (tmp_1_fu_170_p3(0) = '1') else 
        current_cos_V_fu_178_p2;
    current_cos_V_fu_178_p2 <= std_logic_vector(unsigned(p_Val2_s_reg_112) - unsigned(r_V_1_fu_164_p2));
    current_sin_V_1_fu_206_p2 <= std_logic_vector(unsigned(p_Val2_2_reg_99) - unsigned(r_V_fu_158_p2));
    current_sin_V_2_fu_218_p3 <= 
        current_sin_V_1_fu_206_p2 when (tmp_1_fu_170_p3(0) = '1') else 
        current_sin_V_fu_184_p2;
    current_sin_V_fu_184_p2 <= std_logic_vector(unsigned(r_V_fu_158_p2) + unsigned(p_Val2_2_reg_99));
    icmp_ln17_fu_137_p2 <= "1" when (ap_phi_mux_ush_phi_fu_129_p4 = ap_const_lv5_10) else "0";
    j_fu_143_p2 <= std_logic_vector(unsigned(ap_phi_mux_ush_phi_fu_129_p4) + unsigned(ap_const_lv5_1));
    r_V_1_fu_164_p2 <= std_logic_vector(shift_right(signed(p_Val2_2_reg_99),to_integer(unsigned('0' & zext_ln17_fu_154_p1(10-1 downto 0)))));
    r_V_fu_158_p2 <= std_logic_vector(shift_right(signed(p_Val2_s_reg_112),to_integer(unsigned('0' & zext_ln17_fu_154_p1(10-1 downto 0)))));
    s_V <= p_Val2_2_reg_99;

    s_V_ap_vld_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            s_V_ap_vld <= ap_const_logic_1;
        else 
            s_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    select_ln1496_fu_234_p3 <= 
        add_ln703_fu_212_p2 when (tmp_1_fu_170_p3(0) = '1') else 
        sub_ln703_fu_194_p2;
    sub_ln703_fu_194_p2 <= std_logic_vector(unsigned(p_Val2_4_reg_89) - unsigned(zext_ln1265_fu_190_p1));
    tmp_1_fu_170_p3 <= p_Val2_4_reg_89(9 downto 9);
    zext_ln1265_fu_190_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(cordic_phase_V_q0),10));
    zext_ln17_fu_154_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ush_reg_125),10));
    zext_ln30_fu_149_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_ush_phi_fu_129_p4),64));
end behav;