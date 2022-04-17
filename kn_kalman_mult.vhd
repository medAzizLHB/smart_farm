--32 bit float point multiplication block.
 LIBRARY lpm;
 USE lpm.all;

--synthesis_resources = lpm_add_sub 4 lpm_mult 1 reg 293 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_mult_altfp_mult_oon IS 
	 PORT 
	 ( 
		 clock	:	IN  STD_LOGIC;
		 dataa	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 datab	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 result	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0)
	 ); 
 END kn_kalman_mult_altfp_mult_oon;

 ARCHITECTURE RTL OF kn_kalman_mult_altfp_mult_oon IS

	 SIGNAL	 dataa_exp_all_one_ff_p1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_dataa_exp_all_one_ff_p1_w_lg_q296w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_dataa_exp_all_one_ff_p1_w_lg_q291w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 dataa_exp_not_zero_ff_p1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 dataa_man_not_zero_ff_p1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_dataa_man_not_zero_ff_p1_w_lg_w_lg_q290w295w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_dataa_man_not_zero_ff_p1_w_lg_q290w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 dataa_man_not_zero_ff_p2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 datab_exp_all_one_ff_p1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_datab_exp_all_one_ff_p1_w_lg_q294w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_datab_exp_all_one_ff_p1_w_lg_q289w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 datab_exp_not_zero_ff_p1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 datab_man_not_zero_ff_p1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_datab_man_not_zero_ff_p1_w_lg_w_lg_q288w293w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_datab_man_not_zero_ff_p1_w_lg_q288w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 datab_man_not_zero_ff_p2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 delay_exp2_bias	:	STD_LOGIC_VECTOR(9 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 delay_exp3_bias	:	STD_LOGIC_VECTOR(9 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 delay_exp_bias	:	STD_LOGIC_VECTOR(9 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 delay_man_product_msb	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 delay_man_product_msb2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_delay_man_product_msb2_w_lg_q393w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_delay_man_product_msb2_w_lg_q395w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 delay_man_product_msb_p0	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 delay_man_product_msb_p1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 delay_round	:	STD_LOGIC_VECTOR(23 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_delay_round_w485w	:	STD_LOGIC_VECTOR (21 DOWNTO 0);
	 SIGNAL  wire_delay_round_w_lg_w_lg_w_lg_w_lg_w_q_range480w481w482w483w484w	:	STD_LOGIC_VECTOR (21 DOWNTO 0);
	 SIGNAL  wire_delay_round_w_lg_w_lg_w_lg_w_lg_w_q_range470w471w472w473w474w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_delay_round_w_lg_w_lg_w_lg_w_q_range480w481w482w483w	:	STD_LOGIC_VECTOR (21 DOWNTO 0);
	 SIGNAL  wire_delay_round_w_lg_w_lg_w_lg_w_q_range470w471w472w473w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_delay_round_w_lg_w_lg_w_q_range480w481w482w	:	STD_LOGIC_VECTOR (21 DOWNTO 0);
	 SIGNAL  wire_delay_round_w_lg_w_lg_w_q_range470w471w472w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_delay_round_w_lg_w_q_range480w481w	:	STD_LOGIC_VECTOR (21 DOWNTO 0);
	 SIGNAL  wire_delay_round_w_lg_w_q_range470w471w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_delay_round_w475w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_delay_round_w_lg_w475w476w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_delay_round_w_q_range480w	:	STD_LOGIC_VECTOR (21 DOWNTO 0);
	 SIGNAL  wire_delay_round_w_q_range470w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 exp_add_p1	:	STD_LOGIC_VECTOR(8 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_exp_add_p1_w_q_range63w	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL	 exp_adj_p1	:	STD_LOGIC_VECTOR(9 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_adj_p2	:	STD_LOGIC_VECTOR(9 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_exp_adj_p2_w_lg_w_lg_w_q_range459w460w461w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_exp_adj_p2_w_lg_w_q_range459w460w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_exp_adj_p2_w_lg_w_q_range432w457w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_exp_adj_p2_w_q_range410w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_exp_adj_p2_w_q_range413w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_exp_adj_p2_w_q_range416w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_exp_adj_p2_w_q_range419w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_exp_adj_p2_w_q_range422w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_exp_adj_p2_w_q_range425w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_exp_adj_p2_w_q_range459w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_exp_adj_p2_w_q_range428w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_exp_adj_p2_w_q_range431w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_exp_adj_p2_w_q_range432w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 exp_bias_p1	:	STD_LOGIC_VECTOR(8 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_bias_p2	:	STD_LOGIC_VECTOR(8 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_bias_p3	:	STD_LOGIC_VECTOR(8 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_result_ff	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinity_dffe_0	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinity_dffe_1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinity_dffe_2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinity_dffe_3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinity_ff1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinity_ff2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinity_ff3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinity_ff4	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinity_ff5	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_input_is_infinity_ff5_w_lg_q467w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_input_is_infinity_ff5_w_lg_q469w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 input_is_nan_dffe_0	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_dffe_1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_dffe_2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_dffe_3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_ff1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_ff2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_ff3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_ff4	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_ff5	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_input_is_nan_ff5_w_lg_q479w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 input_not_zero_dffe_0	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_not_zero_dffe_1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_not_zero_dffe_2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_not_zero_dffe_3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_not_zero_ff1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_not_zero_ff2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_not_zero_ff3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_not_zero_ff4	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_not_zero_ff5	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_input_not_zero_ff5_w_lg_q466w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 lsb_dffe	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_result_ff	:	STD_LOGIC_VECTOR(22 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_round_carry	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_round_carry_p0	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_round_p	:	STD_LOGIC_VECTOR(23 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_round_p0	:	STD_LOGIC_VECTOR(23 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_round_p1	:	STD_LOGIC_VECTOR(23 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_round_p2	:	STD_LOGIC_VECTOR(24 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_man_round_p2_w_lg_w_q_range404w405w	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_man_round_p2_w_lg_w_q_range401w402w	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_man_round_p2_w_lg_w_q_range391w403w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_round_p2_w_lg_w_lg_w_q_range404w405w406w	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_man_round_p2_w_q_range404w	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_man_round_p2_w_q_range401w	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_man_round_p2_w_q_range391w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 round_dffe	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_node_ff0	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_node_ff1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_node_ff2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_node_ff3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_node_ff4	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_node_ff5	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_node_ff6	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_node_ff7	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_node_ff8	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_node_ff9	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_node_ff10	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sticky_dffe	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_exp_add_adder_dataa	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_exp_add_adder_datab	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_exp_add_adder_result	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_exp_adj_adder_datab	:	STD_LOGIC_VECTOR (9 DOWNTO 0);
	 SIGNAL  wire_exp_adj_adder_result	:	STD_LOGIC_VECTOR (9 DOWNTO 0);
	 SIGNAL  wire_exp_bias_subtr_dataa	:	STD_LOGIC_VECTOR (9 DOWNTO 0);
	 SIGNAL  wire_exp_bias_subtr_datab	:	STD_LOGIC_VECTOR (9 DOWNTO 0);
	 SIGNAL  wire_exp_bias_subtr_result	:	STD_LOGIC_VECTOR (9 DOWNTO 0);
	 SIGNAL  wire_man_round_adder_dataa	:	STD_LOGIC_VECTOR (24 DOWNTO 0);
	 SIGNAL  wire_man_round_adder_datab	:	STD_LOGIC_VECTOR (24 DOWNTO 0);
	 SIGNAL  wire_man_round_adder_result	:	STD_LOGIC_VECTOR (24 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_lg_w_result_range302w303w	:	STD_LOGIC_VECTOR (24 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_lg_w_result_range299w300w	:	STD_LOGIC_VECTOR (24 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_lg_w_result_range298w373w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_lg_w_result_range298w301w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_dataa	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_datab	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_result	:	STD_LOGIC_VECTOR (47 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range335w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range338w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range341w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range344w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range347w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range350w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range353w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range356w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range359w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range362w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range308w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range365w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range368w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range371w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range311w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range314w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range302w	:	STD_LOGIC_VECTOR (24 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range299w	:	STD_LOGIC_VECTOR (24 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range298w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range317w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range320w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range323w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range326w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range329w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_product2_mult_w_result_range332w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_inf_num464w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range81w88w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range91w98w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range101w108w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range111w118w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range121w128w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range131w138w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range141w148w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range84w90w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range94w100w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range104w110w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range114w120w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range124w130w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range134w140w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range144w150w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_result_exp_all_one_range408w412w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_result_exp_all_one_range411w415w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_result_exp_all_one_range414w418w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_result_exp_all_one_range417w421w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_result_exp_all_one_range420w424w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_result_exp_all_one_range423w427w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_result_exp_all_one_range426w430w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_exp_is_inf468w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_exp_is_zero458w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_result_exp_not_zero_range454w456w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_inf_num464w465w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_exp_is_inf462w463w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_exp_is_inf462w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range211w213w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range221w223w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range227w229w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range233w235w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range239w241w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range245w247w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range251w253w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range257w259w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range263w265w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range157w159w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range269w271w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range275w277w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range281w283w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range81w83w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range91w93w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range101w103w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range111w113w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range121w123w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range131w133w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range163w165w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range141w143w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range169w171w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range175w177w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range181w183w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range187w189w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range193w195w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range199w201w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range205w207w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range214w216w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range224w226w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range230w232w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range236w238w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range242w244w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range248w250w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range254w256w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range260w262w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range266w268w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range160w162w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range272w274w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range278w280w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range284w286w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range84w86w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range94w96w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range104w106w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range114w116w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range124w126w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range134w136w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range166w168w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range144w146w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range172w174w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range178w180w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range184w186w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range190w192w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range196w198w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range202w204w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range208w210w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_result_exp_not_zero_range438w441w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_result_exp_not_zero_range440w443w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_result_exp_not_zero_range442w445w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_result_exp_not_zero_range444w447w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_result_exp_not_zero_range446w449w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_result_exp_not_zero_range448w451w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_result_exp_not_zero_range450w453w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_result_exp_not_zero_range452w455w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range306w310w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range336w340w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range339w343w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range342w346w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range345w349w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range348w352w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range351w355w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range354w358w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range357w361w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range360w364w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range363w367w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range309w313w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range366w370w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range369w374w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range312w316w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range315w319w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range318w322w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range321w325w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range324w328w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range327w331w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range330w334w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sticky_bit_range333w337w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  aclr	:	STD_LOGIC;
	 SIGNAL  bias :	STD_LOGIC_VECTOR (9 DOWNTO 0);
	 SIGNAL  clk_en	:	STD_LOGIC;
	 SIGNAL  dataa_exp_all_one :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  dataa_exp_not_zero :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  dataa_man_not_zero :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  datab_exp_all_one :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  datab_exp_not_zero :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  datab_man_not_zero :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  exp_is_inf :	STD_LOGIC;
	 SIGNAL  exp_is_zero :	STD_LOGIC;
	 SIGNAL  expmod :	STD_LOGIC_VECTOR (9 DOWNTO 0);
	 SIGNAL  inf_num :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  lsb_bit :	STD_LOGIC;
	 SIGNAL  man_shift_full :	STD_LOGIC_VECTOR (24 DOWNTO 0);
	 SIGNAL  result_exp_all_one :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  result_exp_not_zero :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  round_bit :	STD_LOGIC;
	 SIGNAL  round_carry :	STD_LOGIC;
	 SIGNAL  sticky_bit :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range211w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range221w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range227w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range233w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range239w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range245w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range251w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range257w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range263w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range157w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range269w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range275w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range281w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range81w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range91w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range101w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range111w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range121w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range131w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range163w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range141w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range169w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range175w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range181w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range187w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range193w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range199w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range205w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_exp_all_one_range77w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_exp_all_one_range87w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_exp_all_one_range97w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_exp_all_one_range107w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_exp_all_one_range117w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_exp_all_one_range127w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_exp_all_one_range137w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_exp_not_zero_range72w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_exp_not_zero_range82w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_exp_not_zero_range92w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_exp_not_zero_range102w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_exp_not_zero_range112w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_exp_not_zero_range122w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_exp_not_zero_range132w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range152w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range218w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range222w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range228w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range234w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range240w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range246w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range252w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range258w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range264w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range158w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range270w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range276w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range164w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range170w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range176w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range182w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range188w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range194w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range200w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_man_not_zero_range206w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range214w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range224w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range230w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range236w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range242w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range248w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range254w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range260w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range266w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range160w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range272w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range278w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range284w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range84w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range94w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range104w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range114w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range124w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range134w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range166w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range144w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range172w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range178w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range184w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range190w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range196w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range202w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range208w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_exp_all_one_range79w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_exp_all_one_range89w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_exp_all_one_range99w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_exp_all_one_range109w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_exp_all_one_range119w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_exp_all_one_range129w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_exp_all_one_range139w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_exp_not_zero_range75w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_exp_not_zero_range85w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_exp_not_zero_range95w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_exp_not_zero_range105w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_exp_not_zero_range115w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_exp_not_zero_range125w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_exp_not_zero_range135w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range155w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range220w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range225w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range231w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range237w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range243w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range249w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range255w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range261w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range267w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range161w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range273w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range279w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range167w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range173w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range179w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range185w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range191w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range197w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range203w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_man_not_zero_range209w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_shift_full_range379w	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_w_result_exp_all_one_range408w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_result_exp_all_one_range411w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_result_exp_all_one_range414w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_result_exp_all_one_range417w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_result_exp_all_one_range420w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_result_exp_all_one_range423w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_result_exp_all_one_range426w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_result_exp_not_zero_range438w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_result_exp_not_zero_range440w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_result_exp_not_zero_range442w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_result_exp_not_zero_range444w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_result_exp_not_zero_range446w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_result_exp_not_zero_range448w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_result_exp_not_zero_range450w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_result_exp_not_zero_range452w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_result_exp_not_zero_range454w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range306w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range336w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range339w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range342w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range345w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range348w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range351w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range354w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range357w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range360w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range363w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range309w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range366w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range369w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range312w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range315w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range318w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range321w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range324w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range327w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range330w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sticky_bit_range333w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 COMPONENT  lpm_add_sub
	 GENERIC 
	 (
		LPM_DIRECTION	:	STRING := "DEFAULT";
		LPM_PIPELINE	:	NATURAL := 0;
		LPM_REPRESENTATION	:	STRING := "SIGNED";
		LPM_WIDTH	:	NATURAL;
		lpm_hint	:	STRING := "UNUSED";
		lpm_type	:	STRING := "lpm_add_sub"
	 );
	 PORT
	 ( 
		aclr	:	IN STD_LOGIC := '0';
		add_sub	:	IN STD_LOGIC := '1';
		cin	:	IN STD_LOGIC := 'Z';
		clken	:	IN STD_LOGIC := '1';
		clock	:	IN STD_LOGIC := '0';
		cout	:	OUT STD_LOGIC;
		dataa	:	IN STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
		datab	:	IN STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
		overflow	:	OUT STD_LOGIC;
		result	:	OUT STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0)
	 ); 
	 END COMPONENT;
	 COMPONENT  lpm_mult
	 GENERIC 
	 (
		LPM_PIPELINE	:	NATURAL := 0;
		LPM_REPRESENTATION	:	STRING := "UNSIGNED";
		LPM_WIDTHA	:	NATURAL;
		LPM_WIDTHB	:	NATURAL;
		LPM_WIDTHP	:	NATURAL;
		LPM_WIDTHS	:	NATURAL := 1;
		lpm_hint	:	STRING := "UNUSED";
		lpm_type	:	STRING := "lpm_mult"
	 );
	 PORT
	 ( 
		aclr	:	IN STD_LOGIC := '0';
		clken	:	IN STD_LOGIC := '1';
		clock	:	IN STD_LOGIC := '0';
		dataa	:	IN STD_LOGIC_VECTOR(LPM_WIDTHA-1 DOWNTO 0);
		datab	:	IN STD_LOGIC_VECTOR(LPM_WIDTHB-1 DOWNTO 0);
		result	:	OUT STD_LOGIC_VECTOR(LPM_WIDTHP-1 DOWNTO 0);
		sum	:	IN STD_LOGIC_VECTOR(LPM_WIDTHS-1 DOWNTO 0) := (OTHERS => '0')
	 ); 
	 END COMPONENT;
 BEGIN

	wire_gnd <= '0';
	loop0 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_inf_num464w(i) <= inf_num(i) AND wire_w_lg_w_lg_exp_is_inf462w463w(0);
	END GENERATE loop0;
	wire_w_lg_w_dataa_range81w88w(0) <= wire_w_dataa_range81w(0) AND wire_w_dataa_exp_all_one_range77w(0);
	wire_w_lg_w_dataa_range91w98w(0) <= wire_w_dataa_range91w(0) AND wire_w_dataa_exp_all_one_range87w(0);
	wire_w_lg_w_dataa_range101w108w(0) <= wire_w_dataa_range101w(0) AND wire_w_dataa_exp_all_one_range97w(0);
	wire_w_lg_w_dataa_range111w118w(0) <= wire_w_dataa_range111w(0) AND wire_w_dataa_exp_all_one_range107w(0);
	wire_w_lg_w_dataa_range121w128w(0) <= wire_w_dataa_range121w(0) AND wire_w_dataa_exp_all_one_range117w(0);
	wire_w_lg_w_dataa_range131w138w(0) <= wire_w_dataa_range131w(0) AND wire_w_dataa_exp_all_one_range127w(0);
	wire_w_lg_w_dataa_range141w148w(0) <= wire_w_dataa_range141w(0) AND wire_w_dataa_exp_all_one_range137w(0);
	wire_w_lg_w_datab_range84w90w(0) <= wire_w_datab_range84w(0) AND wire_w_datab_exp_all_one_range79w(0);
	wire_w_lg_w_datab_range94w100w(0) <= wire_w_datab_range94w(0) AND wire_w_datab_exp_all_one_range89w(0);
	wire_w_lg_w_datab_range104w110w(0) <= wire_w_datab_range104w(0) AND wire_w_datab_exp_all_one_range99w(0);
	wire_w_lg_w_datab_range114w120w(0) <= wire_w_datab_range114w(0) AND wire_w_datab_exp_all_one_range109w(0);
	wire_w_lg_w_datab_range124w130w(0) <= wire_w_datab_range124w(0) AND wire_w_datab_exp_all_one_range119w(0);
	wire_w_lg_w_datab_range134w140w(0) <= wire_w_datab_range134w(0) AND wire_w_datab_exp_all_one_range129w(0);
	wire_w_lg_w_datab_range144w150w(0) <= wire_w_datab_range144w(0) AND wire_w_datab_exp_all_one_range139w(0);
	wire_w_lg_w_result_exp_all_one_range408w412w(0) <= wire_w_result_exp_all_one_range408w(0) AND wire_exp_adj_p2_w_q_range410w(0);
	wire_w_lg_w_result_exp_all_one_range411w415w(0) <= wire_w_result_exp_all_one_range411w(0) AND wire_exp_adj_p2_w_q_range413w(0);
	wire_w_lg_w_result_exp_all_one_range414w418w(0) <= wire_w_result_exp_all_one_range414w(0) AND wire_exp_adj_p2_w_q_range416w(0);
	wire_w_lg_w_result_exp_all_one_range417w421w(0) <= wire_w_result_exp_all_one_range417w(0) AND wire_exp_adj_p2_w_q_range419w(0);
	wire_w_lg_w_result_exp_all_one_range420w424w(0) <= wire_w_result_exp_all_one_range420w(0) AND wire_exp_adj_p2_w_q_range422w(0);
	wire_w_lg_w_result_exp_all_one_range423w427w(0) <= wire_w_result_exp_all_one_range423w(0) AND wire_exp_adj_p2_w_q_range425w(0);
	wire_w_lg_w_result_exp_all_one_range426w430w(0) <= wire_w_result_exp_all_one_range426w(0) AND wire_exp_adj_p2_w_q_range428w(0);
	wire_w_lg_exp_is_inf468w(0) <= NOT exp_is_inf;
	wire_w_lg_exp_is_zero458w(0) <= NOT exp_is_zero;
	wire_w_lg_w_result_exp_not_zero_range454w456w(0) <= NOT wire_w_result_exp_not_zero_range454w(0);
	loop1 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_w_lg_inf_num464w465w(i) <= wire_w_lg_inf_num464w(i) OR wire_exp_adj_p2_w_lg_w_lg_w_q_range459w460w461w(i);
	END GENERATE loop1;
	wire_w_lg_w_lg_exp_is_inf462w463w(0) <= wire_w_lg_exp_is_inf462w(0) OR input_is_nan_ff5;
	wire_w_lg_exp_is_inf462w(0) <= exp_is_inf OR input_is_infinity_ff5;
	wire_w_lg_w_dataa_range211w213w(0) <= wire_w_dataa_range211w(0) OR wire_w_dataa_man_not_zero_range206w(0);
	wire_w_lg_w_dataa_range221w223w(0) <= wire_w_dataa_range221w(0) OR wire_w_dataa_man_not_zero_range218w(0);
	wire_w_lg_w_dataa_range227w229w(0) <= wire_w_dataa_range227w(0) OR wire_w_dataa_man_not_zero_range222w(0);
	wire_w_lg_w_dataa_range233w235w(0) <= wire_w_dataa_range233w(0) OR wire_w_dataa_man_not_zero_range228w(0);
	wire_w_lg_w_dataa_range239w241w(0) <= wire_w_dataa_range239w(0) OR wire_w_dataa_man_not_zero_range234w(0);
	wire_w_lg_w_dataa_range245w247w(0) <= wire_w_dataa_range245w(0) OR wire_w_dataa_man_not_zero_range240w(0);
	wire_w_lg_w_dataa_range251w253w(0) <= wire_w_dataa_range251w(0) OR wire_w_dataa_man_not_zero_range246w(0);
	wire_w_lg_w_dataa_range257w259w(0) <= wire_w_dataa_range257w(0) OR wire_w_dataa_man_not_zero_range252w(0);
	wire_w_lg_w_dataa_range263w265w(0) <= wire_w_dataa_range263w(0) OR wire_w_dataa_man_not_zero_range258w(0);
	wire_w_lg_w_dataa_range157w159w(0) <= wire_w_dataa_range157w(0) OR wire_w_dataa_man_not_zero_range152w(0);
	wire_w_lg_w_dataa_range269w271w(0) <= wire_w_dataa_range269w(0) OR wire_w_dataa_man_not_zero_range264w(0);
	wire_w_lg_w_dataa_range275w277w(0) <= wire_w_dataa_range275w(0) OR wire_w_dataa_man_not_zero_range270w(0);
	wire_w_lg_w_dataa_range281w283w(0) <= wire_w_dataa_range281w(0) OR wire_w_dataa_man_not_zero_range276w(0);
	wire_w_lg_w_dataa_range81w83w(0) <= wire_w_dataa_range81w(0) OR wire_w_dataa_exp_not_zero_range72w(0);
	wire_w_lg_w_dataa_range91w93w(0) <= wire_w_dataa_range91w(0) OR wire_w_dataa_exp_not_zero_range82w(0);
	wire_w_lg_w_dataa_range101w103w(0) <= wire_w_dataa_range101w(0) OR wire_w_dataa_exp_not_zero_range92w(0);
	wire_w_lg_w_dataa_range111w113w(0) <= wire_w_dataa_range111w(0) OR wire_w_dataa_exp_not_zero_range102w(0);
	wire_w_lg_w_dataa_range121w123w(0) <= wire_w_dataa_range121w(0) OR wire_w_dataa_exp_not_zero_range112w(0);
	wire_w_lg_w_dataa_range131w133w(0) <= wire_w_dataa_range131w(0) OR wire_w_dataa_exp_not_zero_range122w(0);
	wire_w_lg_w_dataa_range163w165w(0) <= wire_w_dataa_range163w(0) OR wire_w_dataa_man_not_zero_range158w(0);
	wire_w_lg_w_dataa_range141w143w(0) <= wire_w_dataa_range141w(0) OR wire_w_dataa_exp_not_zero_range132w(0);
	wire_w_lg_w_dataa_range169w171w(0) <= wire_w_dataa_range169w(0) OR wire_w_dataa_man_not_zero_range164w(0);
	wire_w_lg_w_dataa_range175w177w(0) <= wire_w_dataa_range175w(0) OR wire_w_dataa_man_not_zero_range170w(0);
	wire_w_lg_w_dataa_range181w183w(0) <= wire_w_dataa_range181w(0) OR wire_w_dataa_man_not_zero_range176w(0);
	wire_w_lg_w_dataa_range187w189w(0) <= wire_w_dataa_range187w(0) OR wire_w_dataa_man_not_zero_range182w(0);
	wire_w_lg_w_dataa_range193w195w(0) <= wire_w_dataa_range193w(0) OR wire_w_dataa_man_not_zero_range188w(0);
	wire_w_lg_w_dataa_range199w201w(0) <= wire_w_dataa_range199w(0) OR wire_w_dataa_man_not_zero_range194w(0);
	wire_w_lg_w_dataa_range205w207w(0) <= wire_w_dataa_range205w(0) OR wire_w_dataa_man_not_zero_range200w(0);
	wire_w_lg_w_datab_range214w216w(0) <= wire_w_datab_range214w(0) OR wire_w_datab_man_not_zero_range209w(0);
	wire_w_lg_w_datab_range224w226w(0) <= wire_w_datab_range224w(0) OR wire_w_datab_man_not_zero_range220w(0);
	wire_w_lg_w_datab_range230w232w(0) <= wire_w_datab_range230w(0) OR wire_w_datab_man_not_zero_range225w(0);
	wire_w_lg_w_datab_range236w238w(0) <= wire_w_datab_range236w(0) OR wire_w_datab_man_not_zero_range231w(0);
	wire_w_lg_w_datab_range242w244w(0) <= wire_w_datab_range242w(0) OR wire_w_datab_man_not_zero_range237w(0);
	wire_w_lg_w_datab_range248w250w(0) <= wire_w_datab_range248w(0) OR wire_w_datab_man_not_zero_range243w(0);
	wire_w_lg_w_datab_range254w256w(0) <= wire_w_datab_range254w(0) OR wire_w_datab_man_not_zero_range249w(0);
	wire_w_lg_w_datab_range260w262w(0) <= wire_w_datab_range260w(0) OR wire_w_datab_man_not_zero_range255w(0);
	wire_w_lg_w_datab_range266w268w(0) <= wire_w_datab_range266w(0) OR wire_w_datab_man_not_zero_range261w(0);
	wire_w_lg_w_datab_range160w162w(0) <= wire_w_datab_range160w(0) OR wire_w_datab_man_not_zero_range155w(0);
	wire_w_lg_w_datab_range272w274w(0) <= wire_w_datab_range272w(0) OR wire_w_datab_man_not_zero_range267w(0);
	wire_w_lg_w_datab_range278w280w(0) <= wire_w_datab_range278w(0) OR wire_w_datab_man_not_zero_range273w(0);
	wire_w_lg_w_datab_range284w286w(0) <= wire_w_datab_range284w(0) OR wire_w_datab_man_not_zero_range279w(0);
	wire_w_lg_w_datab_range84w86w(0) <= wire_w_datab_range84w(0) OR wire_w_datab_exp_not_zero_range75w(0);
	wire_w_lg_w_datab_range94w96w(0) <= wire_w_datab_range94w(0) OR wire_w_datab_exp_not_zero_range85w(0);
	wire_w_lg_w_datab_range104w106w(0) <= wire_w_datab_range104w(0) OR wire_w_datab_exp_not_zero_range95w(0);
	wire_w_lg_w_datab_range114w116w(0) <= wire_w_datab_range114w(0) OR wire_w_datab_exp_not_zero_range105w(0);
	wire_w_lg_w_datab_range124w126w(0) <= wire_w_datab_range124w(0) OR wire_w_datab_exp_not_zero_range115w(0);
	wire_w_lg_w_datab_range134w136w(0) <= wire_w_datab_range134w(0) OR wire_w_datab_exp_not_zero_range125w(0);
	wire_w_lg_w_datab_range166w168w(0) <= wire_w_datab_range166w(0) OR wire_w_datab_man_not_zero_range161w(0);
	wire_w_lg_w_datab_range144w146w(0) <= wire_w_datab_range144w(0) OR wire_w_datab_exp_not_zero_range135w(0);
	wire_w_lg_w_datab_range172w174w(0) <= wire_w_datab_range172w(0) OR wire_w_datab_man_not_zero_range167w(0);
	wire_w_lg_w_datab_range178w180w(0) <= wire_w_datab_range178w(0) OR wire_w_datab_man_not_zero_range173w(0);
	wire_w_lg_w_datab_range184w186w(0) <= wire_w_datab_range184w(0) OR wire_w_datab_man_not_zero_range179w(0);
	wire_w_lg_w_datab_range190w192w(0) <= wire_w_datab_range190w(0) OR wire_w_datab_man_not_zero_range185w(0);
	wire_w_lg_w_datab_range196w198w(0) <= wire_w_datab_range196w(0) OR wire_w_datab_man_not_zero_range191w(0);
	wire_w_lg_w_datab_range202w204w(0) <= wire_w_datab_range202w(0) OR wire_w_datab_man_not_zero_range197w(0);
	wire_w_lg_w_datab_range208w210w(0) <= wire_w_datab_range208w(0) OR wire_w_datab_man_not_zero_range203w(0);
	wire_w_lg_w_result_exp_not_zero_range438w441w(0) <= wire_w_result_exp_not_zero_range438w(0) OR wire_exp_adj_p2_w_q_range410w(0);
	wire_w_lg_w_result_exp_not_zero_range440w443w(0) <= wire_w_result_exp_not_zero_range440w(0) OR wire_exp_adj_p2_w_q_range413w(0);
	wire_w_lg_w_result_exp_not_zero_range442w445w(0) <= wire_w_result_exp_not_zero_range442w(0) OR wire_exp_adj_p2_w_q_range416w(0);
	wire_w_lg_w_result_exp_not_zero_range444w447w(0) <= wire_w_result_exp_not_zero_range444w(0) OR wire_exp_adj_p2_w_q_range419w(0);
	wire_w_lg_w_result_exp_not_zero_range446w449w(0) <= wire_w_result_exp_not_zero_range446w(0) OR wire_exp_adj_p2_w_q_range422w(0);
	wire_w_lg_w_result_exp_not_zero_range448w451w(0) <= wire_w_result_exp_not_zero_range448w(0) OR wire_exp_adj_p2_w_q_range425w(0);
	wire_w_lg_w_result_exp_not_zero_range450w453w(0) <= wire_w_result_exp_not_zero_range450w(0) OR wire_exp_adj_p2_w_q_range428w(0);
	wire_w_lg_w_result_exp_not_zero_range452w455w(0) <= wire_w_result_exp_not_zero_range452w(0) OR wire_exp_adj_p2_w_q_range431w(0);
	wire_w_lg_w_sticky_bit_range306w310w(0) <= wire_w_sticky_bit_range306w(0) OR wire_man_product2_mult_w_result_range308w(0);
	wire_w_lg_w_sticky_bit_range336w340w(0) <= wire_w_sticky_bit_range336w(0) OR wire_man_product2_mult_w_result_range338w(0);
	wire_w_lg_w_sticky_bit_range339w343w(0) <= wire_w_sticky_bit_range339w(0) OR wire_man_product2_mult_w_result_range341w(0);
	wire_w_lg_w_sticky_bit_range342w346w(0) <= wire_w_sticky_bit_range342w(0) OR wire_man_product2_mult_w_result_range344w(0);
	wire_w_lg_w_sticky_bit_range345w349w(0) <= wire_w_sticky_bit_range345w(0) OR wire_man_product2_mult_w_result_range347w(0);
	wire_w_lg_w_sticky_bit_range348w352w(0) <= wire_w_sticky_bit_range348w(0) OR wire_man_product2_mult_w_result_range350w(0);
	wire_w_lg_w_sticky_bit_range351w355w(0) <= wire_w_sticky_bit_range351w(0) OR wire_man_product2_mult_w_result_range353w(0);
	wire_w_lg_w_sticky_bit_range354w358w(0) <= wire_w_sticky_bit_range354w(0) OR wire_man_product2_mult_w_result_range356w(0);
	wire_w_lg_w_sticky_bit_range357w361w(0) <= wire_w_sticky_bit_range357w(0) OR wire_man_product2_mult_w_result_range359w(0);
	wire_w_lg_w_sticky_bit_range360w364w(0) <= wire_w_sticky_bit_range360w(0) OR wire_man_product2_mult_w_result_range362w(0);
	wire_w_lg_w_sticky_bit_range363w367w(0) <= wire_w_sticky_bit_range363w(0) OR wire_man_product2_mult_w_result_range365w(0);
	wire_w_lg_w_sticky_bit_range309w313w(0) <= wire_w_sticky_bit_range309w(0) OR wire_man_product2_mult_w_result_range311w(0);
	wire_w_lg_w_sticky_bit_range366w370w(0) <= wire_w_sticky_bit_range366w(0) OR wire_man_product2_mult_w_result_range368w(0);
	wire_w_lg_w_sticky_bit_range369w374w(0) <= wire_w_sticky_bit_range369w(0) OR wire_man_product2_mult_w_lg_w_result_range298w373w(0);
	wire_w_lg_w_sticky_bit_range312w316w(0) <= wire_w_sticky_bit_range312w(0) OR wire_man_product2_mult_w_result_range314w(0);
	wire_w_lg_w_sticky_bit_range315w319w(0) <= wire_w_sticky_bit_range315w(0) OR wire_man_product2_mult_w_result_range317w(0);
	wire_w_lg_w_sticky_bit_range318w322w(0) <= wire_w_sticky_bit_range318w(0) OR wire_man_product2_mult_w_result_range320w(0);
	wire_w_lg_w_sticky_bit_range321w325w(0) <= wire_w_sticky_bit_range321w(0) OR wire_man_product2_mult_w_result_range323w(0);
	wire_w_lg_w_sticky_bit_range324w328w(0) <= wire_w_sticky_bit_range324w(0) OR wire_man_product2_mult_w_result_range326w(0);
	wire_w_lg_w_sticky_bit_range327w331w(0) <= wire_w_sticky_bit_range327w(0) OR wire_man_product2_mult_w_result_range329w(0);
	wire_w_lg_w_sticky_bit_range330w334w(0) <= wire_w_sticky_bit_range330w(0) OR wire_man_product2_mult_w_result_range332w(0);
	wire_w_lg_w_sticky_bit_range333w337w(0) <= wire_w_sticky_bit_range333w(0) OR wire_man_product2_mult_w_result_range335w(0);
	aclr <= '0';
	bias <= ( "0" & "0" & "0" & "1" & "1" & "1" & "1" & "1" & "1" & "1");
	clk_en <= '1';
	dataa_exp_all_one <= ( wire_w_lg_w_dataa_range141w148w & wire_w_lg_w_dataa_range131w138w & wire_w_lg_w_dataa_range121w128w & wire_w_lg_w_dataa_range111w118w & wire_w_lg_w_dataa_range101w108w & wire_w_lg_w_dataa_range91w98w & wire_w_lg_w_dataa_range81w88w & dataa(23));
	dataa_exp_not_zero <= ( wire_w_lg_w_dataa_range141w143w & wire_w_lg_w_dataa_range131w133w & wire_w_lg_w_dataa_range121w123w & wire_w_lg_w_dataa_range111w113w & wire_w_lg_w_dataa_range101w103w & wire_w_lg_w_dataa_range91w93w & wire_w_lg_w_dataa_range81w83w & dataa(23));
	dataa_man_not_zero <= ( wire_w_lg_w_dataa_range281w283w & wire_w_lg_w_dataa_range275w277w & wire_w_lg_w_dataa_range269w271w & wire_w_lg_w_dataa_range263w265w & wire_w_lg_w_dataa_range257w259w & wire_w_lg_w_dataa_range251w253w & wire_w_lg_w_dataa_range245w247w & wire_w_lg_w_dataa_range239w241w & wire_w_lg_w_dataa_range233w235w & wire_w_lg_w_dataa_range227w229w & wire_w_lg_w_dataa_range221w223w & dataa(11) & wire_w_lg_w_dataa_range211w213w & wire_w_lg_w_dataa_range205w207w & wire_w_lg_w_dataa_range199w201w & wire_w_lg_w_dataa_range193w195w & wire_w_lg_w_dataa_range187w189w & wire_w_lg_w_dataa_range181w183w & wire_w_lg_w_dataa_range175w177w & wire_w_lg_w_dataa_range169w171w & wire_w_lg_w_dataa_range163w165w & wire_w_lg_w_dataa_range157w159w & dataa(0));
	datab_exp_all_one <= ( wire_w_lg_w_datab_range144w150w & wire_w_lg_w_datab_range134w140w & wire_w_lg_w_datab_range124w130w & wire_w_lg_w_datab_range114w120w & wire_w_lg_w_datab_range104w110w & wire_w_lg_w_datab_range94w100w & wire_w_lg_w_datab_range84w90w & datab(23));
	datab_exp_not_zero <= ( wire_w_lg_w_datab_range144w146w & wire_w_lg_w_datab_range134w136w & wire_w_lg_w_datab_range124w126w & wire_w_lg_w_datab_range114w116w & wire_w_lg_w_datab_range104w106w & wire_w_lg_w_datab_range94w96w & wire_w_lg_w_datab_range84w86w & datab(23));
	datab_man_not_zero <= ( wire_w_lg_w_datab_range284w286w & wire_w_lg_w_datab_range278w280w & wire_w_lg_w_datab_range272w274w & wire_w_lg_w_datab_range266w268w & wire_w_lg_w_datab_range260w262w & wire_w_lg_w_datab_range254w256w & wire_w_lg_w_datab_range248w250w & wire_w_lg_w_datab_range242w244w & wire_w_lg_w_datab_range236w238w & wire_w_lg_w_datab_range230w232w & wire_w_lg_w_datab_range224w226w & datab(11) & wire_w_lg_w_datab_range214w216w & wire_w_lg_w_datab_range208w210w & wire_w_lg_w_datab_range202w204w & wire_w_lg_w_datab_range196w198w & wire_w_lg_w_datab_range190w192w & wire_w_lg_w_datab_range184w186w & wire_w_lg_w_datab_range178w180w & wire_w_lg_w_datab_range172w174w & wire_w_lg_w_datab_range166w168w & wire_w_lg_w_datab_range160w162w & datab(0));
	exp_is_inf <= (((NOT exp_adj_p2(9)) AND exp_adj_p2(8)) OR ((NOT exp_adj_p2(8)) AND result_exp_all_one(7)));
	exp_is_zero <= wire_exp_adj_p2_w_lg_w_q_range432w457w(0);
	expmod <= ( "00000000" & wire_delay_man_product_msb2_w_lg_q393w & wire_delay_man_product_msb2_w_lg_q395w);
	inf_num <= ( "1" & "1" & "1" & "1" & "1" & "1" & "1" & "1");
	lsb_bit <= man_shift_full(1);
	man_shift_full <= (wire_man_product2_mult_w_lg_w_result_range302w303w OR wire_man_product2_mult_w_lg_w_result_range299w300w);
	result <= ( sign_node_ff10 & exp_result_ff(7 DOWNTO 0) & man_result_ff(22 DOWNTO 0));
	result_exp_all_one <= ( wire_w_lg_w_result_exp_all_one_range426w430w & wire_w_lg_w_result_exp_all_one_range423w427w & wire_w_lg_w_result_exp_all_one_range420w424w & wire_w_lg_w_result_exp_all_one_range417w421w & wire_w_lg_w_result_exp_all_one_range414w418w & wire_w_lg_w_result_exp_all_one_range411w415w & wire_w_lg_w_result_exp_all_one_range408w412w & exp_adj_p2(0));
	result_exp_not_zero <= ( wire_w_lg_w_result_exp_not_zero_range452w455w & wire_w_lg_w_result_exp_not_zero_range450w453w & wire_w_lg_w_result_exp_not_zero_range448w451w & wire_w_lg_w_result_exp_not_zero_range446w449w & wire_w_lg_w_result_exp_not_zero_range444w447w & wire_w_lg_w_result_exp_not_zero_range442w445w & wire_w_lg_w_result_exp_not_zero_range440w443w & wire_w_lg_w_result_exp_not_zero_range438w441w & exp_adj_p2(0));
	round_bit <= man_shift_full(0);
	round_carry <= (round_dffe AND (lsb_dffe OR sticky_dffe));
	sticky_bit <= ( wire_w_lg_w_sticky_bit_range369w374w & wire_w_lg_w_sticky_bit_range366w370w & wire_w_lg_w_sticky_bit_range363w367w & wire_w_lg_w_sticky_bit_range360w364w & wire_w_lg_w_sticky_bit_range357w361w & wire_w_lg_w_sticky_bit_range354w358w & wire_w_lg_w_sticky_bit_range351w355w & wire_w_lg_w_sticky_bit_range348w352w & wire_w_lg_w_sticky_bit_range345w349w & wire_w_lg_w_sticky_bit_range342w346w & wire_w_lg_w_sticky_bit_range339w343w & wire_w_lg_w_sticky_bit_range336w340w & wire_w_lg_w_sticky_bit_range333w337w & wire_w_lg_w_sticky_bit_range330w334w & wire_w_lg_w_sticky_bit_range327w331w & wire_w_lg_w_sticky_bit_range324w328w & wire_w_lg_w_sticky_bit_range321w325w & wire_w_lg_w_sticky_bit_range318w322w & wire_w_lg_w_sticky_bit_range315w319w & wire_w_lg_w_sticky_bit_range312w316w & wire_w_lg_w_sticky_bit_range309w313w & wire_w_lg_w_sticky_bit_range306w310w & wire_man_product2_mult_result(0));
	wire_w_dataa_range211w(0) <= dataa(10);
	wire_w_dataa_range221w(0) <= dataa(12);
	wire_w_dataa_range227w(0) <= dataa(13);
	wire_w_dataa_range233w(0) <= dataa(14);
	wire_w_dataa_range239w(0) <= dataa(15);
	wire_w_dataa_range245w(0) <= dataa(16);
	wire_w_dataa_range251w(0) <= dataa(17);
	wire_w_dataa_range257w(0) <= dataa(18);
	wire_w_dataa_range263w(0) <= dataa(19);
	wire_w_dataa_range157w(0) <= dataa(1);
	wire_w_dataa_range269w(0) <= dataa(20);
	wire_w_dataa_range275w(0) <= dataa(21);
	wire_w_dataa_range281w(0) <= dataa(22);
	wire_w_dataa_range81w(0) <= dataa(24);
	wire_w_dataa_range91w(0) <= dataa(25);
	wire_w_dataa_range101w(0) <= dataa(26);
	wire_w_dataa_range111w(0) <= dataa(27);
	wire_w_dataa_range121w(0) <= dataa(28);
	wire_w_dataa_range131w(0) <= dataa(29);
	wire_w_dataa_range163w(0) <= dataa(2);
	wire_w_dataa_range141w(0) <= dataa(30);
	wire_w_dataa_range169w(0) <= dataa(3);
	wire_w_dataa_range175w(0) <= dataa(4);
	wire_w_dataa_range181w(0) <= dataa(5);
	wire_w_dataa_range187w(0) <= dataa(6);
	wire_w_dataa_range193w(0) <= dataa(7);
	wire_w_dataa_range199w(0) <= dataa(8);
	wire_w_dataa_range205w(0) <= dataa(9);
	wire_w_dataa_exp_all_one_range77w(0) <= dataa_exp_all_one(0);
	wire_w_dataa_exp_all_one_range87w(0) <= dataa_exp_all_one(1);
	wire_w_dataa_exp_all_one_range97w(0) <= dataa_exp_all_one(2);
	wire_w_dataa_exp_all_one_range107w(0) <= dataa_exp_all_one(3);
	wire_w_dataa_exp_all_one_range117w(0) <= dataa_exp_all_one(4);
	wire_w_dataa_exp_all_one_range127w(0) <= dataa_exp_all_one(5);
	wire_w_dataa_exp_all_one_range137w(0) <= dataa_exp_all_one(6);
	wire_w_dataa_exp_not_zero_range72w(0) <= dataa_exp_not_zero(0);
	wire_w_dataa_exp_not_zero_range82w(0) <= dataa_exp_not_zero(1);
	wire_w_dataa_exp_not_zero_range92w(0) <= dataa_exp_not_zero(2);
	wire_w_dataa_exp_not_zero_range102w(0) <= dataa_exp_not_zero(3);
	wire_w_dataa_exp_not_zero_range112w(0) <= dataa_exp_not_zero(4);
	wire_w_dataa_exp_not_zero_range122w(0) <= dataa_exp_not_zero(5);
	wire_w_dataa_exp_not_zero_range132w(0) <= dataa_exp_not_zero(6);
	wire_w_dataa_man_not_zero_range152w(0) <= dataa_man_not_zero(0);
	wire_w_dataa_man_not_zero_range218w(0) <= dataa_man_not_zero(11);
	wire_w_dataa_man_not_zero_range222w(0) <= dataa_man_not_zero(12);
	wire_w_dataa_man_not_zero_range228w(0) <= dataa_man_not_zero(13);
	wire_w_dataa_man_not_zero_range234w(0) <= dataa_man_not_zero(14);
	wire_w_dataa_man_not_zero_range240w(0) <= dataa_man_not_zero(15);
	wire_w_dataa_man_not_zero_range246w(0) <= dataa_man_not_zero(16);
	wire_w_dataa_man_not_zero_range252w(0) <= dataa_man_not_zero(17);
	wire_w_dataa_man_not_zero_range258w(0) <= dataa_man_not_zero(18);
	wire_w_dataa_man_not_zero_range264w(0) <= dataa_man_not_zero(19);
	wire_w_dataa_man_not_zero_range158w(0) <= dataa_man_not_zero(1);
	wire_w_dataa_man_not_zero_range270w(0) <= dataa_man_not_zero(20);
	wire_w_dataa_man_not_zero_range276w(0) <= dataa_man_not_zero(21);
	wire_w_dataa_man_not_zero_range164w(0) <= dataa_man_not_zero(2);
	wire_w_dataa_man_not_zero_range170w(0) <= dataa_man_not_zero(3);
	wire_w_dataa_man_not_zero_range176w(0) <= dataa_man_not_zero(4);
	wire_w_dataa_man_not_zero_range182w(0) <= dataa_man_not_zero(5);
	wire_w_dataa_man_not_zero_range188w(0) <= dataa_man_not_zero(6);
	wire_w_dataa_man_not_zero_range194w(0) <= dataa_man_not_zero(7);
	wire_w_dataa_man_not_zero_range200w(0) <= dataa_man_not_zero(8);
	wire_w_dataa_man_not_zero_range206w(0) <= dataa_man_not_zero(9);
	wire_w_datab_range214w(0) <= datab(10);
	wire_w_datab_range224w(0) <= datab(12);
	wire_w_datab_range230w(0) <= datab(13);
	wire_w_datab_range236w(0) <= datab(14);
	wire_w_datab_range242w(0) <= datab(15);
	wire_w_datab_range248w(0) <= datab(16);
	wire_w_datab_range254w(0) <= datab(17);
	wire_w_datab_range260w(0) <= datab(18);
	wire_w_datab_range266w(0) <= datab(19);
	wire_w_datab_range160w(0) <= datab(1);
	wire_w_datab_range272w(0) <= datab(20);
	wire_w_datab_range278w(0) <= datab(21);
	wire_w_datab_range284w(0) <= datab(22);
	wire_w_datab_range84w(0) <= datab(24);
	wire_w_datab_range94w(0) <= datab(25);
	wire_w_datab_range104w(0) <= datab(26);
	wire_w_datab_range114w(0) <= datab(27);
	wire_w_datab_range124w(0) <= datab(28);
	wire_w_datab_range134w(0) <= datab(29);
	wire_w_datab_range166w(0) <= datab(2);
	wire_w_datab_range144w(0) <= datab(30);
	wire_w_datab_range172w(0) <= datab(3);
	wire_w_datab_range178w(0) <= datab(4);
	wire_w_datab_range184w(0) <= datab(5);
	wire_w_datab_range190w(0) <= datab(6);
	wire_w_datab_range196w(0) <= datab(7);
	wire_w_datab_range202w(0) <= datab(8);
	wire_w_datab_range208w(0) <= datab(9);
	wire_w_datab_exp_all_one_range79w(0) <= datab_exp_all_one(0);
	wire_w_datab_exp_all_one_range89w(0) <= datab_exp_all_one(1);
	wire_w_datab_exp_all_one_range99w(0) <= datab_exp_all_one(2);
	wire_w_datab_exp_all_one_range109w(0) <= datab_exp_all_one(3);
	wire_w_datab_exp_all_one_range119w(0) <= datab_exp_all_one(4);
	wire_w_datab_exp_all_one_range129w(0) <= datab_exp_all_one(5);
	wire_w_datab_exp_all_one_range139w(0) <= datab_exp_all_one(6);
	wire_w_datab_exp_not_zero_range75w(0) <= datab_exp_not_zero(0);
	wire_w_datab_exp_not_zero_range85w(0) <= datab_exp_not_zero(1);
	wire_w_datab_exp_not_zero_range95w(0) <= datab_exp_not_zero(2);
	wire_w_datab_exp_not_zero_range105w(0) <= datab_exp_not_zero(3);
	wire_w_datab_exp_not_zero_range115w(0) <= datab_exp_not_zero(4);
	wire_w_datab_exp_not_zero_range125w(0) <= datab_exp_not_zero(5);
	wire_w_datab_exp_not_zero_range135w(0) <= datab_exp_not_zero(6);
	wire_w_datab_man_not_zero_range155w(0) <= datab_man_not_zero(0);
	wire_w_datab_man_not_zero_range220w(0) <= datab_man_not_zero(11);
	wire_w_datab_man_not_zero_range225w(0) <= datab_man_not_zero(12);
	wire_w_datab_man_not_zero_range231w(0) <= datab_man_not_zero(13);
	wire_w_datab_man_not_zero_range237w(0) <= datab_man_not_zero(14);
	wire_w_datab_man_not_zero_range243w(0) <= datab_man_not_zero(15);
	wire_w_datab_man_not_zero_range249w(0) <= datab_man_not_zero(16);
	wire_w_datab_man_not_zero_range255w(0) <= datab_man_not_zero(17);
	wire_w_datab_man_not_zero_range261w(0) <= datab_man_not_zero(18);
	wire_w_datab_man_not_zero_range267w(0) <= datab_man_not_zero(19);
	wire_w_datab_man_not_zero_range161w(0) <= datab_man_not_zero(1);
	wire_w_datab_man_not_zero_range273w(0) <= datab_man_not_zero(20);
	wire_w_datab_man_not_zero_range279w(0) <= datab_man_not_zero(21);
	wire_w_datab_man_not_zero_range167w(0) <= datab_man_not_zero(2);
	wire_w_datab_man_not_zero_range173w(0) <= datab_man_not_zero(3);
	wire_w_datab_man_not_zero_range179w(0) <= datab_man_not_zero(4);
	wire_w_datab_man_not_zero_range185w(0) <= datab_man_not_zero(5);
	wire_w_datab_man_not_zero_range191w(0) <= datab_man_not_zero(6);
	wire_w_datab_man_not_zero_range197w(0) <= datab_man_not_zero(7);
	wire_w_datab_man_not_zero_range203w(0) <= datab_man_not_zero(8);
	wire_w_datab_man_not_zero_range209w(0) <= datab_man_not_zero(9);
	wire_w_man_shift_full_range379w <= man_shift_full(24 DOWNTO 1);
	wire_w_result_exp_all_one_range408w(0) <= result_exp_all_one(0);
	wire_w_result_exp_all_one_range411w(0) <= result_exp_all_one(1);
	wire_w_result_exp_all_one_range414w(0) <= result_exp_all_one(2);
	wire_w_result_exp_all_one_range417w(0) <= result_exp_all_one(3);
	wire_w_result_exp_all_one_range420w(0) <= result_exp_all_one(4);
	wire_w_result_exp_all_one_range423w(0) <= result_exp_all_one(5);
	wire_w_result_exp_all_one_range426w(0) <= result_exp_all_one(6);
	wire_w_result_exp_not_zero_range438w(0) <= result_exp_not_zero(0);
	wire_w_result_exp_not_zero_range440w(0) <= result_exp_not_zero(1);
	wire_w_result_exp_not_zero_range442w(0) <= result_exp_not_zero(2);
	wire_w_result_exp_not_zero_range444w(0) <= result_exp_not_zero(3);
	wire_w_result_exp_not_zero_range446w(0) <= result_exp_not_zero(4);
	wire_w_result_exp_not_zero_range448w(0) <= result_exp_not_zero(5);
	wire_w_result_exp_not_zero_range450w(0) <= result_exp_not_zero(6);
	wire_w_result_exp_not_zero_range452w(0) <= result_exp_not_zero(7);
	wire_w_result_exp_not_zero_range454w(0) <= result_exp_not_zero(8);
	wire_w_sticky_bit_range306w(0) <= sticky_bit(0);
	wire_w_sticky_bit_range336w(0) <= sticky_bit(10);
	wire_w_sticky_bit_range339w(0) <= sticky_bit(11);
	wire_w_sticky_bit_range342w(0) <= sticky_bit(12);
	wire_w_sticky_bit_range345w(0) <= sticky_bit(13);
	wire_w_sticky_bit_range348w(0) <= sticky_bit(14);
	wire_w_sticky_bit_range351w(0) <= sticky_bit(15);
	wire_w_sticky_bit_range354w(0) <= sticky_bit(16);
	wire_w_sticky_bit_range357w(0) <= sticky_bit(17);
	wire_w_sticky_bit_range360w(0) <= sticky_bit(18);
	wire_w_sticky_bit_range363w(0) <= sticky_bit(19);
	wire_w_sticky_bit_range309w(0) <= sticky_bit(1);
	wire_w_sticky_bit_range366w(0) <= sticky_bit(20);
	wire_w_sticky_bit_range369w(0) <= sticky_bit(21);
	wire_w_sticky_bit_range312w(0) <= sticky_bit(2);
	wire_w_sticky_bit_range315w(0) <= sticky_bit(3);
	wire_w_sticky_bit_range318w(0) <= sticky_bit(4);
	wire_w_sticky_bit_range321w(0) <= sticky_bit(5);
	wire_w_sticky_bit_range324w(0) <= sticky_bit(6);
	wire_w_sticky_bit_range327w(0) <= sticky_bit(7);
	wire_w_sticky_bit_range330w(0) <= sticky_bit(8);
	wire_w_sticky_bit_range333w(0) <= sticky_bit(9);
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN dataa_exp_all_one_ff_p1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN dataa_exp_all_one_ff_p1 <= dataa_exp_all_one(7);
			END IF;
		END IF;
	END PROCESS;
	wire_dataa_exp_all_one_ff_p1_w_lg_q296w(0) <= dataa_exp_all_one_ff_p1 AND wire_dataa_man_not_zero_ff_p1_w_lg_w_lg_q290w295w(0);
	wire_dataa_exp_all_one_ff_p1_w_lg_q291w(0) <= dataa_exp_all_one_ff_p1 AND wire_dataa_man_not_zero_ff_p1_w_lg_q290w(0);
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN dataa_exp_not_zero_ff_p1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN dataa_exp_not_zero_ff_p1 <= dataa_exp_not_zero(7);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN dataa_man_not_zero_ff_p1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN dataa_man_not_zero_ff_p1 <= dataa_man_not_zero(10);
			END IF;
		END IF;
	END PROCESS;
	wire_dataa_man_not_zero_ff_p1_w_lg_w_lg_q290w295w(0) <= NOT wire_dataa_man_not_zero_ff_p1_w_lg_q290w(0);
	wire_dataa_man_not_zero_ff_p1_w_lg_q290w(0) <= dataa_man_not_zero_ff_p1 OR dataa_man_not_zero_ff_p2;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN dataa_man_not_zero_ff_p2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN dataa_man_not_zero_ff_p2 <= dataa_man_not_zero(22);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN datab_exp_all_one_ff_p1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN datab_exp_all_one_ff_p1 <= datab_exp_all_one(7);
			END IF;
		END IF;
	END PROCESS;
	wire_datab_exp_all_one_ff_p1_w_lg_q294w(0) <= datab_exp_all_one_ff_p1 AND wire_datab_man_not_zero_ff_p1_w_lg_w_lg_q288w293w(0);
	wire_datab_exp_all_one_ff_p1_w_lg_q289w(0) <= datab_exp_all_one_ff_p1 AND wire_datab_man_not_zero_ff_p1_w_lg_q288w(0);
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN datab_exp_not_zero_ff_p1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN datab_exp_not_zero_ff_p1 <= datab_exp_not_zero(7);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN datab_man_not_zero_ff_p1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN datab_man_not_zero_ff_p1 <= datab_man_not_zero(10);
			END IF;
		END IF;
	END PROCESS;
	wire_datab_man_not_zero_ff_p1_w_lg_w_lg_q288w293w(0) <= NOT wire_datab_man_not_zero_ff_p1_w_lg_q288w(0);
	wire_datab_man_not_zero_ff_p1_w_lg_q288w(0) <= datab_man_not_zero_ff_p1 OR datab_man_not_zero_ff_p2;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN datab_man_not_zero_ff_p2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN datab_man_not_zero_ff_p2 <= datab_man_not_zero(22);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN delay_exp2_bias <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN delay_exp2_bias <= delay_exp_bias;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN delay_exp3_bias <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN delay_exp3_bias <= delay_exp2_bias;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN delay_exp_bias <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN delay_exp_bias <= wire_exp_bias_subtr_result;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN delay_man_product_msb <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN delay_man_product_msb <= delay_man_product_msb_p1;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN delay_man_product_msb2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN delay_man_product_msb2 <= delay_man_product_msb;
			END IF;
		END IF;
	END PROCESS;
	wire_delay_man_product_msb2_w_lg_q393w(0) <= delay_man_product_msb2 AND wire_man_round_p2_w_q_range391w(0);
	wire_delay_man_product_msb2_w_lg_q395w(0) <= delay_man_product_msb2 XOR wire_man_round_p2_w_q_range391w(0);
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN delay_man_product_msb_p0 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN delay_man_product_msb_p0 <= wire_man_product2_mult_w_result_range298w(0);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN delay_man_product_msb_p1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN delay_man_product_msb_p1 <= delay_man_product_msb_p0;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN delay_round <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN delay_round <= wire_man_round_p2_w_lg_w_lg_w_q_range404w405w406w;
			END IF;
		END IF;
	END PROCESS;
	loop2 : FOR i IN 0 TO 21 GENERATE 
		wire_delay_round_w485w(i) <= wire_delay_round_w_lg_w_lg_w_lg_w_lg_w_q_range480w481w482w483w484w(i) AND wire_input_is_nan_ff5_w_lg_q479w(0);
	END GENERATE loop2;
	loop3 : FOR i IN 0 TO 21 GENERATE 
		wire_delay_round_w_lg_w_lg_w_lg_w_lg_w_q_range480w481w482w483w484w(i) <= wire_delay_round_w_lg_w_lg_w_lg_w_q_range480w481w482w483w(i) AND wire_w_lg_exp_is_zero458w(0);
	END GENERATE loop3;
	wire_delay_round_w_lg_w_lg_w_lg_w_lg_w_q_range470w471w472w473w474w(0) <= wire_delay_round_w_lg_w_lg_w_lg_w_q_range470w471w472w473w(0) AND wire_w_lg_exp_is_zero458w(0);
	loop4 : FOR i IN 0 TO 21 GENERATE 
		wire_delay_round_w_lg_w_lg_w_lg_w_q_range480w481w482w483w(i) <= wire_delay_round_w_lg_w_lg_w_q_range480w481w482w(i) AND wire_w_lg_exp_is_inf468w(0);
	END GENERATE loop4;
	wire_delay_round_w_lg_w_lg_w_lg_w_q_range470w471w472w473w(0) <= wire_delay_round_w_lg_w_lg_w_q_range470w471w472w(0) AND wire_w_lg_exp_is_inf468w(0);
	loop5 : FOR i IN 0 TO 21 GENERATE 
		wire_delay_round_w_lg_w_lg_w_q_range480w481w482w(i) <= wire_delay_round_w_lg_w_q_range480w481w(i) AND wire_input_is_infinity_ff5_w_lg_q469w(0);
	END GENERATE loop5;
	wire_delay_round_w_lg_w_lg_w_q_range470w471w472w(0) <= wire_delay_round_w_lg_w_q_range470w471w(0) AND wire_input_is_infinity_ff5_w_lg_q469w(0);
	loop6 : FOR i IN 0 TO 21 GENERATE 
		wire_delay_round_w_lg_w_q_range480w481w(i) <= wire_delay_round_w_q_range480w(i) AND input_not_zero_ff5;
	END GENERATE loop6;
	wire_delay_round_w_lg_w_q_range470w471w(0) <= wire_delay_round_w_q_range470w(0) AND input_not_zero_ff5;
	wire_delay_round_w475w(0) <= wire_delay_round_w_lg_w_lg_w_lg_w_lg_w_q_range470w471w472w473w474w(0) OR wire_input_is_infinity_ff5_w_lg_q467w(0);
	wire_delay_round_w_lg_w475w476w(0) <= wire_delay_round_w475w(0) OR input_is_nan_ff5;
	wire_delay_round_w_q_range480w <= delay_round(21 DOWNTO 0);
	wire_delay_round_w_q_range470w(0) <= delay_round(22);
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_add_p1 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_add_p1 <= wire_exp_add_adder_result;
			END IF;
		END IF;
	END PROCESS;
	wire_exp_add_p1_w_q_range63w <= exp_add_p1(8 DOWNTO 0);
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_adj_p1 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_adj_p1 <= delay_exp3_bias;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_adj_p2 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_adj_p2 <= wire_exp_adj_adder_result;
			END IF;
		END IF;
	END PROCESS;
	loop7 : FOR i IN 0 TO 7 GENERATE 
		wire_exp_adj_p2_w_lg_w_lg_w_q_range459w460w461w(i) <= wire_exp_adj_p2_w_lg_w_q_range459w460w(i) AND input_not_zero_ff5;
	END GENERATE loop7;
	loop8 : FOR i IN 0 TO 7 GENERATE 
		wire_exp_adj_p2_w_lg_w_q_range459w460w(i) <= wire_exp_adj_p2_w_q_range459w(i) AND wire_w_lg_exp_is_zero458w(0);
	END GENERATE loop8;
	wire_exp_adj_p2_w_lg_w_q_range432w457w(0) <= wire_exp_adj_p2_w_q_range432w(0) OR wire_w_lg_w_result_exp_not_zero_range454w456w(0);
	wire_exp_adj_p2_w_q_range410w(0) <= exp_adj_p2(1);
	wire_exp_adj_p2_w_q_range413w(0) <= exp_adj_p2(2);
	wire_exp_adj_p2_w_q_range416w(0) <= exp_adj_p2(3);
	wire_exp_adj_p2_w_q_range419w(0) <= exp_adj_p2(4);
	wire_exp_adj_p2_w_q_range422w(0) <= exp_adj_p2(5);
	wire_exp_adj_p2_w_q_range425w(0) <= exp_adj_p2(6);
	wire_exp_adj_p2_w_q_range459w <= exp_adj_p2(7 DOWNTO 0);
	wire_exp_adj_p2_w_q_range428w(0) <= exp_adj_p2(7);
	wire_exp_adj_p2_w_q_range431w(0) <= exp_adj_p2(8);
	wire_exp_adj_p2_w_q_range432w(0) <= exp_adj_p2(9);
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_bias_p1 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_bias_p1 <= wire_exp_add_p1_w_q_range63w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_bias_p2 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_bias_p2 <= exp_bias_p1;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_bias_p3 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_bias_p3 <= exp_bias_p2;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_result_ff <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_result_ff <= wire_w_lg_w_lg_inf_num464w465w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinity_dffe_0 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinity_dffe_0 <= (wire_dataa_exp_all_one_ff_p1_w_lg_q296w(0) OR wire_datab_exp_all_one_ff_p1_w_lg_q294w(0));
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinity_dffe_1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinity_dffe_1 <= input_is_infinity_dffe_0;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinity_dffe_2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinity_dffe_2 <= input_is_infinity_dffe_1;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinity_dffe_3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinity_dffe_3 <= input_is_infinity_dffe_2;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinity_ff1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinity_ff1 <= input_is_infinity_dffe_3;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinity_ff2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinity_ff2 <= input_is_infinity_ff1;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinity_ff3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinity_ff3 <= input_is_infinity_ff2;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinity_ff4 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinity_ff4 <= input_is_infinity_ff3;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinity_ff5 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinity_ff5 <= input_is_infinity_ff4;
			END IF;
		END IF;
	END PROCESS;
	wire_input_is_infinity_ff5_w_lg_q467w(0) <= input_is_infinity_ff5 AND wire_input_not_zero_ff5_w_lg_q466w(0);
	wire_input_is_infinity_ff5_w_lg_q469w(0) <= NOT input_is_infinity_ff5;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_dffe_0 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_dffe_0 <= (wire_dataa_exp_all_one_ff_p1_w_lg_q291w(0) OR wire_datab_exp_all_one_ff_p1_w_lg_q289w(0));
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_dffe_1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_dffe_1 <= input_is_nan_dffe_0;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_dffe_2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_dffe_2 <= input_is_nan_dffe_1;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_dffe_3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_dffe_3 <= input_is_nan_dffe_2;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_ff1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_ff1 <= input_is_nan_dffe_3;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_ff2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_ff2 <= input_is_nan_ff1;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_ff3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_ff3 <= input_is_nan_ff2;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_ff4 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_ff4 <= input_is_nan_ff3;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_ff5 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_ff5 <= input_is_nan_ff4;
			END IF;
		END IF;
	END PROCESS;
	wire_input_is_nan_ff5_w_lg_q479w(0) <= NOT input_is_nan_ff5;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_not_zero_dffe_0 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_not_zero_dffe_0 <= (dataa_exp_not_zero_ff_p1 AND datab_exp_not_zero_ff_p1);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_not_zero_dffe_1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_not_zero_dffe_1 <= input_not_zero_dffe_0;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_not_zero_dffe_2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_not_zero_dffe_2 <= input_not_zero_dffe_1;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_not_zero_dffe_3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_not_zero_dffe_3 <= input_not_zero_dffe_2;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_not_zero_ff1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_not_zero_ff1 <= input_not_zero_dffe_3;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_not_zero_ff2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_not_zero_ff2 <= input_not_zero_ff1;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_not_zero_ff3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_not_zero_ff3 <= input_not_zero_ff2;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_not_zero_ff4 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_not_zero_ff4 <= input_not_zero_ff3;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_not_zero_ff5 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_not_zero_ff5 <= input_not_zero_ff4;
			END IF;
		END IF;
	END PROCESS;
	wire_input_not_zero_ff5_w_lg_q466w(0) <= NOT input_not_zero_ff5;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN lsb_dffe <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN lsb_dffe <= lsb_bit;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_result_ff <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_result_ff <= ( wire_delay_round_w_lg_w475w476w & wire_delay_round_w485w);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_round_carry <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_round_carry <= man_round_carry_p0;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_round_carry_p0 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_round_carry_p0 <= round_carry;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_round_p <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_round_p <= wire_w_man_shift_full_range379w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_round_p0 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_round_p0 <= man_round_p;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_round_p1 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_round_p1 <= man_round_p0;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_round_p2 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_round_p2 <= wire_man_round_adder_result;
			END IF;
		END IF;
	END PROCESS;
	loop9 : FOR i IN 0 TO 23 GENERATE 
		wire_man_round_p2_w_lg_w_q_range404w405w(i) <= wire_man_round_p2_w_q_range404w(i) AND wire_man_round_p2_w_lg_w_q_range391w403w(0);
	END GENERATE loop9;
	loop10 : FOR i IN 0 TO 23 GENERATE 
		wire_man_round_p2_w_lg_w_q_range401w402w(i) <= wire_man_round_p2_w_q_range401w(i) AND wire_man_round_p2_w_q_range391w(0);
	END GENERATE loop10;
	wire_man_round_p2_w_lg_w_q_range391w403w(0) <= NOT wire_man_round_p2_w_q_range391w(0);
	loop11 : FOR i IN 0 TO 23 GENERATE 
		wire_man_round_p2_w_lg_w_lg_w_q_range404w405w406w(i) <= wire_man_round_p2_w_lg_w_q_range404w405w(i) OR wire_man_round_p2_w_lg_w_q_range401w402w(i);
	END GENERATE loop11;
	wire_man_round_p2_w_q_range404w <= man_round_p2(23 DOWNTO 0);
	wire_man_round_p2_w_q_range401w <= man_round_p2(24 DOWNTO 1);
	wire_man_round_p2_w_q_range391w(0) <= man_round_p2(24);
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN round_dffe <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN round_dffe <= round_bit;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_node_ff0 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_node_ff0 <= (dataa(31) XOR datab(31));
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_node_ff1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_node_ff1 <= sign_node_ff0;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_node_ff2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_node_ff2 <= sign_node_ff1;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_node_ff3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_node_ff3 <= sign_node_ff2;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_node_ff4 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_node_ff4 <= sign_node_ff3;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_node_ff5 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_node_ff5 <= sign_node_ff4;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_node_ff6 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_node_ff6 <= sign_node_ff5;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_node_ff7 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_node_ff7 <= sign_node_ff6;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_node_ff8 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_node_ff8 <= sign_node_ff7;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_node_ff9 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_node_ff9 <= sign_node_ff8;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_node_ff10 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_node_ff10 <= sign_node_ff9;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sticky_dffe <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sticky_dffe <= sticky_bit(22);
			END IF;
		END IF;
	END PROCESS;
	wire_exp_add_adder_dataa <= ( "0" & dataa(30 DOWNTO 23));
	wire_exp_add_adder_datab <= ( "0" & datab(30 DOWNTO 23));
	exp_add_adder :  lpm_add_sub
	  GENERIC MAP (
		LPM_PIPELINE => 1,
		LPM_WIDTH => 9
	  )
	  PORT MAP ( 
		aclr => aclr,
		cin => wire_gnd,
		clken => clk_en,
		clock => clock,
		dataa => wire_exp_add_adder_dataa,
		datab => wire_exp_add_adder_datab,
		result => wire_exp_add_adder_result
	  );
	wire_exp_adj_adder_datab <= ( expmod(9 DOWNTO 0));
	exp_adj_adder :  lpm_add_sub
	  GENERIC MAP (
		LPM_PIPELINE => 0,
		LPM_WIDTH => 10
	  )
	  PORT MAP ( 
		cin => wire_gnd,
		dataa => exp_adj_p1,
		datab => wire_exp_adj_adder_datab,
		result => wire_exp_adj_adder_result
	  );
	wire_exp_bias_subtr_dataa <= ( "0" & exp_bias_p3);
	wire_exp_bias_subtr_datab <= ( bias(9 DOWNTO 0));
	exp_bias_subtr :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "SUB",
		LPM_PIPELINE => 0,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTH => 10
	  )
	  PORT MAP ( 
		dataa => wire_exp_bias_subtr_dataa,
		datab => wire_exp_bias_subtr_datab,
		result => wire_exp_bias_subtr_result
	  );
	wire_man_round_adder_dataa <= ( "0" & man_round_p1);
	wire_man_round_adder_datab <= ( "000000000000000000000000" & man_round_carry);
	man_round_adder :  lpm_add_sub
	  GENERIC MAP (
		LPM_PIPELINE => 0,
		LPM_WIDTH => 25
	  )
	  PORT MAP ( 
		dataa => wire_man_round_adder_dataa,
		datab => wire_man_round_adder_datab,
		result => wire_man_round_adder_result
	  );
	loop12 : FOR i IN 0 TO 24 GENERATE 
		wire_man_product2_mult_w_lg_w_result_range302w303w(i) <= wire_man_product2_mult_w_result_range302w(i) AND wire_man_product2_mult_w_lg_w_result_range298w301w(0);
	END GENERATE loop12;
	loop13 : FOR i IN 0 TO 24 GENERATE 
		wire_man_product2_mult_w_lg_w_result_range299w300w(i) <= wire_man_product2_mult_w_result_range299w(i) AND wire_man_product2_mult_w_result_range298w(0);
	END GENERATE loop13;
	wire_man_product2_mult_w_lg_w_result_range298w373w(0) <= wire_man_product2_mult_w_result_range298w(0) AND wire_man_product2_mult_w_result_range371w(0);
	wire_man_product2_mult_w_lg_w_result_range298w301w(0) <= NOT wire_man_product2_mult_w_result_range298w(0);
	wire_man_product2_mult_dataa <= ( "1" & dataa(22 DOWNTO 0));
	wire_man_product2_mult_datab <= ( "1" & datab(22 DOWNTO 0));
	wire_man_product2_mult_w_result_range335w(0) <= wire_man_product2_mult_result(10);
	wire_man_product2_mult_w_result_range338w(0) <= wire_man_product2_mult_result(11);
	wire_man_product2_mult_w_result_range341w(0) <= wire_man_product2_mult_result(12);
	wire_man_product2_mult_w_result_range344w(0) <= wire_man_product2_mult_result(13);
	wire_man_product2_mult_w_result_range347w(0) <= wire_man_product2_mult_result(14);
	wire_man_product2_mult_w_result_range350w(0) <= wire_man_product2_mult_result(15);
	wire_man_product2_mult_w_result_range353w(0) <= wire_man_product2_mult_result(16);
	wire_man_product2_mult_w_result_range356w(0) <= wire_man_product2_mult_result(17);
	wire_man_product2_mult_w_result_range359w(0) <= wire_man_product2_mult_result(18);
	wire_man_product2_mult_w_result_range362w(0) <= wire_man_product2_mult_result(19);
	wire_man_product2_mult_w_result_range308w(0) <= wire_man_product2_mult_result(1);
	wire_man_product2_mult_w_result_range365w(0) <= wire_man_product2_mult_result(20);
	wire_man_product2_mult_w_result_range368w(0) <= wire_man_product2_mult_result(21);
	wire_man_product2_mult_w_result_range371w(0) <= wire_man_product2_mult_result(22);
	wire_man_product2_mult_w_result_range311w(0) <= wire_man_product2_mult_result(2);
	wire_man_product2_mult_w_result_range314w(0) <= wire_man_product2_mult_result(3);
	wire_man_product2_mult_w_result_range302w <= wire_man_product2_mult_result(46 DOWNTO 22);
	wire_man_product2_mult_w_result_range299w <= wire_man_product2_mult_result(47 DOWNTO 23);
	wire_man_product2_mult_w_result_range298w(0) <= wire_man_product2_mult_result(47);
	wire_man_product2_mult_w_result_range317w(0) <= wire_man_product2_mult_result(4);
	wire_man_product2_mult_w_result_range320w(0) <= wire_man_product2_mult_result(5);
	wire_man_product2_mult_w_result_range323w(0) <= wire_man_product2_mult_result(6);
	wire_man_product2_mult_w_result_range326w(0) <= wire_man_product2_mult_result(7);
	wire_man_product2_mult_w_result_range329w(0) <= wire_man_product2_mult_result(8);
	wire_man_product2_mult_w_result_range332w(0) <= wire_man_product2_mult_result(9);
	man_product2_mult :  lpm_mult
	  GENERIC MAP (
		LPM_PIPELINE => 5,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTHA => 24,
		LPM_WIDTHB => 24,
		LPM_WIDTHP => 48,
		LPM_WIDTHS => 1,
		lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES"
	  )
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => wire_man_product2_mult_dataa,
		datab => wire_man_product2_mult_datab,
		result => wire_man_product2_mult_result
	  );

 END RTL; --kn_kalman_mult_altfp_mult_oon
--VALID FILE


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY kn_kalman_mult IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		dataa		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END kn_kalman_mult;


ARCHITECTURE RTL OF kn_kalman_mult IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (31 DOWNTO 0);



	COMPONENT kn_kalman_mult_altfp_mult_oon
	PORT (
			clock	: IN STD_LOGIC ;
			dataa	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			datab	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			result	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	result    <= sub_wire0(31 DOWNTO 0);

	kn_kalman_mult_altfp_mult_oon_component : kn_kalman_mult_altfp_mult_oon
	PORT MAP (
		clock => clock,
		dataa => dataa,
		datab => datab,
		result => sub_wire0
	);



END RTL;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: PRIVATE: FPM_FORMAT STRING "Single"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
-- Retrieval info: CONSTANT: DEDICATED_MULTIPLIER_CIRCUITRY STRING "YES"
-- Retrieval info: CONSTANT: DENORMAL_SUPPORT STRING "NO"
-- Retrieval info: CONSTANT: EXCEPTION_HANDLING STRING "NO"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "UNUSED"
-- Retrieval info: CONSTANT: LPM_HINT STRING "UNUSED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "altfp_mult"
-- Retrieval info: CONSTANT: PIPELINE NUMERIC "11"
-- Retrieval info: CONSTANT: REDUCED_FUNCTIONALITY STRING "NO"
-- Retrieval info: CONSTANT: ROUNDING STRING "TO_NEAREST"
-- Retrieval info: CONSTANT: WIDTH_EXP NUMERIC "8"
-- Retrieval info: CONSTANT: WIDTH_MAN NUMERIC "23"
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: USED_PORT: dataa 0 0 32 0 INPUT NODEFVAL "dataa[31..0]"
-- Retrieval info: CONNECT: @dataa 0 0 32 0 dataa 0 0 32 0
-- Retrieval info: USED_PORT: datab 0 0 32 0 INPUT NODEFVAL "datab[31..0]"
-- Retrieval info: CONNECT: @datab 0 0 32 0 datab 0 0 32 0
-- Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT NODEFVAL "result[31..0]"
-- Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_mult.vhd TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_mult.qip TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_mult.bsf TRUE TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_mult_inst.vhd TRUE TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_mult.inc FALSE TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_mult.cmp TRUE TRUE
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX NUMERIC "1"
-- Retrieval info: LIB_FILE: lpm
