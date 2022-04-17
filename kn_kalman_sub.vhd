--32 bit float point subtraction block
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altbarrel_shift_h0e IS 
	 PORT 
	 ( 
		 aclr	:	IN  STD_LOGIC := '0';
		 clk_en	:	IN  STD_LOGIC := '1';
		 clock	:	IN  STD_LOGIC := '0';
		 data	:	IN  STD_LOGIC_VECTOR (25 DOWNTO 0);
		 distance	:	IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
		 result	:	OUT  STD_LOGIC_VECTOR (25 DOWNTO 0)
	 ); 
 END kn_kalman_sub_altbarrel_shift_h0e;

 ARCHITECTURE RTL OF kn_kalman_sub_altbarrel_shift_h0e IS

	 SIGNAL	 dir_pipe	:	STD_LOGIC_VECTOR(0 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sbit_piper1d	:	STD_LOGIC_VECTOR(25 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range668w681w682w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range668w677w678w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range689w702w703w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range689w698w699w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range711w724w725w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range711w720w721w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range733w746w747w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range733w742w743w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range755w768w769w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range755w764w765w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range668w673w674w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range689w694w695w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range711w716w717w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range733w738w739w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range755w760w761w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_sel_w_range668w681w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_sel_w_range668w677w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_sel_w_range689w702w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_sel_w_range689w698w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_sel_w_range711w724w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_sel_w_range711w720w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_sel_w_range733w746w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_sel_w_range733w742w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_sel_w_range755w768w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_sel_w_range755w764w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_dir_w_range665w680w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_dir_w_range687w701w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_dir_w_range708w723w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_dir_w_range730w745w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_dir_w_range752w767w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_sel_w_range668w673w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_sel_w_range689w694w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_sel_w_range711w716w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_sel_w_range733w738w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_sel_w_range755w760w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range668w681w682w683w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range689w702w703w704w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range711w724w725w726w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range733w746w747w748w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range755w768w769w770w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w684w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w705w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w727w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w749w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w771w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  dir_w :	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  direction_w :	STD_LOGIC;
	 SIGNAL  pad_w :	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  sbit_w :	STD_LOGIC_VECTOR (155 DOWNTO 0);
	 SIGNAL  sel_w :	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  smux_w :	STD_LOGIC_VECTOR (129 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w676w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w679w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w697w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w700w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w719w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w722w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w741w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w744w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w763w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w766w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_dir_w_range665w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_dir_w_range687w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_dir_w_range708w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_dir_w_range730w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_dir_w_range752w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_sbit_w_range728w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_sbit_w_range750w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_sbit_w_range663w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_sbit_w_range686w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_sbit_w_range706w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_sel_w_range668w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_sel_w_range689w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_sel_w_range711w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_sel_w_range733w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_sel_w_range755w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_lbarrel_shift_w_smux_w_range759w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
 BEGIN

	loop0 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range668w681w682w(i) <= wire_lbarrel_shift_w_lg_w_sel_w_range668w681w(0) AND wire_lbarrel_shift_w679w(i);
	END GENERATE loop0;
	loop1 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range668w677w678w(i) <= wire_lbarrel_shift_w_lg_w_sel_w_range668w677w(0) AND wire_lbarrel_shift_w676w(i);
	END GENERATE loop1;
	loop2 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range689w702w703w(i) <= wire_lbarrel_shift_w_lg_w_sel_w_range689w702w(0) AND wire_lbarrel_shift_w700w(i);
	END GENERATE loop2;
	loop3 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range689w698w699w(i) <= wire_lbarrel_shift_w_lg_w_sel_w_range689w698w(0) AND wire_lbarrel_shift_w697w(i);
	END GENERATE loop3;
	loop4 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range711w724w725w(i) <= wire_lbarrel_shift_w_lg_w_sel_w_range711w724w(0) AND wire_lbarrel_shift_w722w(i);
	END GENERATE loop4;
	loop5 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range711w720w721w(i) <= wire_lbarrel_shift_w_lg_w_sel_w_range711w720w(0) AND wire_lbarrel_shift_w719w(i);
	END GENERATE loop5;
	loop6 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range733w746w747w(i) <= wire_lbarrel_shift_w_lg_w_sel_w_range733w746w(0) AND wire_lbarrel_shift_w744w(i);
	END GENERATE loop6;
	loop7 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range733w742w743w(i) <= wire_lbarrel_shift_w_lg_w_sel_w_range733w742w(0) AND wire_lbarrel_shift_w741w(i);
	END GENERATE loop7;
	loop8 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range755w768w769w(i) <= wire_lbarrel_shift_w_lg_w_sel_w_range755w768w(0) AND wire_lbarrel_shift_w766w(i);
	END GENERATE loop8;
	loop9 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range755w764w765w(i) <= wire_lbarrel_shift_w_lg_w_sel_w_range755w764w(0) AND wire_lbarrel_shift_w763w(i);
	END GENERATE loop9;
	loop10 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range668w673w674w(i) <= wire_lbarrel_shift_w_lg_w_sel_w_range668w673w(0) AND wire_lbarrel_shift_w_sbit_w_range663w(i);
	END GENERATE loop10;
	loop11 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range689w694w695w(i) <= wire_lbarrel_shift_w_lg_w_sel_w_range689w694w(0) AND wire_lbarrel_shift_w_sbit_w_range686w(i);
	END GENERATE loop11;
	loop12 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range711w716w717w(i) <= wire_lbarrel_shift_w_lg_w_sel_w_range711w716w(0) AND wire_lbarrel_shift_w_sbit_w_range706w(i);
	END GENERATE loop12;
	loop13 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range733w738w739w(i) <= wire_lbarrel_shift_w_lg_w_sel_w_range733w738w(0) AND wire_lbarrel_shift_w_sbit_w_range728w(i);
	END GENERATE loop13;
	loop14 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range755w760w761w(i) <= wire_lbarrel_shift_w_lg_w_sel_w_range755w760w(0) AND wire_lbarrel_shift_w_sbit_w_range750w(i);
	END GENERATE loop14;
	wire_lbarrel_shift_w_lg_w_sel_w_range668w681w(0) <= wire_lbarrel_shift_w_sel_w_range668w(0) AND wire_lbarrel_shift_w_lg_w_dir_w_range665w680w(0);
	wire_lbarrel_shift_w_lg_w_sel_w_range668w677w(0) <= wire_lbarrel_shift_w_sel_w_range668w(0) AND wire_lbarrel_shift_w_dir_w_range665w(0);
	wire_lbarrel_shift_w_lg_w_sel_w_range689w702w(0) <= wire_lbarrel_shift_w_sel_w_range689w(0) AND wire_lbarrel_shift_w_lg_w_dir_w_range687w701w(0);
	wire_lbarrel_shift_w_lg_w_sel_w_range689w698w(0) <= wire_lbarrel_shift_w_sel_w_range689w(0) AND wire_lbarrel_shift_w_dir_w_range687w(0);
	wire_lbarrel_shift_w_lg_w_sel_w_range711w724w(0) <= wire_lbarrel_shift_w_sel_w_range711w(0) AND wire_lbarrel_shift_w_lg_w_dir_w_range708w723w(0);
	wire_lbarrel_shift_w_lg_w_sel_w_range711w720w(0) <= wire_lbarrel_shift_w_sel_w_range711w(0) AND wire_lbarrel_shift_w_dir_w_range708w(0);
	wire_lbarrel_shift_w_lg_w_sel_w_range733w746w(0) <= wire_lbarrel_shift_w_sel_w_range733w(0) AND wire_lbarrel_shift_w_lg_w_dir_w_range730w745w(0);
	wire_lbarrel_shift_w_lg_w_sel_w_range733w742w(0) <= wire_lbarrel_shift_w_sel_w_range733w(0) AND wire_lbarrel_shift_w_dir_w_range730w(0);
	wire_lbarrel_shift_w_lg_w_sel_w_range755w768w(0) <= wire_lbarrel_shift_w_sel_w_range755w(0) AND wire_lbarrel_shift_w_lg_w_dir_w_range752w767w(0);
	wire_lbarrel_shift_w_lg_w_sel_w_range755w764w(0) <= wire_lbarrel_shift_w_sel_w_range755w(0) AND wire_lbarrel_shift_w_dir_w_range752w(0);
	wire_lbarrel_shift_w_lg_w_dir_w_range665w680w(0) <= NOT wire_lbarrel_shift_w_dir_w_range665w(0);
	wire_lbarrel_shift_w_lg_w_dir_w_range687w701w(0) <= NOT wire_lbarrel_shift_w_dir_w_range687w(0);
	wire_lbarrel_shift_w_lg_w_dir_w_range708w723w(0) <= NOT wire_lbarrel_shift_w_dir_w_range708w(0);
	wire_lbarrel_shift_w_lg_w_dir_w_range730w745w(0) <= NOT wire_lbarrel_shift_w_dir_w_range730w(0);
	wire_lbarrel_shift_w_lg_w_dir_w_range752w767w(0) <= NOT wire_lbarrel_shift_w_dir_w_range752w(0);
	wire_lbarrel_shift_w_lg_w_sel_w_range668w673w(0) <= NOT wire_lbarrel_shift_w_sel_w_range668w(0);
	wire_lbarrel_shift_w_lg_w_sel_w_range689w694w(0) <= NOT wire_lbarrel_shift_w_sel_w_range689w(0);
	wire_lbarrel_shift_w_lg_w_sel_w_range711w716w(0) <= NOT wire_lbarrel_shift_w_sel_w_range711w(0);
	wire_lbarrel_shift_w_lg_w_sel_w_range733w738w(0) <= NOT wire_lbarrel_shift_w_sel_w_range733w(0);
	wire_lbarrel_shift_w_lg_w_sel_w_range755w760w(0) <= NOT wire_lbarrel_shift_w_sel_w_range755w(0);
	loop15 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range668w681w682w683w(i) <= wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range668w681w682w(i) OR wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range668w677w678w(i);
	END GENERATE loop15;
	loop16 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range689w702w703w704w(i) <= wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range689w702w703w(i) OR wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range689w698w699w(i);
	END GENERATE loop16;
	loop17 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range711w724w725w726w(i) <= wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range711w724w725w(i) OR wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range711w720w721w(i);
	END GENERATE loop17;
	loop18 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range733w746w747w748w(i) <= wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range733w746w747w(i) OR wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range733w742w743w(i);
	END GENERATE loop18;
	loop19 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range755w768w769w770w(i) <= wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range755w768w769w(i) OR wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range755w764w765w(i);
	END GENERATE loop19;
	loop20 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w684w(i) <= wire_lbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range668w681w682w683w(i) OR wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range668w673w674w(i);
	END GENERATE loop20;
	loop21 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w705w(i) <= wire_lbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range689w702w703w704w(i) OR wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range689w694w695w(i);
	END GENERATE loop21;
	loop22 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w727w(i) <= wire_lbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range711w724w725w726w(i) OR wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range711w716w717w(i);
	END GENERATE loop22;
	loop23 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w749w(i) <= wire_lbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range733w746w747w748w(i) OR wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range733w738w739w(i);
	END GENERATE loop23;
	loop24 : FOR i IN 0 TO 25 GENERATE 
		wire_lbarrel_shift_w771w(i) <= wire_lbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range755w768w769w770w(i) OR wire_lbarrel_shift_w_lg_w_lg_w_sel_w_range755w760w761w(i);
	END GENERATE loop24;
	dir_w <= ( dir_pipe(0) & dir_w(3 DOWNTO 0) & direction_w);
	direction_w <= '0';
	pad_w <= (OTHERS => '0');
	result <= sbit_w(155 DOWNTO 130);
	sbit_w <= ( sbit_piper1d & smux_w(103 DOWNTO 0) & data);
	sel_w <= ( distance(4 DOWNTO 0));
	smux_w <= ( wire_lbarrel_shift_w771w & wire_lbarrel_shift_w749w & wire_lbarrel_shift_w727w & wire_lbarrel_shift_w705w & wire_lbarrel_shift_w684w);
	wire_lbarrel_shift_w676w <= ( pad_w(0) & sbit_w(25 DOWNTO 1));
	wire_lbarrel_shift_w679w <= ( sbit_w(24 DOWNTO 0) & pad_w(0));
	wire_lbarrel_shift_w697w <= ( pad_w(1 DOWNTO 0) & sbit_w(51 DOWNTO 28));
	wire_lbarrel_shift_w700w <= ( sbit_w(49 DOWNTO 26) & pad_w(1 DOWNTO 0));
	wire_lbarrel_shift_w719w <= ( pad_w(3 DOWNTO 0) & sbit_w(77 DOWNTO 56));
	wire_lbarrel_shift_w722w <= ( sbit_w(73 DOWNTO 52) & pad_w(3 DOWNTO 0));
	wire_lbarrel_shift_w741w <= ( pad_w(7 DOWNTO 0) & sbit_w(103 DOWNTO 86));
	wire_lbarrel_shift_w744w <= ( sbit_w(95 DOWNTO 78) & pad_w(7 DOWNTO 0));
	wire_lbarrel_shift_w763w <= ( pad_w(15 DOWNTO 0) & sbit_w(129 DOWNTO 120));
	wire_lbarrel_shift_w766w <= ( sbit_w(113 DOWNTO 104) & pad_w(15 DOWNTO 0));
	wire_lbarrel_shift_w_dir_w_range665w(0) <= dir_w(0);
	wire_lbarrel_shift_w_dir_w_range687w(0) <= dir_w(1);
	wire_lbarrel_shift_w_dir_w_range708w(0) <= dir_w(2);
	wire_lbarrel_shift_w_dir_w_range730w(0) <= dir_w(3);
	wire_lbarrel_shift_w_dir_w_range752w(0) <= dir_w(4);
	wire_lbarrel_shift_w_sbit_w_range728w <= sbit_w(103 DOWNTO 78);
	wire_lbarrel_shift_w_sbit_w_range750w <= sbit_w(129 DOWNTO 104);
	wire_lbarrel_shift_w_sbit_w_range663w <= sbit_w(25 DOWNTO 0);
	wire_lbarrel_shift_w_sbit_w_range686w <= sbit_w(51 DOWNTO 26);
	wire_lbarrel_shift_w_sbit_w_range706w <= sbit_w(77 DOWNTO 52);
	wire_lbarrel_shift_w_sel_w_range668w(0) <= sel_w(0);
	wire_lbarrel_shift_w_sel_w_range689w(0) <= sel_w(1);
	wire_lbarrel_shift_w_sel_w_range711w(0) <= sel_w(2);
	wire_lbarrel_shift_w_sel_w_range733w(0) <= sel_w(3);
	wire_lbarrel_shift_w_sel_w_range755w(0) <= sel_w(4);
	wire_lbarrel_shift_w_smux_w_range759w <= smux_w(129 DOWNTO 104);
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN dir_pipe <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN dir_pipe(0) <= ( dir_w(4));
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sbit_piper1d <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sbit_piper1d <= wire_lbarrel_shift_w_smux_w_range759w;
			END IF;
		END IF;
	END PROCESS;

 END RTL; --kn_kalman_sub_altbarrel_shift_h0e


--altbarrel_shift CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone II" PIPELINE=1 REGISTER_OUTPUT="NO" SHIFTDIR="RIGHT" WIDTH=26 WIDTHDIST=5 aclr clk_en clock data distance result
--VERSION_BEGIN 11.1SP2 cbx_altbarrel_shift 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END

--synthesis_resources = reg 29 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altbarrel_shift_n3g IS 
	 PORT 
	 ( 
		 aclr	:	IN  STD_LOGIC := '0';
		 clk_en	:	IN  STD_LOGIC := '1';
		 clock	:	IN  STD_LOGIC := '0';
		 data	:	IN  STD_LOGIC_VECTOR (25 DOWNTO 0);
		 distance	:	IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
		 result	:	OUT  STD_LOGIC_VECTOR (25 DOWNTO 0)
	 ); 
 END kn_kalman_sub_altbarrel_shift_n3g;

 ARCHITECTURE RTL OF kn_kalman_sub_altbarrel_shift_n3g IS

	 SIGNAL	 dir_pipe	:	STD_LOGIC_VECTOR(0 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sbit_piper1d	:	STD_LOGIC_VECTOR(25 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sel_pipec3r1d	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sel_pipec4r1d	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range783w796w797w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range783w792w793w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range804w817w818w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range804w813w814w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range826w839w840w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range826w835w836w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range849w861w862w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range849w857w858w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range868w880w881w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range868w876w877w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range783w788w789w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range804w809w810w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range826w831w832w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range849w853w854w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range868w872w873w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_sel_w_range783w796w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_sel_w_range783w792w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_sel_w_range804w817w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_sel_w_range804w813w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_sel_w_range826w839w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_sel_w_range826w835w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_sel_w_range849w861w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_sel_w_range849w857w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_sel_w_range868w880w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_sel_w_range868w876w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_dir_w_range780w795w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_dir_w_range802w816w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_dir_w_range823w838w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_dir_w_range847w860w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_dir_w_range866w879w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_sel_w_range783w788w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_sel_w_range804w809w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_sel_w_range826w831w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_sel_w_range849w853w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_sel_w_range868w872w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range783w796w797w798w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range804w817w818w819w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range826w839w840w841w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range849w861w862w863w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range868w880w881w882w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w799w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w820w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w842w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w864w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w883w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  dir_w :	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  direction_w :	STD_LOGIC;
	 SIGNAL  pad_w :	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  sbit_w :	STD_LOGIC_VECTOR (155 DOWNTO 0);
	 SIGNAL  sel_w :	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  smux_w :	STD_LOGIC_VECTOR (129 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w791w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w794w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w812w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w815w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w834w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w837w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w856w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w859w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w875w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w878w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_dir_w_range780w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_dir_w_range802w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_dir_w_range823w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_dir_w_range847w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_dir_w_range866w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_sbit_w_range843w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_sbit_w_range865w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_sbit_w_range778w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_sbit_w_range801w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_sbit_w_range821w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_sel_w_range783w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_sel_w_range804w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_sel_w_range826w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_sel_w_range849w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_sel_w_range868w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_w_smux_w_range830w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
 BEGIN

	loop25 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range783w796w797w(i) <= wire_rbarrel_shift_w_lg_w_sel_w_range783w796w(0) AND wire_rbarrel_shift_w794w(i);
	END GENERATE loop25;
	loop26 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range783w792w793w(i) <= wire_rbarrel_shift_w_lg_w_sel_w_range783w792w(0) AND wire_rbarrel_shift_w791w(i);
	END GENERATE loop26;
	loop27 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range804w817w818w(i) <= wire_rbarrel_shift_w_lg_w_sel_w_range804w817w(0) AND wire_rbarrel_shift_w815w(i);
	END GENERATE loop27;
	loop28 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range804w813w814w(i) <= wire_rbarrel_shift_w_lg_w_sel_w_range804w813w(0) AND wire_rbarrel_shift_w812w(i);
	END GENERATE loop28;
	loop29 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range826w839w840w(i) <= wire_rbarrel_shift_w_lg_w_sel_w_range826w839w(0) AND wire_rbarrel_shift_w837w(i);
	END GENERATE loop29;
	loop30 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range826w835w836w(i) <= wire_rbarrel_shift_w_lg_w_sel_w_range826w835w(0) AND wire_rbarrel_shift_w834w(i);
	END GENERATE loop30;
	loop31 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range849w861w862w(i) <= wire_rbarrel_shift_w_lg_w_sel_w_range849w861w(0) AND wire_rbarrel_shift_w859w(i);
	END GENERATE loop31;
	loop32 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range849w857w858w(i) <= wire_rbarrel_shift_w_lg_w_sel_w_range849w857w(0) AND wire_rbarrel_shift_w856w(i);
	END GENERATE loop32;
	loop33 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range868w880w881w(i) <= wire_rbarrel_shift_w_lg_w_sel_w_range868w880w(0) AND wire_rbarrel_shift_w878w(i);
	END GENERATE loop33;
	loop34 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range868w876w877w(i) <= wire_rbarrel_shift_w_lg_w_sel_w_range868w876w(0) AND wire_rbarrel_shift_w875w(i);
	END GENERATE loop34;
	loop35 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range783w788w789w(i) <= wire_rbarrel_shift_w_lg_w_sel_w_range783w788w(0) AND wire_rbarrel_shift_w_sbit_w_range778w(i);
	END GENERATE loop35;
	loop36 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range804w809w810w(i) <= wire_rbarrel_shift_w_lg_w_sel_w_range804w809w(0) AND wire_rbarrel_shift_w_sbit_w_range801w(i);
	END GENERATE loop36;
	loop37 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range826w831w832w(i) <= wire_rbarrel_shift_w_lg_w_sel_w_range826w831w(0) AND wire_rbarrel_shift_w_sbit_w_range821w(i);
	END GENERATE loop37;
	loop38 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range849w853w854w(i) <= wire_rbarrel_shift_w_lg_w_sel_w_range849w853w(0) AND wire_rbarrel_shift_w_sbit_w_range843w(i);
	END GENERATE loop38;
	loop39 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range868w872w873w(i) <= wire_rbarrel_shift_w_lg_w_sel_w_range868w872w(0) AND wire_rbarrel_shift_w_sbit_w_range865w(i);
	END GENERATE loop39;
	wire_rbarrel_shift_w_lg_w_sel_w_range783w796w(0) <= wire_rbarrel_shift_w_sel_w_range783w(0) AND wire_rbarrel_shift_w_lg_w_dir_w_range780w795w(0);
	wire_rbarrel_shift_w_lg_w_sel_w_range783w792w(0) <= wire_rbarrel_shift_w_sel_w_range783w(0) AND wire_rbarrel_shift_w_dir_w_range780w(0);
	wire_rbarrel_shift_w_lg_w_sel_w_range804w817w(0) <= wire_rbarrel_shift_w_sel_w_range804w(0) AND wire_rbarrel_shift_w_lg_w_dir_w_range802w816w(0);
	wire_rbarrel_shift_w_lg_w_sel_w_range804w813w(0) <= wire_rbarrel_shift_w_sel_w_range804w(0) AND wire_rbarrel_shift_w_dir_w_range802w(0);
	wire_rbarrel_shift_w_lg_w_sel_w_range826w839w(0) <= wire_rbarrel_shift_w_sel_w_range826w(0) AND wire_rbarrel_shift_w_lg_w_dir_w_range823w838w(0);
	wire_rbarrel_shift_w_lg_w_sel_w_range826w835w(0) <= wire_rbarrel_shift_w_sel_w_range826w(0) AND wire_rbarrel_shift_w_dir_w_range823w(0);
	wire_rbarrel_shift_w_lg_w_sel_w_range849w861w(0) <= wire_rbarrel_shift_w_sel_w_range849w(0) AND wire_rbarrel_shift_w_lg_w_dir_w_range847w860w(0);
	wire_rbarrel_shift_w_lg_w_sel_w_range849w857w(0) <= wire_rbarrel_shift_w_sel_w_range849w(0) AND wire_rbarrel_shift_w_dir_w_range847w(0);
	wire_rbarrel_shift_w_lg_w_sel_w_range868w880w(0) <= wire_rbarrel_shift_w_sel_w_range868w(0) AND wire_rbarrel_shift_w_lg_w_dir_w_range866w879w(0);
	wire_rbarrel_shift_w_lg_w_sel_w_range868w876w(0) <= wire_rbarrel_shift_w_sel_w_range868w(0) AND wire_rbarrel_shift_w_dir_w_range866w(0);
	wire_rbarrel_shift_w_lg_w_dir_w_range780w795w(0) <= NOT wire_rbarrel_shift_w_dir_w_range780w(0);
	wire_rbarrel_shift_w_lg_w_dir_w_range802w816w(0) <= NOT wire_rbarrel_shift_w_dir_w_range802w(0);
	wire_rbarrel_shift_w_lg_w_dir_w_range823w838w(0) <= NOT wire_rbarrel_shift_w_dir_w_range823w(0);
	wire_rbarrel_shift_w_lg_w_dir_w_range847w860w(0) <= NOT wire_rbarrel_shift_w_dir_w_range847w(0);
	wire_rbarrel_shift_w_lg_w_dir_w_range866w879w(0) <= NOT wire_rbarrel_shift_w_dir_w_range866w(0);
	wire_rbarrel_shift_w_lg_w_sel_w_range783w788w(0) <= NOT wire_rbarrel_shift_w_sel_w_range783w(0);
	wire_rbarrel_shift_w_lg_w_sel_w_range804w809w(0) <= NOT wire_rbarrel_shift_w_sel_w_range804w(0);
	wire_rbarrel_shift_w_lg_w_sel_w_range826w831w(0) <= NOT wire_rbarrel_shift_w_sel_w_range826w(0);
	wire_rbarrel_shift_w_lg_w_sel_w_range849w853w(0) <= NOT wire_rbarrel_shift_w_sel_w_range849w(0);
	wire_rbarrel_shift_w_lg_w_sel_w_range868w872w(0) <= NOT wire_rbarrel_shift_w_sel_w_range868w(0);
	loop40 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range783w796w797w798w(i) <= wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range783w796w797w(i) OR wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range783w792w793w(i);
	END GENERATE loop40;
	loop41 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range804w817w818w819w(i) <= wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range804w817w818w(i) OR wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range804w813w814w(i);
	END GENERATE loop41;
	loop42 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range826w839w840w841w(i) <= wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range826w839w840w(i) OR wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range826w835w836w(i);
	END GENERATE loop42;
	loop43 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range849w861w862w863w(i) <= wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range849w861w862w(i) OR wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range849w857w858w(i);
	END GENERATE loop43;
	loop44 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range868w880w881w882w(i) <= wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range868w880w881w(i) OR wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range868w876w877w(i);
	END GENERATE loop44;
	loop45 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w799w(i) <= wire_rbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range783w796w797w798w(i) OR wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range783w788w789w(i);
	END GENERATE loop45;
	loop46 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w820w(i) <= wire_rbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range804w817w818w819w(i) OR wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range804w809w810w(i);
	END GENERATE loop46;
	loop47 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w842w(i) <= wire_rbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range826w839w840w841w(i) OR wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range826w831w832w(i);
	END GENERATE loop47;
	loop48 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w864w(i) <= wire_rbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range849w861w862w863w(i) OR wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range849w853w854w(i);
	END GENERATE loop48;
	loop49 : FOR i IN 0 TO 25 GENERATE 
		wire_rbarrel_shift_w883w(i) <= wire_rbarrel_shift_w_lg_w_lg_w_lg_w_sel_w_range868w880w881w882w(i) OR wire_rbarrel_shift_w_lg_w_lg_w_sel_w_range868w872w873w(i);
	END GENERATE loop49;
	dir_w <= ( dir_w(4 DOWNTO 3) & dir_pipe(0) & dir_w(1 DOWNTO 0) & direction_w);
	direction_w <= '1';
	pad_w <= (OTHERS => '0');
	result <= sbit_w(155 DOWNTO 130);
	sbit_w <= ( smux_w(129 DOWNTO 78) & sbit_piper1d & smux_w(51 DOWNTO 0) & data);
	sel_w <= ( sel_pipec4r1d & sel_pipec3r1d & distance(2 DOWNTO 0));
	smux_w <= ( wire_rbarrel_shift_w883w & wire_rbarrel_shift_w864w & wire_rbarrel_shift_w842w & wire_rbarrel_shift_w820w & wire_rbarrel_shift_w799w);
	wire_rbarrel_shift_w791w <= ( pad_w(0) & sbit_w(25 DOWNTO 1));
	wire_rbarrel_shift_w794w <= ( sbit_w(24 DOWNTO 0) & pad_w(0));
	wire_rbarrel_shift_w812w <= ( pad_w(1 DOWNTO 0) & sbit_w(51 DOWNTO 28));
	wire_rbarrel_shift_w815w <= ( sbit_w(49 DOWNTO 26) & pad_w(1 DOWNTO 0));
	wire_rbarrel_shift_w834w <= ( pad_w(3 DOWNTO 0) & sbit_w(77 DOWNTO 56));
	wire_rbarrel_shift_w837w <= ( sbit_w(73 DOWNTO 52) & pad_w(3 DOWNTO 0));
	wire_rbarrel_shift_w856w <= ( pad_w(7 DOWNTO 0) & sbit_w(103 DOWNTO 86));
	wire_rbarrel_shift_w859w <= ( sbit_w(95 DOWNTO 78) & pad_w(7 DOWNTO 0));
	wire_rbarrel_shift_w875w <= ( pad_w(15 DOWNTO 0) & sbit_w(129 DOWNTO 120));
	wire_rbarrel_shift_w878w <= ( sbit_w(113 DOWNTO 104) & pad_w(15 DOWNTO 0));
	wire_rbarrel_shift_w_dir_w_range780w(0) <= dir_w(0);
	wire_rbarrel_shift_w_dir_w_range802w(0) <= dir_w(1);
	wire_rbarrel_shift_w_dir_w_range823w(0) <= dir_w(2);
	wire_rbarrel_shift_w_dir_w_range847w(0) <= dir_w(3);
	wire_rbarrel_shift_w_dir_w_range866w(0) <= dir_w(4);
	wire_rbarrel_shift_w_sbit_w_range843w <= sbit_w(103 DOWNTO 78);
	wire_rbarrel_shift_w_sbit_w_range865w <= sbit_w(129 DOWNTO 104);
	wire_rbarrel_shift_w_sbit_w_range778w <= sbit_w(25 DOWNTO 0);
	wire_rbarrel_shift_w_sbit_w_range801w <= sbit_w(51 DOWNTO 26);
	wire_rbarrel_shift_w_sbit_w_range821w <= sbit_w(77 DOWNTO 52);
	wire_rbarrel_shift_w_sel_w_range783w(0) <= sel_w(0);
	wire_rbarrel_shift_w_sel_w_range804w(0) <= sel_w(1);
	wire_rbarrel_shift_w_sel_w_range826w(0) <= sel_w(2);
	wire_rbarrel_shift_w_sel_w_range849w(0) <= sel_w(3);
	wire_rbarrel_shift_w_sel_w_range868w(0) <= sel_w(4);
	wire_rbarrel_shift_w_smux_w_range830w <= smux_w(77 DOWNTO 52);
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN dir_pipe <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN dir_pipe(0) <= ( dir_w(2));
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sbit_piper1d <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sbit_piper1d <= wire_rbarrel_shift_w_smux_w_range830w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sel_pipec3r1d <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sel_pipec3r1d <= distance(3);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sel_pipec4r1d <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sel_pipec4r1d <= distance(4);
			END IF;
		END IF;
	END PROCESS;

 END RTL; --kn_kalman_sub_altbarrel_shift_n3g


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" PIPELINE=1 WIDTH=32 WIDTHAD=5 aclr clk_en clock data q
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="NO" PIPELINE=0 WIDTH=16 WIDTHAD=4 data q
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="NO" WIDTH=8 WIDTHAD=3 data q zero
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="NO" WIDTH=4 WIDTHAD=2 data q zero
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="NO" WIDTH=2 WIDTHAD=1 data q zero
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_3e8 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (0 DOWNTO 0);
		 zero	:	OUT  STD_LOGIC
	 ); 
 END kn_kalman_sub_altpriority_encoder_3e8;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_3e8 IS

 BEGIN

	q(0) <= ( data(1));
	zero <= (NOT (data(0) OR data(1)));

 END RTL; --kn_kalman_sub_altpriority_encoder_3e8

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_6e8 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 zero	:	OUT  STD_LOGIC
	 ); 
 END kn_kalman_sub_altpriority_encoder_6e8;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_6e8 IS

	 SIGNAL  wire_altpriority_encoder13_q	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder13_zero	:	STD_LOGIC;
	 SIGNAL  wire_altpriority_encoder14_w_lg_w_lg_zero919w920w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder14_w_lg_zero921w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder14_w_lg_zero919w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder14_w_lg_w_lg_zero921w922w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder14_q	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder14_zero	:	STD_LOGIC;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_3e8
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(0 DOWNTO 0);
		zero	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
 BEGIN

	q <= ( wire_altpriority_encoder14_w_lg_zero919w & wire_altpriority_encoder14_w_lg_w_lg_zero921w922w);
	zero <= (wire_altpriority_encoder13_zero AND wire_altpriority_encoder14_zero);
	altpriority_encoder13 :  kn_kalman_sub_altpriority_encoder_3e8
	  PORT MAP ( 
		data => data(1 DOWNTO 0),
		q => wire_altpriority_encoder13_q,
		zero => wire_altpriority_encoder13_zero
	  );
	wire_altpriority_encoder14_w_lg_w_lg_zero919w920w(0) <= wire_altpriority_encoder14_w_lg_zero919w(0) AND wire_altpriority_encoder14_q(0);
	wire_altpriority_encoder14_w_lg_zero921w(0) <= wire_altpriority_encoder14_zero AND wire_altpriority_encoder13_q(0);
	wire_altpriority_encoder14_w_lg_zero919w(0) <= NOT wire_altpriority_encoder14_zero;
	wire_altpriority_encoder14_w_lg_w_lg_zero921w922w(0) <= wire_altpriority_encoder14_w_lg_zero921w(0) OR wire_altpriority_encoder14_w_lg_w_lg_zero919w920w(0);
	altpriority_encoder14 :  kn_kalman_sub_altpriority_encoder_3e8
	  PORT MAP ( 
		data => data(3 DOWNTO 2),
		q => wire_altpriority_encoder14_q,
		zero => wire_altpriority_encoder14_zero
	  );

 END RTL; --kn_kalman_sub_altpriority_encoder_6e8

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_be8 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (2 DOWNTO 0);
		 zero	:	OUT  STD_LOGIC
	 ); 
 END kn_kalman_sub_altpriority_encoder_be8;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_be8 IS

	 SIGNAL  wire_altpriority_encoder11_q	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder11_zero	:	STD_LOGIC;
	 SIGNAL  wire_altpriority_encoder12_w_lg_w_lg_zero909w910w	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder12_w_lg_zero911w	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder12_w_lg_zero909w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder12_w_lg_w_lg_zero911w912w	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder12_q	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder12_zero	:	STD_LOGIC;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_6e8
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		zero	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
 BEGIN

	q <= ( wire_altpriority_encoder12_w_lg_zero909w & wire_altpriority_encoder12_w_lg_w_lg_zero911w912w);
	zero <= (wire_altpriority_encoder11_zero AND wire_altpriority_encoder12_zero);
	altpriority_encoder11 :  kn_kalman_sub_altpriority_encoder_6e8
	  PORT MAP ( 
		data => data(3 DOWNTO 0),
		q => wire_altpriority_encoder11_q,
		zero => wire_altpriority_encoder11_zero
	  );
	loop50 : FOR i IN 0 TO 1 GENERATE 
		wire_altpriority_encoder12_w_lg_w_lg_zero909w910w(i) <= wire_altpriority_encoder12_w_lg_zero909w(0) AND wire_altpriority_encoder12_q(i);
	END GENERATE loop50;
	loop51 : FOR i IN 0 TO 1 GENERATE 
		wire_altpriority_encoder12_w_lg_zero911w(i) <= wire_altpriority_encoder12_zero AND wire_altpriority_encoder11_q(i);
	END GENERATE loop51;
	wire_altpriority_encoder12_w_lg_zero909w(0) <= NOT wire_altpriority_encoder12_zero;
	loop52 : FOR i IN 0 TO 1 GENERATE 
		wire_altpriority_encoder12_w_lg_w_lg_zero911w912w(i) <= wire_altpriority_encoder12_w_lg_zero911w(i) OR wire_altpriority_encoder12_w_lg_w_lg_zero909w910w(i);
	END GENERATE loop52;
	altpriority_encoder12 :  kn_kalman_sub_altpriority_encoder_6e8
	  PORT MAP ( 
		data => data(7 DOWNTO 4),
		q => wire_altpriority_encoder12_q,
		zero => wire_altpriority_encoder12_zero
	  );

 END RTL; --kn_kalman_sub_altpriority_encoder_be8


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="NO" WIDTH=8 WIDTHAD=3 data q
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="NO" WIDTH=4 WIDTHAD=2 data q
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="NO" WIDTH=2 WIDTHAD=1 data q
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_3v7 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (0 DOWNTO 0)
	 ); 
 END kn_kalman_sub_altpriority_encoder_3v7;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_3v7 IS

 BEGIN

	q(0) <= ( data(1));

 END RTL; --kn_kalman_sub_altpriority_encoder_3v7

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_6v7 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (1 DOWNTO 0)
	 ); 
 END kn_kalman_sub_altpriority_encoder_6v7;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_6v7 IS

	 SIGNAL  wire_altpriority_encoder17_q	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder18_w_lg_w_lg_zero944w945w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder18_w_lg_zero946w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder18_w_lg_zero944w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder18_w_lg_w_lg_zero946w947w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder18_q	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder18_zero	:	STD_LOGIC;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_3v7
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(0 DOWNTO 0)
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_3e8
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(0 DOWNTO 0);
		zero	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
 BEGIN

	q <= ( wire_altpriority_encoder18_w_lg_zero944w & wire_altpriority_encoder18_w_lg_w_lg_zero946w947w);
	altpriority_encoder17 :  kn_kalman_sub_altpriority_encoder_3v7
	  PORT MAP ( 
		data => data(1 DOWNTO 0),
		q => wire_altpriority_encoder17_q
	  );
	wire_altpriority_encoder18_w_lg_w_lg_zero944w945w(0) <= wire_altpriority_encoder18_w_lg_zero944w(0) AND wire_altpriority_encoder18_q(0);
	wire_altpriority_encoder18_w_lg_zero946w(0) <= wire_altpriority_encoder18_zero AND wire_altpriority_encoder17_q(0);
	wire_altpriority_encoder18_w_lg_zero944w(0) <= NOT wire_altpriority_encoder18_zero;
	wire_altpriority_encoder18_w_lg_w_lg_zero946w947w(0) <= wire_altpriority_encoder18_w_lg_zero946w(0) OR wire_altpriority_encoder18_w_lg_w_lg_zero944w945w(0);
	altpriority_encoder18 :  kn_kalman_sub_altpriority_encoder_3e8
	  PORT MAP ( 
		data => data(3 DOWNTO 2),
		q => wire_altpriority_encoder18_q,
		zero => wire_altpriority_encoder18_zero
	  );

 END RTL; --kn_kalman_sub_altpriority_encoder_6v7

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_bv7 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (2 DOWNTO 0)
	 ); 
 END kn_kalman_sub_altpriority_encoder_bv7;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_bv7 IS

	 SIGNAL  wire_altpriority_encoder15_q	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder16_w_lg_w_lg_zero935w936w	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder16_w_lg_zero937w	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder16_w_lg_zero935w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder16_w_lg_w_lg_zero937w938w	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder16_q	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder16_zero	:	STD_LOGIC;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_6v7
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_6e8
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		zero	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
 BEGIN

	q <= ( wire_altpriority_encoder16_w_lg_zero935w & wire_altpriority_encoder16_w_lg_w_lg_zero937w938w);
	altpriority_encoder15 :  kn_kalman_sub_altpriority_encoder_6v7
	  PORT MAP ( 
		data => data(3 DOWNTO 0),
		q => wire_altpriority_encoder15_q
	  );
	loop53 : FOR i IN 0 TO 1 GENERATE 
		wire_altpriority_encoder16_w_lg_w_lg_zero935w936w(i) <= wire_altpriority_encoder16_w_lg_zero935w(0) AND wire_altpriority_encoder16_q(i);
	END GENERATE loop53;
	loop54 : FOR i IN 0 TO 1 GENERATE 
		wire_altpriority_encoder16_w_lg_zero937w(i) <= wire_altpriority_encoder16_zero AND wire_altpriority_encoder15_q(i);
	END GENERATE loop54;
	wire_altpriority_encoder16_w_lg_zero935w(0) <= NOT wire_altpriority_encoder16_zero;
	loop55 : FOR i IN 0 TO 1 GENERATE 
		wire_altpriority_encoder16_w_lg_w_lg_zero937w938w(i) <= wire_altpriority_encoder16_w_lg_zero937w(i) OR wire_altpriority_encoder16_w_lg_w_lg_zero935w936w(i);
	END GENERATE loop55;
	altpriority_encoder16 :  kn_kalman_sub_altpriority_encoder_6e8
	  PORT MAP ( 
		data => data(7 DOWNTO 4),
		q => wire_altpriority_encoder16_q,
		zero => wire_altpriority_encoder16_zero
	  );

 END RTL; --kn_kalman_sub_altpriority_encoder_bv7

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_uv8 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (3 DOWNTO 0)
	 ); 
 END kn_kalman_sub_altpriority_encoder_uv8;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_uv8 IS

	 SIGNAL  wire_altpriority_encoder10_w_lg_w_lg_zero900w901w	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder10_w_lg_zero902w	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder10_w_lg_zero900w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder10_w_lg_w_lg_zero902w903w	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder10_q	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder10_zero	:	STD_LOGIC;
	 SIGNAL  wire_altpriority_encoder9_q	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 COMPONENT  kn_kalman_sub_altpriority_encoder_be8
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(2 DOWNTO 0);
		zero	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_bv7
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
	 ); 
	 END COMPONENT;
 BEGIN

	q <= ( wire_altpriority_encoder10_w_lg_zero900w & wire_altpriority_encoder10_w_lg_w_lg_zero902w903w);
	loop56 : FOR i IN 0 TO 2 GENERATE 
		wire_altpriority_encoder10_w_lg_w_lg_zero900w901w(i) <= wire_altpriority_encoder10_w_lg_zero900w(0) AND wire_altpriority_encoder10_q(i);
	END GENERATE loop56;
	loop57 : FOR i IN 0 TO 2 GENERATE 
		wire_altpriority_encoder10_w_lg_zero902w(i) <= wire_altpriority_encoder10_zero AND wire_altpriority_encoder9_q(i);
	END GENERATE loop57;
	wire_altpriority_encoder10_w_lg_zero900w(0) <= NOT wire_altpriority_encoder10_zero;
	loop58 : FOR i IN 0 TO 2 GENERATE 
		wire_altpriority_encoder10_w_lg_w_lg_zero902w903w(i) <= wire_altpriority_encoder10_w_lg_zero902w(i) OR wire_altpriority_encoder10_w_lg_w_lg_zero900w901w(i);
	END GENERATE loop58;
	altpriority_encoder10 :  kn_kalman_sub_altpriority_encoder_be8
	  PORT MAP ( 
		data => data(15 DOWNTO 8),
		q => wire_altpriority_encoder10_q,
		zero => wire_altpriority_encoder10_zero
	  );
	altpriority_encoder9 :  kn_kalman_sub_altpriority_encoder_bv7
	  PORT MAP ( 
		data => data(7 DOWNTO 0),
		q => wire_altpriority_encoder9_q
	  );

 END RTL; --kn_kalman_sub_altpriority_encoder_uv8


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="NO" PIPELINE=0 WIDTH=16 WIDTHAD=4 data q zero
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_ue9 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 zero	:	OUT  STD_LOGIC
	 ); 
 END kn_kalman_sub_altpriority_encoder_ue9;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_ue9 IS

	 SIGNAL  wire_altpriority_encoder19_q	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder19_zero	:	STD_LOGIC;
	 SIGNAL  wire_altpriority_encoder20_w_lg_w_lg_zero956w957w	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder20_w_lg_zero958w	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder20_w_lg_zero956w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder20_w_lg_w_lg_zero958w959w	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder20_q	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder20_zero	:	STD_LOGIC;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_be8
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(2 DOWNTO 0);
		zero	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
 BEGIN

	q <= ( wire_altpriority_encoder20_w_lg_zero956w & wire_altpriority_encoder20_w_lg_w_lg_zero958w959w);
	zero <= (wire_altpriority_encoder19_zero AND wire_altpriority_encoder20_zero);
	altpriority_encoder19 :  kn_kalman_sub_altpriority_encoder_be8
	  PORT MAP ( 
		data => data(7 DOWNTO 0),
		q => wire_altpriority_encoder19_q,
		zero => wire_altpriority_encoder19_zero
	  );
	loop59 : FOR i IN 0 TO 2 GENERATE 
		wire_altpriority_encoder20_w_lg_w_lg_zero956w957w(i) <= wire_altpriority_encoder20_w_lg_zero956w(0) AND wire_altpriority_encoder20_q(i);
	END GENERATE loop59;
	loop60 : FOR i IN 0 TO 2 GENERATE 
		wire_altpriority_encoder20_w_lg_zero958w(i) <= wire_altpriority_encoder20_zero AND wire_altpriority_encoder19_q(i);
	END GENERATE loop60;
	wire_altpriority_encoder20_w_lg_zero956w(0) <= NOT wire_altpriority_encoder20_zero;
	loop61 : FOR i IN 0 TO 2 GENERATE 
		wire_altpriority_encoder20_w_lg_w_lg_zero958w959w(i) <= wire_altpriority_encoder20_w_lg_zero958w(i) OR wire_altpriority_encoder20_w_lg_w_lg_zero956w957w(i);
	END GENERATE loop61;
	altpriority_encoder20 :  kn_kalman_sub_altpriority_encoder_be8
	  PORT MAP ( 
		data => data(15 DOWNTO 8),
		q => wire_altpriority_encoder20_q,
		zero => wire_altpriority_encoder20_zero
	  );

 END RTL; --kn_kalman_sub_altpriority_encoder_ue9

--synthesis_resources = reg 5 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_ou8 IS 
	 PORT 
	 ( 
		 aclr	:	IN  STD_LOGIC := '0';
		 clk_en	:	IN  STD_LOGIC := '1';
		 clock	:	IN  STD_LOGIC := '0';
		 data	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (4 DOWNTO 0)
	 ); 
 END kn_kalman_sub_altpriority_encoder_ou8;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_ou8 IS

	 SIGNAL  wire_altpriority_encoder7_q	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder8_w_lg_w_lg_zero890w891w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder8_w_lg_zero892w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder8_w_lg_zero890w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder8_w_lg_w_lg_zero892w893w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder8_q	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder8_zero	:	STD_LOGIC;
	 SIGNAL	 pipeline_q_dffe	:	STD_LOGIC_VECTOR(4 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL  tmp_q_wire :	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 COMPONENT  kn_kalman_sub_altpriority_encoder_uv8
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_ue9
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		zero	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
 BEGIN

	q <= pipeline_q_dffe;
	tmp_q_wire <= ( wire_altpriority_encoder8_w_lg_zero890w & wire_altpriority_encoder8_w_lg_w_lg_zero892w893w);
	altpriority_encoder7 :  kn_kalman_sub_altpriority_encoder_uv8
	  PORT MAP ( 
		data => data(15 DOWNTO 0),
		q => wire_altpriority_encoder7_q
	  );
	loop62 : FOR i IN 0 TO 3 GENERATE 
		wire_altpriority_encoder8_w_lg_w_lg_zero890w891w(i) <= wire_altpriority_encoder8_w_lg_zero890w(0) AND wire_altpriority_encoder8_q(i);
	END GENERATE loop62;
	loop63 : FOR i IN 0 TO 3 GENERATE 
		wire_altpriority_encoder8_w_lg_zero892w(i) <= wire_altpriority_encoder8_zero AND wire_altpriority_encoder7_q(i);
	END GENERATE loop63;
	wire_altpriority_encoder8_w_lg_zero890w(0) <= NOT wire_altpriority_encoder8_zero;
	loop64 : FOR i IN 0 TO 3 GENERATE 
		wire_altpriority_encoder8_w_lg_w_lg_zero892w893w(i) <= wire_altpriority_encoder8_w_lg_zero892w(i) OR wire_altpriority_encoder8_w_lg_w_lg_zero890w891w(i);
	END GENERATE loop64;
	altpriority_encoder8 :  kn_kalman_sub_altpriority_encoder_ue9
	  PORT MAP ( 
		data => data(31 DOWNTO 16),
		q => wire_altpriority_encoder8_q,
		zero => wire_altpriority_encoder8_zero
	  );
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN pipeline_q_dffe <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN pipeline_q_dffe <= tmp_q_wire;
			END IF;
		END IF;
	END PROCESS;

 END RTL; --kn_kalman_sub_altpriority_encoder_ou8


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="YES" PIPELINE=1 WIDTH=32 WIDTHAD=5 aclr clk_en clock data q
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="YES" PIPELINE=0 WIDTH=16 WIDTHAD=4 data q zero
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="YES" WIDTH=8 WIDTHAD=3 data q zero
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="YES" WIDTH=4 WIDTHAD=2 data q zero
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="YES" WIDTH=2 WIDTHAD=1 data q zero
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_nh8 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (0 DOWNTO 0);
		 zero	:	OUT  STD_LOGIC
	 ); 
 END kn_kalman_sub_altpriority_encoder_nh8;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_nh8 IS

	 SIGNAL  wire_altpriority_encoder27_w_lg_w_data_range1006w1008w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder27_w_data_range1006w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_altpriority_encoder27_w_lg_w_data_range1006w1008w(0) <= NOT wire_altpriority_encoder27_w_data_range1006w(0);
	q <= ( wire_altpriority_encoder27_w_lg_w_data_range1006w1008w);
	zero <= (NOT (data(0) OR data(1)));
	wire_altpriority_encoder27_w_data_range1006w(0) <= data(0);

 END RTL; --kn_kalman_sub_altpriority_encoder_nh8

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_qh8 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 zero	:	OUT  STD_LOGIC
	 ); 
 END kn_kalman_sub_altpriority_encoder_qh8;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_qh8 IS

	 SIGNAL  wire_altpriority_encoder27_w_lg_w_lg_zero998w999w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder27_w_lg_zero1000w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder27_w_lg_zero998w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder27_w_lg_w_lg_zero1000w1001w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder27_q	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder27_zero	:	STD_LOGIC;
	 SIGNAL  wire_altpriority_encoder28_q	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder28_zero	:	STD_LOGIC;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_nh8
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(0 DOWNTO 0);
		zero	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
 BEGIN

	q <= ( wire_altpriority_encoder27_zero & wire_altpriority_encoder27_w_lg_w_lg_zero1000w1001w);
	zero <= (wire_altpriority_encoder27_zero AND wire_altpriority_encoder28_zero);
	wire_altpriority_encoder27_w_lg_w_lg_zero998w999w(0) <= wire_altpriority_encoder27_w_lg_zero998w(0) AND wire_altpriority_encoder27_q(0);
	wire_altpriority_encoder27_w_lg_zero1000w(0) <= wire_altpriority_encoder27_zero AND wire_altpriority_encoder28_q(0);
	wire_altpriority_encoder27_w_lg_zero998w(0) <= NOT wire_altpriority_encoder27_zero;
	wire_altpriority_encoder27_w_lg_w_lg_zero1000w1001w(0) <= wire_altpriority_encoder27_w_lg_zero1000w(0) OR wire_altpriority_encoder27_w_lg_w_lg_zero998w999w(0);
	altpriority_encoder27 :  kn_kalman_sub_altpriority_encoder_nh8
	  PORT MAP ( 
		data => data(1 DOWNTO 0),
		q => wire_altpriority_encoder27_q,
		zero => wire_altpriority_encoder27_zero
	  );
	altpriority_encoder28 :  kn_kalman_sub_altpriority_encoder_nh8
	  PORT MAP ( 
		data => data(3 DOWNTO 2),
		q => wire_altpriority_encoder28_q,
		zero => wire_altpriority_encoder28_zero
	  );

 END RTL; --kn_kalman_sub_altpriority_encoder_qh8

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_vh8 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (2 DOWNTO 0);
		 zero	:	OUT  STD_LOGIC
	 ); 
 END kn_kalman_sub_altpriority_encoder_vh8;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_vh8 IS

	 SIGNAL  wire_altpriority_encoder25_w_lg_w_lg_zero988w989w	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder25_w_lg_zero990w	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder25_w_lg_zero988w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder25_w_lg_w_lg_zero990w991w	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder25_q	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder25_zero	:	STD_LOGIC;
	 SIGNAL  wire_altpriority_encoder26_q	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder26_zero	:	STD_LOGIC;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_qh8
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		zero	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
 BEGIN

	q <= ( wire_altpriority_encoder25_zero & wire_altpriority_encoder25_w_lg_w_lg_zero990w991w);
	zero <= (wire_altpriority_encoder25_zero AND wire_altpriority_encoder26_zero);
	loop65 : FOR i IN 0 TO 1 GENERATE 
		wire_altpriority_encoder25_w_lg_w_lg_zero988w989w(i) <= wire_altpriority_encoder25_w_lg_zero988w(0) AND wire_altpriority_encoder25_q(i);
	END GENERATE loop65;
	loop66 : FOR i IN 0 TO 1 GENERATE 
		wire_altpriority_encoder25_w_lg_zero990w(i) <= wire_altpriority_encoder25_zero AND wire_altpriority_encoder26_q(i);
	END GENERATE loop66;
	wire_altpriority_encoder25_w_lg_zero988w(0) <= NOT wire_altpriority_encoder25_zero;
	loop67 : FOR i IN 0 TO 1 GENERATE 
		wire_altpriority_encoder25_w_lg_w_lg_zero990w991w(i) <= wire_altpriority_encoder25_w_lg_zero990w(i) OR wire_altpriority_encoder25_w_lg_w_lg_zero988w989w(i);
	END GENERATE loop67;
	altpriority_encoder25 :  kn_kalman_sub_altpriority_encoder_qh8
	  PORT MAP ( 
		data => data(3 DOWNTO 0),
		q => wire_altpriority_encoder25_q,
		zero => wire_altpriority_encoder25_zero
	  );
	altpriority_encoder26 :  kn_kalman_sub_altpriority_encoder_qh8
	  PORT MAP ( 
		data => data(7 DOWNTO 4),
		q => wire_altpriority_encoder26_q,
		zero => wire_altpriority_encoder26_zero
	  );

 END RTL; --kn_kalman_sub_altpriority_encoder_vh8

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_ii9 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 zero	:	OUT  STD_LOGIC
	 ); 
 END kn_kalman_sub_altpriority_encoder_ii9;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_ii9 IS

	 SIGNAL  wire_altpriority_encoder23_w_lg_w_lg_zero978w979w	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder23_w_lg_zero980w	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder23_w_lg_zero978w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder23_w_lg_w_lg_zero980w981w	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder23_q	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder23_zero	:	STD_LOGIC;
	 SIGNAL  wire_altpriority_encoder24_q	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder24_zero	:	STD_LOGIC;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_vh8
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(2 DOWNTO 0);
		zero	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
 BEGIN

	q <= ( wire_altpriority_encoder23_zero & wire_altpriority_encoder23_w_lg_w_lg_zero980w981w);
	zero <= (wire_altpriority_encoder23_zero AND wire_altpriority_encoder24_zero);
	loop68 : FOR i IN 0 TO 2 GENERATE 
		wire_altpriority_encoder23_w_lg_w_lg_zero978w979w(i) <= wire_altpriority_encoder23_w_lg_zero978w(0) AND wire_altpriority_encoder23_q(i);
	END GENERATE loop68;
	loop69 : FOR i IN 0 TO 2 GENERATE 
		wire_altpriority_encoder23_w_lg_zero980w(i) <= wire_altpriority_encoder23_zero AND wire_altpriority_encoder24_q(i);
	END GENERATE loop69;
	wire_altpriority_encoder23_w_lg_zero978w(0) <= NOT wire_altpriority_encoder23_zero;
	loop70 : FOR i IN 0 TO 2 GENERATE 
		wire_altpriority_encoder23_w_lg_w_lg_zero980w981w(i) <= wire_altpriority_encoder23_w_lg_zero980w(i) OR wire_altpriority_encoder23_w_lg_w_lg_zero978w979w(i);
	END GENERATE loop70;
	altpriority_encoder23 :  kn_kalman_sub_altpriority_encoder_vh8
	  PORT MAP ( 
		data => data(7 DOWNTO 0),
		q => wire_altpriority_encoder23_q,
		zero => wire_altpriority_encoder23_zero
	  );
	altpriority_encoder24 :  kn_kalman_sub_altpriority_encoder_vh8
	  PORT MAP ( 
		data => data(15 DOWNTO 8),
		q => wire_altpriority_encoder24_q,
		zero => wire_altpriority_encoder24_zero
	  );

 END RTL; --kn_kalman_sub_altpriority_encoder_ii9


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="YES" PIPELINE=0 WIDTH=16 WIDTHAD=4 data q
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="YES" WIDTH=8 WIDTHAD=3 data q
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="YES" WIDTH=4 WIDTHAD=2 data q
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END


--altpriority_encoder CBX_AUTO_BLACKBOX="ALL" LSB_PRIORITY="YES" WIDTH=2 WIDTHAD=1 data q
--VERSION_BEGIN 11.1SP2 cbx_altpriority_encoder 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ  VERSION_END

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_n28 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (0 DOWNTO 0)
	 ); 
 END kn_kalman_sub_altpriority_encoder_n28;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_n28 IS

	 SIGNAL  wire_altpriority_encoder34_w_lg_w_data_range1040w1042w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder34_w_data_range1040w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_altpriority_encoder34_w_lg_w_data_range1040w1042w(0) <= NOT wire_altpriority_encoder34_w_data_range1040w(0);
	q <= ( wire_altpriority_encoder34_w_lg_w_data_range1040w1042w);
	wire_altpriority_encoder34_w_data_range1040w(0) <= data(0);

 END RTL; --kn_kalman_sub_altpriority_encoder_n28

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_q28 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (1 DOWNTO 0)
	 ); 
 END kn_kalman_sub_altpriority_encoder_q28;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_q28 IS

	 SIGNAL  wire_altpriority_encoder33_w_lg_w_lg_zero1033w1034w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder33_w_lg_zero1035w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder33_w_lg_zero1033w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder33_w_lg_w_lg_zero1035w1036w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder33_q	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder33_zero	:	STD_LOGIC;
	 SIGNAL  wire_altpriority_encoder34_q	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 COMPONENT  kn_kalman_sub_altpriority_encoder_nh8
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(0 DOWNTO 0);
		zero	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_n28
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(0 DOWNTO 0)
	 ); 
	 END COMPONENT;
 BEGIN

	q <= ( wire_altpriority_encoder33_zero & wire_altpriority_encoder33_w_lg_w_lg_zero1035w1036w);
	wire_altpriority_encoder33_w_lg_w_lg_zero1033w1034w(0) <= wire_altpriority_encoder33_w_lg_zero1033w(0) AND wire_altpriority_encoder33_q(0);
	wire_altpriority_encoder33_w_lg_zero1035w(0) <= wire_altpriority_encoder33_zero AND wire_altpriority_encoder34_q(0);
	wire_altpriority_encoder33_w_lg_zero1033w(0) <= NOT wire_altpriority_encoder33_zero;
	wire_altpriority_encoder33_w_lg_w_lg_zero1035w1036w(0) <= wire_altpriority_encoder33_w_lg_zero1035w(0) OR wire_altpriority_encoder33_w_lg_w_lg_zero1033w1034w(0);
	altpriority_encoder33 :  kn_kalman_sub_altpriority_encoder_nh8
	  PORT MAP ( 
		data => data(1 DOWNTO 0),
		q => wire_altpriority_encoder33_q,
		zero => wire_altpriority_encoder33_zero
	  );
	altpriority_encoder34 :  kn_kalman_sub_altpriority_encoder_n28
	  PORT MAP ( 
		data => data(3 DOWNTO 2),
		q => wire_altpriority_encoder34_q
	  );

 END RTL; --kn_kalman_sub_altpriority_encoder_q28

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_v28 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (2 DOWNTO 0)
	 ); 
 END kn_kalman_sub_altpriority_encoder_v28;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_v28 IS

	 SIGNAL  wire_altpriority_encoder31_w_lg_w_lg_zero1024w1025w	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder31_w_lg_zero1026w	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder31_w_lg_zero1024w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder31_w_lg_w_lg_zero1026w1027w	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder31_q	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder31_zero	:	STD_LOGIC;
	 SIGNAL  wire_altpriority_encoder32_q	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 COMPONENT  kn_kalman_sub_altpriority_encoder_qh8
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		zero	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_q28
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
	 ); 
	 END COMPONENT;
 BEGIN

	q <= ( wire_altpriority_encoder31_zero & wire_altpriority_encoder31_w_lg_w_lg_zero1026w1027w);
	loop71 : FOR i IN 0 TO 1 GENERATE 
		wire_altpriority_encoder31_w_lg_w_lg_zero1024w1025w(i) <= wire_altpriority_encoder31_w_lg_zero1024w(0) AND wire_altpriority_encoder31_q(i);
	END GENERATE loop71;
	loop72 : FOR i IN 0 TO 1 GENERATE 
		wire_altpriority_encoder31_w_lg_zero1026w(i) <= wire_altpriority_encoder31_zero AND wire_altpriority_encoder32_q(i);
	END GENERATE loop72;
	wire_altpriority_encoder31_w_lg_zero1024w(0) <= NOT wire_altpriority_encoder31_zero;
	loop73 : FOR i IN 0 TO 1 GENERATE 
		wire_altpriority_encoder31_w_lg_w_lg_zero1026w1027w(i) <= wire_altpriority_encoder31_w_lg_zero1026w(i) OR wire_altpriority_encoder31_w_lg_w_lg_zero1024w1025w(i);
	END GENERATE loop73;
	altpriority_encoder31 :  kn_kalman_sub_altpriority_encoder_qh8
	  PORT MAP ( 
		data => data(3 DOWNTO 0),
		q => wire_altpriority_encoder31_q,
		zero => wire_altpriority_encoder31_zero
	  );
	altpriority_encoder32 :  kn_kalman_sub_altpriority_encoder_q28
	  PORT MAP ( 
		data => data(7 DOWNTO 4),
		q => wire_altpriority_encoder32_q
	  );

 END RTL; --kn_kalman_sub_altpriority_encoder_v28

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_i39 IS 
	 PORT 
	 ( 
		 data	:	IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (3 DOWNTO 0)
	 ); 
 END kn_kalman_sub_altpriority_encoder_i39;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_i39 IS

	 SIGNAL  wire_altpriority_encoder29_w_lg_w_lg_zero1015w1016w	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder29_w_lg_zero1017w	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder29_w_lg_zero1015w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder29_w_lg_w_lg_zero1017w1018w	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder29_q	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder29_zero	:	STD_LOGIC;
	 SIGNAL  wire_altpriority_encoder30_q	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 COMPONENT  kn_kalman_sub_altpriority_encoder_vh8
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(2 DOWNTO 0);
		zero	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_v28
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
	 ); 
	 END COMPONENT;
 BEGIN

	q <= ( wire_altpriority_encoder29_zero & wire_altpriority_encoder29_w_lg_w_lg_zero1017w1018w);
	loop74 : FOR i IN 0 TO 2 GENERATE 
		wire_altpriority_encoder29_w_lg_w_lg_zero1015w1016w(i) <= wire_altpriority_encoder29_w_lg_zero1015w(0) AND wire_altpriority_encoder29_q(i);
	END GENERATE loop74;
	loop75 : FOR i IN 0 TO 2 GENERATE 
		wire_altpriority_encoder29_w_lg_zero1017w(i) <= wire_altpriority_encoder29_zero AND wire_altpriority_encoder30_q(i);
	END GENERATE loop75;
	wire_altpriority_encoder29_w_lg_zero1015w(0) <= NOT wire_altpriority_encoder29_zero;
	loop76 : FOR i IN 0 TO 2 GENERATE 
		wire_altpriority_encoder29_w_lg_w_lg_zero1017w1018w(i) <= wire_altpriority_encoder29_w_lg_zero1017w(i) OR wire_altpriority_encoder29_w_lg_w_lg_zero1015w1016w(i);
	END GENERATE loop76;
	altpriority_encoder29 :  kn_kalman_sub_altpriority_encoder_vh8
	  PORT MAP ( 
		data => data(7 DOWNTO 0),
		q => wire_altpriority_encoder29_q,
		zero => wire_altpriority_encoder29_zero
	  );
	altpriority_encoder30 :  kn_kalman_sub_altpriority_encoder_v28
	  PORT MAP ( 
		data => data(15 DOWNTO 8),
		q => wire_altpriority_encoder30_q
	  );

 END RTL; --kn_kalman_sub_altpriority_encoder_i39

--synthesis_resources = reg 5 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altpriority_encoder_cna IS 
	 PORT 
	 ( 
		 aclr	:	IN  STD_LOGIC := '0';
		 clk_en	:	IN  STD_LOGIC := '1';
		 clock	:	IN  STD_LOGIC := '0';
		 data	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 q	:	OUT  STD_LOGIC_VECTOR (4 DOWNTO 0)
	 ); 
 END kn_kalman_sub_altpriority_encoder_cna;

 ARCHITECTURE RTL OF kn_kalman_sub_altpriority_encoder_cna IS

	 SIGNAL  wire_altpriority_encoder21_w_lg_w_lg_zero966w967w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder21_w_lg_zero968w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder21_w_lg_zero966w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder21_w_lg_w_lg_zero968w969w	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder21_q	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_altpriority_encoder21_zero	:	STD_LOGIC;
	 SIGNAL  wire_altpriority_encoder22_q	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL	 pipeline_q_dffe	:	STD_LOGIC_VECTOR(4 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_trailing_zeros_cnt_w_lg_tmp_q_wire974w	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  tmp_q_wire :	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 COMPONENT  kn_kalman_sub_altpriority_encoder_ii9
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		zero	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_i39
	 PORT
	 ( 
		data	:	IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	 ); 
	 END COMPONENT;
 BEGIN

	loop77 : FOR i IN 0 TO 4 GENERATE 
		wire_trailing_zeros_cnt_w_lg_tmp_q_wire974w(i) <= NOT tmp_q_wire(i);
	END GENERATE loop77;
	q <= (NOT pipeline_q_dffe);
	tmp_q_wire <= ( wire_altpriority_encoder21_zero & wire_altpriority_encoder21_w_lg_w_lg_zero968w969w);
	loop78 : FOR i IN 0 TO 3 GENERATE 
		wire_altpriority_encoder21_w_lg_w_lg_zero966w967w(i) <= wire_altpriority_encoder21_w_lg_zero966w(0) AND wire_altpriority_encoder21_q(i);
	END GENERATE loop78;
	loop79 : FOR i IN 0 TO 3 GENERATE 
		wire_altpriority_encoder21_w_lg_zero968w(i) <= wire_altpriority_encoder21_zero AND wire_altpriority_encoder22_q(i);
	END GENERATE loop79;
	wire_altpriority_encoder21_w_lg_zero966w(0) <= NOT wire_altpriority_encoder21_zero;
	loop80 : FOR i IN 0 TO 3 GENERATE 
		wire_altpriority_encoder21_w_lg_w_lg_zero968w969w(i) <= wire_altpriority_encoder21_w_lg_zero968w(i) OR wire_altpriority_encoder21_w_lg_w_lg_zero966w967w(i);
	END GENERATE loop80;
	altpriority_encoder21 :  kn_kalman_sub_altpriority_encoder_ii9
	  PORT MAP ( 
		data => data(15 DOWNTO 0),
		q => wire_altpriority_encoder21_q,
		zero => wire_altpriority_encoder21_zero
	  );
	altpriority_encoder22 :  kn_kalman_sub_altpriority_encoder_i39
	  PORT MAP ( 
		data => data(31 DOWNTO 16),
		q => wire_altpriority_encoder22_q
	  );
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN pipeline_q_dffe <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN pipeline_q_dffe <= wire_trailing_zeros_cnt_w_lg_tmp_q_wire974w;
			END IF;
		END IF;
	END PROCESS;

 END RTL; --kn_kalman_sub_altpriority_encoder_cna

 LIBRARY lpm;
 USE lpm.all;

--synthesis_resources = lpm_add_sub 14 lpm_compare 1 reg 716 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_sub_altfp_add_sub_23j IS 
	 PORT 
	 ( 
		 clock	:	IN  STD_LOGIC;
		 dataa	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 datab	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 result	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0)
	 ); 
 END kn_kalman_sub_altfp_add_sub_23j;

 ARCHITECTURE RTL OF kn_kalman_sub_altfp_add_sub_23j IS

	 SIGNAL  wire_lbarrel_shift_result	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_data	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_rbarrel_shift_result	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_leading_zeroes_cnt_data	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_leading_zeroes_cnt_q	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_trailing_zeros_cnt_data	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_trailing_zeros_cnt_q	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL	 add_sub_dffe25	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_dataa_exp_dffe12	:	STD_LOGIC_VECTOR(8 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_dataa_exp_dffe13	:	STD_LOGIC_VECTOR(8 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_dataa_exp_dffe14	:	STD_LOGIC_VECTOR(8 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_dataa_man_dffe12	:	STD_LOGIC_VECTOR(23 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_dataa_man_dffe13	:	STD_LOGIC_VECTOR(23 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_dataa_man_dffe14	:	STD_LOGIC_VECTOR(23 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_dataa_sign_dffe12	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_dataa_sign_dffe13	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_dataa_sign_dffe14	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_datab_exp_dffe12	:	STD_LOGIC_VECTOR(8 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_datab_exp_dffe13	:	STD_LOGIC_VECTOR(8 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_datab_exp_dffe14	:	STD_LOGIC_VECTOR(8 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_datab_man_dffe12	:	STD_LOGIC_VECTOR(23 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_datab_man_dffe13	:	STD_LOGIC_VECTOR(23 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_datab_man_dffe14	:	STD_LOGIC_VECTOR(23 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_datab_sign_dffe12	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_datab_sign_dffe13	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 aligned_datab_sign_dffe14	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 both_inputs_are_infinite_dffe1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 both_inputs_are_infinite_dffe25	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 data_exp_dffe1	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 dataa_man_dffe1	:	STD_LOGIC_VECTOR(25 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 dataa_sign_dffe1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 dataa_sign_dffe25	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 datab_man_dffe1	:	STD_LOGIC_VECTOR(25 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 datab_sign_dffe1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 denormal_res_dffe3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 denormal_res_dffe4	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 denormal_res_dffe41	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_adj_dffe21	:	STD_LOGIC_VECTOR(1 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_adj_dffe23	:	STD_LOGIC_VECTOR(1 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_amb_mux_dffe13	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_amb_mux_dffe14	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_intermediate_res_dffe41	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_out_dffe5	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_res_dffe2	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_res_dffe21	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_res_dffe23	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_res_dffe25	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_res_dffe27	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_res_dffe3	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_res_dffe4	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinite_output_sign_dffe1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinite_output_sign_dffe2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinite_output_sign_dffe21	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinite_output_sign_dffe23	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinite_output_sign_dffe25	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinite_output_sign_dffe27	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinite_output_sign_dffe3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinite_output_sign_dffe31	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinite_output_sign_dffe4	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinite_output_sign_dffe41	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinite_res_dffe3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinite_res_dffe4	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinite_res_dffe41	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinity_magnitude_sub_dffe2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinity_magnitude_sub_dffe21	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinity_magnitude_sub_dffe23	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinity_magnitude_sub_dffe27	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinity_magnitude_sub_dffe3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinity_magnitude_sub_dffe31	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinity_magnitude_sub_dffe4	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinity_magnitude_sub_dffe41	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_dataa_infinite_dffe12	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_dataa_infinite_dffe13	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_dataa_infinite_dffe14	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_dataa_nan_dffe12	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_datab_infinite_dffe12	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_datab_infinite_dffe13	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_datab_infinite_dffe14	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_datab_nan_dffe12	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinite_dffe1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinite_dffe2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinite_dffe21	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinite_dffe23	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinite_dffe25	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinite_dffe27	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinite_dffe3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinite_dffe31	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinite_dffe4	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_infinite_dffe41	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_dffe1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_dffe13	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_dffe14	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_dffe2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_dffe21	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_dffe23	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_dffe25	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_dffe27	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_dffe3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_dffe31	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_dffe4	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 input_is_nan_dffe41	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_add_sub_res_mag_dffe21	:	STD_LOGIC_VECTOR(25 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_add_sub_res_mag_dffe23	:	STD_LOGIC_VECTOR(25 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_add_sub_res_mag_dffe27	:	STD_LOGIC_VECTOR(27 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_add_sub_res_sign_dffe21	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_add_sub_res_sign_dffe23	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_add_sub_res_sign_dffe27	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_dffe31	:	STD_LOGIC_VECTOR(25 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_leading_zeros_dffe31	:	STD_LOGIC_VECTOR(4 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_out_dffe5	:	STD_LOGIC_VECTOR(22 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_res_dffe4	:	STD_LOGIC_VECTOR(22 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_res_is_not_zero_dffe3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_res_is_not_zero_dffe31	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_res_is_not_zero_dffe4	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_res_is_not_zero_dffe41	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_res_not_zero_dffe23	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_res_rounding_add_sub_result_reg	:	STD_LOGIC_VECTOR(25 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_smaller_dffe13	:	STD_LOGIC_VECTOR(23 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 need_complement_dffe2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 round_bit_dffe21	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 round_bit_dffe23	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 round_bit_dffe3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 round_bit_dffe31	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 rounded_res_infinity_dffe4	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 rshift_distance_dffe13	:	STD_LOGIC_VECTOR(4 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 rshift_distance_dffe14	:	STD_LOGIC_VECTOR(4 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_dffe31	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_out_dffe5	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_res_dffe3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_res_dffe4	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_res_dffe41	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sticky_bit_dffe1	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sticky_bit_dffe2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sticky_bit_dffe21	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sticky_bit_dffe23	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sticky_bit_dffe25	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sticky_bit_dffe27	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sticky_bit_dffe3	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sticky_bit_dffe31	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 zero_man_sign_dffe2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 zero_man_sign_dffe21	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 zero_man_sign_dffe23	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 zero_man_sign_dffe27	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_add_sub1_result	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_add_sub2_result	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_add_sub3_result	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_add_sub4_result	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_add_sub5_result	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_add_sub6_result	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_man_2comp_res_lower_w_lg_w_lg_cout367w368w	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_man_2comp_res_lower_w_lg_cout366w	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_man_2comp_res_lower_w_lg_cout367w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_2comp_res_lower_w_lg_w_lg_w_lg_cout367w368w369w	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_man_2comp_res_lower_cout	:	STD_LOGIC;
	 SIGNAL  wire_man_2comp_res_lower_result	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_man_2comp_res_upper0_result	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_vcc	:	STD_LOGIC;
	 SIGNAL  wire_man_2comp_res_upper1_result	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_man_add_sub_lower_w_lg_w_lg_cout354w355w	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_man_add_sub_lower_w_lg_cout353w	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_man_add_sub_lower_w_lg_cout354w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_add_sub_lower_w_lg_w_lg_w_lg_cout354w355w356w	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_man_add_sub_lower_cout	:	STD_LOGIC;
	 SIGNAL  wire_man_add_sub_lower_result	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_man_add_sub_upper0_result	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_man_add_sub_upper1_result	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_man_res_rounding_add_sub_lower_w_lg_w_lg_cout580w581w	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_man_res_rounding_add_sub_lower_w_lg_cout579w	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_man_res_rounding_add_sub_lower_w_lg_cout580w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_man_res_rounding_add_sub_lower_w_lg_w_lg_w_lg_cout580w581w582w	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_man_res_rounding_add_sub_lower_cout	:	STD_LOGIC;
	 SIGNAL  wire_man_res_rounding_add_sub_lower_result	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_man_res_rounding_add_sub_upper1_result	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_trailing_zeros_limit_comparator_agb	:	STD_LOGIC;
	 SIGNAL  wire_w248w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w267w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w397w407w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_w_lg_force_zero_w634w635w636w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_w_lg_force_zero_w634w635w645w	:	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_denormal_result_w558w559w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_exp_amb_mux_dffe15_wo316w324w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_exp_amb_mux_dffe15_wo316w331w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_exp_amb_mux_dffe15_wo316w317w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_exp_amb_mux_w276w279w	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_exp_amb_mux_w276w277w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_force_infinity_w629w639w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_force_infinity_w629w648w	:	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_force_infinity_w629w654w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_force_nan_w630w642w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_force_nan_w630w651w	:	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_input_dataa_denormal_dffe11_wo233w243w	:	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_input_dataa_denormal_dffe11_wo233w234w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_input_dataa_infinite_dffe11_wo246w247w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_input_datab_denormal_dffe11_wo252w262w	:	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_input_datab_denormal_dffe11_wo252w253w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_input_datab_infinite_dffe11_wo265w266w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_input_datab_infinite_dffe15_wo338w339w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_man_res_not_zero_dffe26_wo503w504w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w293w	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_w397w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w383w	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_w412w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_w_man_add_sub_w_range372w375w378w	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_w587w	:	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_force_zero_w634w637w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_force_zero_w634w646w	:	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_lg_exp_amb_mux_dffe15_wo330w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_w_lg_exp_amb_mux_dffe15_wo323w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_w_lg_exp_amb_mux_dffe15_wo314w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_exp_amb_mux_w280w	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  wire_w_lg_exp_amb_mux_w274w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_force_infinity_w640w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_force_infinity_w649w	:	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_lg_force_nan_w643w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_force_nan_w652w	:	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_lg_input_datab_infinite_dffe15_wo337w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_need_complement_dffe22_wo376w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range17w23w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range27w33w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range37w43w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range47w53w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range57w63w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range67w73w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range77w83w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range20w25w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range30w35w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range40w45w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range50w55w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range60w65w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range70w75w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range80w85w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_a_all_one_w_range84w220w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_b_all_one_w_range86w226w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_diff_abs_exceed_max_w_range290w294w	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_res_max_w_range540w542w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_res_max_w_range543w544w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_res_max_w_range545w546w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_res_max_w_range547w548w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_res_max_w_range549w550w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_res_max_w_range551w552w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_res_max_w_range553w554w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_res_max_w_range555w561w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_rounded_res_max_w_range601w604w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_rounded_res_max_w_range605w607w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_rounded_res_max_w_range608w610w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_rounded_res_max_w_range611w613w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_rounded_res_max_w_range614w616w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_rounded_res_max_w_range617w619w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_rounded_res_max_w_range620w622w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w391w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w384w	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w414w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_add_sub_w_range372w379w	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_rounding_add_sub_w_range585w589w	:	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_force_zero_w634w635w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_add_sub_dffe25_wo491w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_add_sub_w2342w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_aligned_datab_sign_dffe15_wo336w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_denormal_result_w558w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_exp_amb_mux_dffe15_wo316w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_exp_amb_mux_w276w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_force_infinity_w629w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_force_nan_w630w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_force_zero_w628w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_input_dataa_denormal_dffe11_wo233w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_input_dataa_infinite_dffe11_wo246w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_input_dataa_zero_dffe11_wo245w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_input_datab_denormal_dffe11_wo252w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_input_datab_infinite_dffe11_wo265w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_input_datab_infinite_dffe15_wo338w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_input_datab_zero_dffe11_wo264w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_man_res_is_not_zero_dffe4_wo627w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_man_res_not_zero_dffe26_wo503w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_need_complement_dffe22_wo373w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_sticky_bit_dffe1_wo343w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_adjustment2_add_sub_w_range511w560w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_diff_abs_exceed_max_w_range290w292w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_a_not_zero_w_range215w219w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range387w390w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w382w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_add_sub_w_range372w375w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_b_not_zero_w_range218w225w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_rounding_add_sub_w_range585w586w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_w_lg_force_zero_w634w637w638w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_w_lg_force_zero_w634w646w647w	:	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_force_infinity_w640w641w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_force_infinity_w649w650w	:	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_lg_force_zero_w634w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_sticky_bit_dffe27_wo402w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range141w142w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range147w148w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range153w154w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range159w160w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range165w166w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range171w172w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range177w178w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range183w184w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range189w190w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range195w196w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range87w88w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range201w202w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range207w208w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range213w214w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range17w18w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range27w28w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range37w38w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range47w48w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range57w58w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range67w68w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range93w94w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range77w78w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range99w100w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range105w106w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range111w112w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range117w118w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range123w124w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range129w130w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_dataa_range135w136w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range144w145w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range150w151w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range156w157w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range162w163w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range168w169w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range174w175w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range180w181w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range186w187w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range192w193w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range198w199w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range90w91w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range204w205w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range210w211w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range216w217w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range20w21w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range30w31w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range40w41w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range50w51w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range60w61w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range70w71w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range96w97w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range80w81w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range102w103w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range108w109w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range114w115w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range120w121w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range126w127w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range132w133w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_datab_range138w139w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_diff_abs_exceed_max_w_range283w286w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_diff_abs_exceed_max_w_range287w289w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_res_not_zero_w_range516w519w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_res_not_zero_w_range520w522w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_res_not_zero_w_range523w525w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_res_not_zero_w_range526w528w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_res_not_zero_w_range529w531w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_res_not_zero_w_range532w534w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_res_not_zero_w_range535w537w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_exp_res_not_zero_w_range538w539w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range417w420w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range448w450w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range451w453w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range454w456w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range457w459w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range460w462w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range463w465w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range466w468w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range469w471w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range472w474w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range475w477w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range421w423w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range478w480w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range481w483w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range484w486w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range487w489w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range424w426w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range427w429w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range430w432w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range433w435w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range436w438w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range439w441w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range442w444w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_man_res_not_zero_w2_range445w447w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  aclr	:	STD_LOGIC;
	 SIGNAL  add_sub_dffe25_wi :	STD_LOGIC;
	 SIGNAL  add_sub_dffe25_wo :	STD_LOGIC;
	 SIGNAL  add_sub_w2 :	STD_LOGIC;
	 SIGNAL  adder_upper_w :	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  aligned_dataa_exp_dffe12_wi :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_dataa_exp_dffe12_wo :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_dataa_exp_dffe13_wi :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_dataa_exp_dffe13_wo :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_dataa_exp_dffe14_wi :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_dataa_exp_dffe14_wo :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_dataa_exp_dffe15_wi :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_dataa_exp_dffe15_wo :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_dataa_exp_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_dataa_man_dffe12_wi :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  aligned_dataa_man_dffe12_wo :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  aligned_dataa_man_dffe13_wi :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  aligned_dataa_man_dffe13_wo :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  aligned_dataa_man_dffe14_wi :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  aligned_dataa_man_dffe14_wo :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  aligned_dataa_man_dffe15_w :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  aligned_dataa_man_dffe15_wi :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  aligned_dataa_man_dffe15_wo :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  aligned_dataa_man_w :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  aligned_dataa_sign_dffe12_wi :	STD_LOGIC;
	 SIGNAL  aligned_dataa_sign_dffe12_wo :	STD_LOGIC;
	 SIGNAL  aligned_dataa_sign_dffe13_wi :	STD_LOGIC;
	 SIGNAL  aligned_dataa_sign_dffe13_wo :	STD_LOGIC;
	 SIGNAL  aligned_dataa_sign_dffe14_wi :	STD_LOGIC;
	 SIGNAL  aligned_dataa_sign_dffe14_wo :	STD_LOGIC;
	 SIGNAL  aligned_dataa_sign_dffe15_wi :	STD_LOGIC;
	 SIGNAL  aligned_dataa_sign_dffe15_wo :	STD_LOGIC;
	 SIGNAL  aligned_dataa_sign_w :	STD_LOGIC;
	 SIGNAL  aligned_datab_exp_dffe12_wi :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_datab_exp_dffe12_wo :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_datab_exp_dffe13_wi :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_datab_exp_dffe13_wo :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_datab_exp_dffe14_wi :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_datab_exp_dffe14_wo :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_datab_exp_dffe15_wi :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_datab_exp_dffe15_wo :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_datab_exp_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  aligned_datab_man_dffe12_wi :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  aligned_datab_man_dffe12_wo :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  aligned_datab_man_dffe13_wi :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  aligned_datab_man_dffe13_wo :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  aligned_datab_man_dffe14_wi :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  aligned_datab_man_dffe14_wo :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  aligned_datab_man_dffe15_w :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  aligned_datab_man_dffe15_wi :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  aligned_datab_man_dffe15_wo :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  aligned_datab_man_w :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  aligned_datab_sign_dffe12_wi :	STD_LOGIC;
	 SIGNAL  aligned_datab_sign_dffe12_wo :	STD_LOGIC;
	 SIGNAL  aligned_datab_sign_dffe13_wi :	STD_LOGIC;
	 SIGNAL  aligned_datab_sign_dffe13_wo :	STD_LOGIC;
	 SIGNAL  aligned_datab_sign_dffe14_wi :	STD_LOGIC;
	 SIGNAL  aligned_datab_sign_dffe14_wo :	STD_LOGIC;
	 SIGNAL  aligned_datab_sign_dffe15_wi :	STD_LOGIC;
	 SIGNAL  aligned_datab_sign_dffe15_wo :	STD_LOGIC;
	 SIGNAL  aligned_datab_sign_w :	STD_LOGIC;
	 SIGNAL  borrow_w :	STD_LOGIC;
	 SIGNAL  both_inputs_are_infinite_dffe1_wi :	STD_LOGIC;
	 SIGNAL  both_inputs_are_infinite_dffe1_wo :	STD_LOGIC;
	 SIGNAL  both_inputs_are_infinite_dffe25_wi :	STD_LOGIC;
	 SIGNAL  both_inputs_are_infinite_dffe25_wo :	STD_LOGIC;
	 SIGNAL  clk_en	:	STD_LOGIC;
	 SIGNAL  data_exp_dffe1_wi :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  data_exp_dffe1_wo :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  dataa_dffe11_wi :	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  dataa_dffe11_wo :	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  dataa_man_dffe1_wi :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  dataa_man_dffe1_wo :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  dataa_sign_dffe1_wi :	STD_LOGIC;
	 SIGNAL  dataa_sign_dffe1_wo :	STD_LOGIC;
	 SIGNAL  dataa_sign_dffe25_wi :	STD_LOGIC;
	 SIGNAL  dataa_sign_dffe25_wo :	STD_LOGIC;
	 SIGNAL  datab_dffe11_wi :	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  datab_dffe11_wo :	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  datab_man_dffe1_wi :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  datab_man_dffe1_wo :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  datab_sign_dffe1_wi :	STD_LOGIC;
	 SIGNAL  datab_sign_dffe1_wo :	STD_LOGIC;
	 SIGNAL  denormal_flag_w :	STD_LOGIC;
	 SIGNAL  denormal_res_dffe32_wi :	STD_LOGIC;
	 SIGNAL  denormal_res_dffe32_wo :	STD_LOGIC;
	 SIGNAL  denormal_res_dffe33_wi :	STD_LOGIC;
	 SIGNAL  denormal_res_dffe33_wo :	STD_LOGIC;
	 SIGNAL  denormal_res_dffe3_wi :	STD_LOGIC;
	 SIGNAL  denormal_res_dffe3_wo :	STD_LOGIC;
	 SIGNAL  denormal_res_dffe41_wi :	STD_LOGIC;
	 SIGNAL  denormal_res_dffe41_wo :	STD_LOGIC;
	 SIGNAL  denormal_res_dffe42_wi :	STD_LOGIC;
	 SIGNAL  denormal_res_dffe42_wo :	STD_LOGIC;
	 SIGNAL  denormal_res_dffe4_wi :	STD_LOGIC;
	 SIGNAL  denormal_res_dffe4_wo :	STD_LOGIC;
	 SIGNAL  denormal_result_w :	STD_LOGIC;
	 SIGNAL  exp_a_all_one_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_a_not_zero_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_adj_0pads :	STD_LOGIC_VECTOR (6 DOWNTO 0);
	 SIGNAL  exp_adj_dffe21_wi :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  exp_adj_dffe21_wo :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  exp_adj_dffe23_wi :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  exp_adj_dffe23_wo :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  exp_adj_dffe26_wi :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  exp_adj_dffe26_wo :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  exp_adjust_by_add1 :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  exp_adjust_by_add2 :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  exp_adjustment2_add_sub_dataa_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  exp_adjustment2_add_sub_datab_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  exp_adjustment2_add_sub_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  exp_adjustment_add_sub_dataa_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  exp_adjustment_add_sub_datab_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  exp_adjustment_add_sub_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  exp_all_ones_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_all_zeros_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_amb_mux_dffe13_wi :	STD_LOGIC;
	 SIGNAL  exp_amb_mux_dffe13_wo :	STD_LOGIC;
	 SIGNAL  exp_amb_mux_dffe14_wi :	STD_LOGIC;
	 SIGNAL  exp_amb_mux_dffe14_wo :	STD_LOGIC;
	 SIGNAL  exp_amb_mux_dffe15_wi :	STD_LOGIC;
	 SIGNAL  exp_amb_mux_dffe15_wo :	STD_LOGIC;
	 SIGNAL  exp_amb_mux_w :	STD_LOGIC;
	 SIGNAL  exp_amb_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  exp_b_all_one_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_b_not_zero_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_bma_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  exp_diff_abs_exceed_max_w :	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  exp_diff_abs_max_w :	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  exp_diff_abs_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_intermediate_res_dffe41_wi :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_intermediate_res_dffe41_wo :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_intermediate_res_dffe42_wi :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_intermediate_res_dffe42_wo :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_intermediate_res_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_out_dffe5_wi :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_out_dffe5_wo :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe21_wi :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe21_wo :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe22_wi :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe22_wo :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe23_wi :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe23_wo :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe25_wi :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe25_wo :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe26_wi :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe26_wo :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe27_wi :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe27_wo :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe2_wi :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe2_wo :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe32_wi :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe32_wo :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe33_wi :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe33_wo :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe3_wi :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe3_wo :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe4_wi :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_dffe4_wo :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_max_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_res_not_zero_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  exp_res_rounding_adder_dataa_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  exp_res_rounding_adder_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  exp_rounded_res_infinity_w :	STD_LOGIC;
	 SIGNAL  exp_rounded_res_max_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_rounded_res_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_rounding_adjustment_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  exp_value :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  force_infinity_w :	STD_LOGIC;
	 SIGNAL  force_nan_w :	STD_LOGIC;
	 SIGNAL  force_zero_w :	STD_LOGIC;
	 SIGNAL  guard_bit_dffe3_wo :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe1_wi :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe1_wo :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe21_wi :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe21_wo :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe22_wi :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe22_wo :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe23_wi :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe23_wo :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe25_wi :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe25_wo :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe26_wi :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe26_wo :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe27_wi :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe27_wo :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe2_wi :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe2_wo :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe31_wi :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe31_wo :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe32_wi :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe32_wo :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe33_wi :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe33_wo :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe3_wi :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe3_wo :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe41_wi :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe41_wo :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe42_wi :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe42_wo :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe4_wi :	STD_LOGIC;
	 SIGNAL  infinite_output_sign_dffe4_wo :	STD_LOGIC;
	 SIGNAL  infinite_res_dff32_wi :	STD_LOGIC;
	 SIGNAL  infinite_res_dff32_wo :	STD_LOGIC;
	 SIGNAL  infinite_res_dff33_wi :	STD_LOGIC;
	 SIGNAL  infinite_res_dff33_wo :	STD_LOGIC;
	 SIGNAL  infinite_res_dffe3_wi :	STD_LOGIC;
	 SIGNAL  infinite_res_dffe3_wo :	STD_LOGIC;
	 SIGNAL  infinite_res_dffe41_wi :	STD_LOGIC;
	 SIGNAL  infinite_res_dffe41_wo :	STD_LOGIC;
	 SIGNAL  infinite_res_dffe42_wi :	STD_LOGIC;
	 SIGNAL  infinite_res_dffe42_wo :	STD_LOGIC;
	 SIGNAL  infinite_res_dffe4_wi :	STD_LOGIC;
	 SIGNAL  infinite_res_dffe4_wo :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe21_wi :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe21_wo :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe22_wi :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe22_wo :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe23_wi :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe23_wo :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe26_wi :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe26_wo :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe27_wi :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe27_wo :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe2_wi :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe2_wo :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe31_wi :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe31_wo :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe32_wi :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe32_wo :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe33_wi :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe33_wo :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe3_wi :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe3_wo :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe41_wi :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe41_wo :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe42_wi :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe42_wo :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe4_wi :	STD_LOGIC;
	 SIGNAL  infinity_magnitude_sub_dffe4_wo :	STD_LOGIC;
	 SIGNAL  input_dataa_denormal_dffe11_wi :	STD_LOGIC;
	 SIGNAL  input_dataa_denormal_dffe11_wo :	STD_LOGIC;
	 SIGNAL  input_dataa_denormal_w :	STD_LOGIC;
	 SIGNAL  input_dataa_infinite_dffe11_wi :	STD_LOGIC;
	 SIGNAL  input_dataa_infinite_dffe11_wo :	STD_LOGIC;
	 SIGNAL  input_dataa_infinite_dffe12_wi :	STD_LOGIC;
	 SIGNAL  input_dataa_infinite_dffe12_wo :	STD_LOGIC;
	 SIGNAL  input_dataa_infinite_dffe13_wi :	STD_LOGIC;
	 SIGNAL  input_dataa_infinite_dffe13_wo :	STD_LOGIC;
	 SIGNAL  input_dataa_infinite_dffe14_wi :	STD_LOGIC;
	 SIGNAL  input_dataa_infinite_dffe14_wo :	STD_LOGIC;
	 SIGNAL  input_dataa_infinite_dffe15_wi :	STD_LOGIC;
	 SIGNAL  input_dataa_infinite_dffe15_wo :	STD_LOGIC;
	 SIGNAL  input_dataa_infinite_w :	STD_LOGIC;
	 SIGNAL  input_dataa_nan_dffe11_wi :	STD_LOGIC;
	 SIGNAL  input_dataa_nan_dffe11_wo :	STD_LOGIC;
	 SIGNAL  input_dataa_nan_dffe12_wi :	STD_LOGIC;
	 SIGNAL  input_dataa_nan_dffe12_wo :	STD_LOGIC;
	 SIGNAL  input_dataa_nan_w :	STD_LOGIC;
	 SIGNAL  input_dataa_zero_dffe11_wi :	STD_LOGIC;
	 SIGNAL  input_dataa_zero_dffe11_wo :	STD_LOGIC;
	 SIGNAL  input_dataa_zero_w :	STD_LOGIC;
	 SIGNAL  input_datab_denormal_dffe11_wi :	STD_LOGIC;
	 SIGNAL  input_datab_denormal_dffe11_wo :	STD_LOGIC;
	 SIGNAL  input_datab_denormal_w :	STD_LOGIC;
	 SIGNAL  input_datab_infinite_dffe11_wi :	STD_LOGIC;
	 SIGNAL  input_datab_infinite_dffe11_wo :	STD_LOGIC;
	 SIGNAL  input_datab_infinite_dffe12_wi :	STD_LOGIC;
	 SIGNAL  input_datab_infinite_dffe12_wo :	STD_LOGIC;
	 SIGNAL  input_datab_infinite_dffe13_wi :	STD_LOGIC;
	 SIGNAL  input_datab_infinite_dffe13_wo :	STD_LOGIC;
	 SIGNAL  input_datab_infinite_dffe14_wi :	STD_LOGIC;
	 SIGNAL  input_datab_infinite_dffe14_wo :	STD_LOGIC;
	 SIGNAL  input_datab_infinite_dffe15_wi :	STD_LOGIC;
	 SIGNAL  input_datab_infinite_dffe15_wo :	STD_LOGIC;
	 SIGNAL  input_datab_infinite_w :	STD_LOGIC;
	 SIGNAL  input_datab_nan_dffe11_wi :	STD_LOGIC;
	 SIGNAL  input_datab_nan_dffe11_wo :	STD_LOGIC;
	 SIGNAL  input_datab_nan_dffe12_wi :	STD_LOGIC;
	 SIGNAL  input_datab_nan_dffe12_wo :	STD_LOGIC;
	 SIGNAL  input_datab_nan_w :	STD_LOGIC;
	 SIGNAL  input_datab_zero_dffe11_wi :	STD_LOGIC;
	 SIGNAL  input_datab_zero_dffe11_wo :	STD_LOGIC;
	 SIGNAL  input_datab_zero_w :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe1_wi :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe1_wo :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe21_wi :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe21_wo :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe22_wi :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe22_wo :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe23_wi :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe23_wo :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe25_wi :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe25_wo :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe26_wi :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe26_wo :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe27_wi :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe27_wo :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe2_wi :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe2_wo :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe31_wi :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe31_wo :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe32_wi :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe32_wo :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe33_wi :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe33_wo :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe3_wi :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe3_wo :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe41_wi :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe41_wo :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe42_wi :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe42_wo :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe4_wi :	STD_LOGIC;
	 SIGNAL  input_is_infinite_dffe4_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe13_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe13_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe14_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe14_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe15_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe15_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe1_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe1_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe21_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe21_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe22_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe22_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe23_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe23_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe25_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe25_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe26_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe26_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe27_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe27_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe2_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe2_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe31_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe31_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe32_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe32_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe33_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe33_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe3_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe3_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe41_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe41_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe42_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe42_wo :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe4_wi :	STD_LOGIC;
	 SIGNAL  input_is_nan_dffe4_wo :	STD_LOGIC;
	 SIGNAL  man_2comp_res_dataa_w :	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  man_2comp_res_datab_w :	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  man_2comp_res_w :	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  man_a_not_zero_w :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  man_add_sub_dataa_w :	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  man_add_sub_datab_w :	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  man_add_sub_res_mag_dffe21_wi :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  man_add_sub_res_mag_dffe21_wo :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  man_add_sub_res_mag_dffe23_wi :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  man_add_sub_res_mag_dffe23_wo :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  man_add_sub_res_mag_dffe26_wi :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  man_add_sub_res_mag_dffe26_wo :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  man_add_sub_res_mag_dffe27_wi :	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  man_add_sub_res_mag_dffe27_wo :	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  man_add_sub_res_mag_w2 :	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  man_add_sub_res_sign_dffe21_wo :	STD_LOGIC;
	 SIGNAL  man_add_sub_res_sign_dffe23_wi :	STD_LOGIC;
	 SIGNAL  man_add_sub_res_sign_dffe23_wo :	STD_LOGIC;
	 SIGNAL  man_add_sub_res_sign_dffe26_wi :	STD_LOGIC;
	 SIGNAL  man_add_sub_res_sign_dffe26_wo :	STD_LOGIC;
	 SIGNAL  man_add_sub_res_sign_dffe27_wi :	STD_LOGIC;
	 SIGNAL  man_add_sub_res_sign_dffe27_wo :	STD_LOGIC;
	 SIGNAL  man_add_sub_res_sign_w2 :	STD_LOGIC;
	 SIGNAL  man_add_sub_w :	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  man_all_zeros_w :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  man_b_not_zero_w :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  man_dffe31_wo :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  man_intermediate_res_w :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  man_leading_zeros_cnt_w :	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  man_leading_zeros_dffe31_wi :	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  man_leading_zeros_dffe31_wo :	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  man_nan_w :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  man_out_dffe5_wi :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  man_out_dffe5_wo :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  man_res_dffe4_wi :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  man_res_dffe4_wo :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  man_res_is_not_zero_dffe31_wi :	STD_LOGIC;
	 SIGNAL  man_res_is_not_zero_dffe31_wo :	STD_LOGIC;
	 SIGNAL  man_res_is_not_zero_dffe32_wi :	STD_LOGIC;
	 SIGNAL  man_res_is_not_zero_dffe32_wo :	STD_LOGIC;
	 SIGNAL  man_res_is_not_zero_dffe33_wi :	STD_LOGIC;
	 SIGNAL  man_res_is_not_zero_dffe33_wo :	STD_LOGIC;
	 SIGNAL  man_res_is_not_zero_dffe3_wi :	STD_LOGIC;
	 SIGNAL  man_res_is_not_zero_dffe3_wo :	STD_LOGIC;
	 SIGNAL  man_res_is_not_zero_dffe41_wi :	STD_LOGIC;
	 SIGNAL  man_res_is_not_zero_dffe41_wo :	STD_LOGIC;
	 SIGNAL  man_res_is_not_zero_dffe42_wi :	STD_LOGIC;
	 SIGNAL  man_res_is_not_zero_dffe42_wo :	STD_LOGIC;
	 SIGNAL  man_res_is_not_zero_dffe4_wi :	STD_LOGIC;
	 SIGNAL  man_res_is_not_zero_dffe4_wo :	STD_LOGIC;
	 SIGNAL  man_res_mag_w2 :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  man_res_not_zero_dffe23_wi :	STD_LOGIC;
	 SIGNAL  man_res_not_zero_dffe23_wo :	STD_LOGIC;
	 SIGNAL  man_res_not_zero_dffe26_wi :	STD_LOGIC;
	 SIGNAL  man_res_not_zero_dffe26_wo :	STD_LOGIC;
	 SIGNAL  man_res_not_zero_w2 :	STD_LOGIC_VECTOR (24 DOWNTO 0);
	 SIGNAL  man_res_rounding_add_sub_datab_w :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  man_res_rounding_add_sub_w :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  man_res_w3 :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  man_rounded_res_w :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  man_rounding_add_value_w :	STD_LOGIC;
	 SIGNAL  man_smaller_dffe13_wi :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  man_smaller_dffe13_wo :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  man_smaller_w :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  need_complement_dffe22_wi :	STD_LOGIC;
	 SIGNAL  need_complement_dffe22_wo :	STD_LOGIC;
	 SIGNAL  need_complement_dffe2_wi :	STD_LOGIC;
	 SIGNAL  need_complement_dffe2_wo :	STD_LOGIC;
	 SIGNAL  pos_sign_bit_ext :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  priority_encoder_1pads_w :	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  round_bit_dffe21_wi :	STD_LOGIC;
	 SIGNAL  round_bit_dffe21_wo :	STD_LOGIC;
	 SIGNAL  round_bit_dffe23_wi :	STD_LOGIC;
	 SIGNAL  round_bit_dffe23_wo :	STD_LOGIC;
	 SIGNAL  round_bit_dffe26_wi :	STD_LOGIC;
	 SIGNAL  round_bit_dffe26_wo :	STD_LOGIC;
	 SIGNAL  round_bit_dffe31_wi :	STD_LOGIC;
	 SIGNAL  round_bit_dffe31_wo :	STD_LOGIC;
	 SIGNAL  round_bit_dffe32_wi :	STD_LOGIC;
	 SIGNAL  round_bit_dffe32_wo :	STD_LOGIC;
	 SIGNAL  round_bit_dffe33_wi :	STD_LOGIC;
	 SIGNAL  round_bit_dffe33_wo :	STD_LOGIC;
	 SIGNAL  round_bit_dffe3_wi :	STD_LOGIC;
	 SIGNAL  round_bit_dffe3_wo :	STD_LOGIC;
	 SIGNAL  round_bit_w :	STD_LOGIC;
	 SIGNAL  rounded_res_infinity_dffe4_wi :	STD_LOGIC;
	 SIGNAL  rounded_res_infinity_dffe4_wo :	STD_LOGIC;
	 SIGNAL  rshift_distance_dffe13_wi :	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  rshift_distance_dffe13_wo :	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  rshift_distance_dffe14_wi :	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  rshift_distance_dffe14_wo :	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  rshift_distance_dffe15_wi :	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  rshift_distance_dffe15_wo :	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  rshift_distance_w :	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  sign_dffe31_wi :	STD_LOGIC;
	 SIGNAL  sign_dffe31_wo :	STD_LOGIC;
	 SIGNAL  sign_dffe32_wi :	STD_LOGIC;
	 SIGNAL  sign_dffe32_wo :	STD_LOGIC;
	 SIGNAL  sign_dffe33_wi :	STD_LOGIC;
	 SIGNAL  sign_dffe33_wo :	STD_LOGIC;
	 SIGNAL  sign_out_dffe5_wi :	STD_LOGIC;
	 SIGNAL  sign_out_dffe5_wo :	STD_LOGIC;
	 SIGNAL  sign_res_dffe3_wi :	STD_LOGIC;
	 SIGNAL  sign_res_dffe3_wo :	STD_LOGIC;
	 SIGNAL  sign_res_dffe41_wi :	STD_LOGIC;
	 SIGNAL  sign_res_dffe41_wo :	STD_LOGIC;
	 SIGNAL  sign_res_dffe42_wi :	STD_LOGIC;
	 SIGNAL  sign_res_dffe42_wo :	STD_LOGIC;
	 SIGNAL  sign_res_dffe4_wi :	STD_LOGIC;
	 SIGNAL  sign_res_dffe4_wo :	STD_LOGIC;
	 SIGNAL  sticky_bit_cnt_dataa_w :	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  sticky_bit_cnt_datab_w :	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  sticky_bit_cnt_res_w :	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  sticky_bit_dffe1_wi :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe1_wo :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe21_wi :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe21_wo :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe22_wi :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe22_wo :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe23_wi :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe23_wo :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe25_wi :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe25_wo :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe26_wi :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe26_wo :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe27_wi :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe27_wo :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe2_wi :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe2_wo :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe31_wi :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe31_wo :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe32_wi :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe32_wo :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe33_wi :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe33_wo :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe3_wi :	STD_LOGIC;
	 SIGNAL  sticky_bit_dffe3_wo :	STD_LOGIC;
	 SIGNAL  sticky_bit_w :	STD_LOGIC;
	 SIGNAL  trailing_zeros_limit_w :	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  zero_man_sign_dffe21_wi :	STD_LOGIC;
	 SIGNAL  zero_man_sign_dffe21_wo :	STD_LOGIC;
	 SIGNAL  zero_man_sign_dffe22_wi :	STD_LOGIC;
	 SIGNAL  zero_man_sign_dffe22_wo :	STD_LOGIC;
	 SIGNAL  zero_man_sign_dffe23_wi :	STD_LOGIC;
	 SIGNAL  zero_man_sign_dffe23_wo :	STD_LOGIC;
	 SIGNAL  zero_man_sign_dffe26_wi :	STD_LOGIC;
	 SIGNAL  zero_man_sign_dffe26_wo :	STD_LOGIC;
	 SIGNAL  zero_man_sign_dffe27_wi :	STD_LOGIC;
	 SIGNAL  zero_man_sign_dffe27_wo :	STD_LOGIC;
	 SIGNAL  zero_man_sign_dffe2_wi :	STD_LOGIC;
	 SIGNAL  zero_man_sign_dffe2_wo :	STD_LOGIC;
	 SIGNAL  wire_w_aligned_dataa_exp_dffe15_wo_range315w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_aligned_datab_exp_dffe15_wo_range313w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range141w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range147w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range153w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range159w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range165w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range171w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range177w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range183w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range189w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range195w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range87w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range201w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range207w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range213w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range17w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range27w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range37w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range47w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range57w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range67w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range93w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range77w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range99w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range105w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range111w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range117w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range123w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range129w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_range135w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_dataa_dffe11_wo_range242w	:	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_dataa_dffe11_wo_range232w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_datab_range144w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range150w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range156w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range162w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range168w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range174w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range180w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range186w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range192w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range198w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range90w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range204w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range210w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range216w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range20w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range30w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range40w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range50w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range60w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range70w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range96w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range80w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range102w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range108w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range114w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range120w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range126w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range132w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_range138w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_datab_dffe11_wo_range261w	:	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_datab_dffe11_wo_range251w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_exp_a_all_one_w_range7w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_a_all_one_w_range24w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_a_all_one_w_range34w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_a_all_one_w_range44w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_a_all_one_w_range54w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_a_all_one_w_range64w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_a_all_one_w_range74w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_a_all_one_w_range84w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_a_not_zero_w_range2w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_a_not_zero_w_range19w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_a_not_zero_w_range29w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_a_not_zero_w_range39w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_a_not_zero_w_range49w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_a_not_zero_w_range59w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_a_not_zero_w_range69w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_adjustment2_add_sub_w_range518w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_adjustment2_add_sub_w_range521w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_adjustment2_add_sub_w_range524w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_adjustment2_add_sub_w_range527w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_adjustment2_add_sub_w_range530w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_adjustment2_add_sub_w_range533w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_adjustment2_add_sub_w_range557w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_exp_adjustment2_add_sub_w_range536w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_adjustment2_add_sub_w_range511w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_amb_w_range275w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_exp_b_all_one_w_range9w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_b_all_one_w_range26w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_b_all_one_w_range36w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_b_all_one_w_range46w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_b_all_one_w_range56w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_b_all_one_w_range66w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_b_all_one_w_range76w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_b_all_one_w_range86w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_b_not_zero_w_range5w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_b_not_zero_w_range22w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_b_not_zero_w_range32w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_b_not_zero_w_range42w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_b_not_zero_w_range52w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_b_not_zero_w_range62w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_b_not_zero_w_range72w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_bma_w_range273w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_w_exp_diff_abs_exceed_max_w_range283w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_diff_abs_exceed_max_w_range287w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_diff_abs_exceed_max_w_range290w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_diff_abs_w_range291w	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_w_exp_diff_abs_w_range285w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_diff_abs_w_range288w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_res_max_w_range540w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_res_max_w_range543w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_res_max_w_range545w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_res_max_w_range547w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_res_max_w_range549w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_res_max_w_range551w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_res_max_w_range553w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_res_max_w_range555w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_res_not_zero_w_range516w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_res_not_zero_w_range520w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_res_not_zero_w_range523w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_res_not_zero_w_range526w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_res_not_zero_w_range529w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_res_not_zero_w_range532w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_res_not_zero_w_range535w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_res_not_zero_w_range538w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_rounded_res_max_w_range601w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_rounded_res_max_w_range605w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_rounded_res_max_w_range608w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_rounded_res_max_w_range611w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_rounded_res_max_w_range614w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_rounded_res_max_w_range617w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_rounded_res_max_w_range620w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_rounded_res_w_range603w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_rounded_res_w_range606w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_rounded_res_w_range609w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_rounded_res_w_range612w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_rounded_res_w_range615w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_rounded_res_w_range618w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_exp_rounded_res_w_range621w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range12w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range143w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range149w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range155w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range161w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range167w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range173w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range179w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range185w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range191w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range197w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range89w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range203w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range209w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range215w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range95w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range101w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range107w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range113w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range119w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range125w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range131w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_a_not_zero_w_range137w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range443w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range446w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range449w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range452w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range455w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range458w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range461w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range464w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range467w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range470w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range473w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range476w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range479w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range482w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range485w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range488w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range419w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range422w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range425w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range428w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range431w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range434w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range437w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe21_wo_range440w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe27_wo_range396w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe27_wo_range411w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe27_wo_range387w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe27_wo_range413w	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_res_mag_dffe27_wo_range381w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_add_sub_w_range372w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range15w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range146w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range152w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range158w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range164w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range170w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range176w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range182w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range188w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range194w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range200w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range92w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range206w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range212w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range218w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range98w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range104w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range110w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range116w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range122w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range128w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range134w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_b_not_zero_w_range140w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range417w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range448w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range451w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range454w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range457w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range460w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range463w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range466w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range469w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range472w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range475w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range421w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range478w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range481w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range484w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range487w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range424w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range427w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range430w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range433w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range436w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range439w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range442w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_not_zero_w2_range445w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_man_res_rounding_add_sub_w_range584w	:	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_man_res_rounding_add_sub_w_range588w	:	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  wire_w_man_res_rounding_add_sub_w_range585w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 COMPONENT  kn_kalman_sub_altbarrel_shift_h0e
	 PORT
	 ( 
		aclr	:	IN  STD_LOGIC := '0';
		clk_en	:	IN  STD_LOGIC := '1';
		clock	:	IN  STD_LOGIC := '0';
		data	:	IN  STD_LOGIC_VECTOR(25 DOWNTO 0);
		distance	:	IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		result	:	OUT  STD_LOGIC_VECTOR(25 DOWNTO 0)
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_sub_altbarrel_shift_n3g
	 PORT
	 ( 
		aclr	:	IN  STD_LOGIC := '0';
		clk_en	:	IN  STD_LOGIC := '1';
		clock	:	IN  STD_LOGIC := '0';
		data	:	IN  STD_LOGIC_VECTOR(25 DOWNTO 0);
		distance	:	IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		result	:	OUT  STD_LOGIC_VECTOR(25 DOWNTO 0)
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_ou8
	 PORT
	 ( 
		aclr	:	IN  STD_LOGIC := '0';
		clk_en	:	IN  STD_LOGIC := '1';
		clock	:	IN  STD_LOGIC := '0';
		data	:	IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(4 DOWNTO 0)
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_sub_altpriority_encoder_cna
	 PORT
	 ( 
		aclr	:	IN  STD_LOGIC := '0';
		clk_en	:	IN  STD_LOGIC := '1';
		clock	:	IN  STD_LOGIC := '0';
		data	:	IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		q	:	OUT  STD_LOGIC_VECTOR(4 DOWNTO 0)
	 ); 
	 END COMPONENT;
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
	 COMPONENT  lpm_compare
	 GENERIC 
	 (
		LPM_PIPELINE	:	NATURAL := 0;
		LPM_REPRESENTATION	:	STRING := "UNSIGNED";
		LPM_WIDTH	:	NATURAL;
		lpm_hint	:	STRING := "UNUSED";
		lpm_type	:	STRING := "lpm_compare"
	 );
	 PORT
	 ( 
		aclr	:	IN STD_LOGIC := '0';
		aeb	:	OUT STD_LOGIC;
		agb	:	OUT STD_LOGIC;
		ageb	:	OUT STD_LOGIC;
		alb	:	OUT STD_LOGIC;
		aleb	:	OUT STD_LOGIC;
		aneb	:	OUT STD_LOGIC;
		clken	:	IN STD_LOGIC := '1';
		clock	:	IN STD_LOGIC := '0';
		dataa	:	IN STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
		datab	:	IN STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0) := (OTHERS => '0')
	 ); 
	 END COMPONENT;
 BEGIN

	wire_gnd <= '0';
	wire_vcc <= '1';
	wire_w248w(0) <= wire_w_lg_w_lg_input_dataa_infinite_dffe11_wo246w247w(0) AND wire_w_lg_input_dataa_zero_dffe11_wo245w(0);
	wire_w267w(0) <= wire_w_lg_w_lg_input_datab_infinite_dffe11_wo265w266w(0) AND wire_w_lg_input_datab_zero_dffe11_wo264w(0);
	wire_w_lg_w397w407w(0) <= wire_w397w(0) AND sticky_bit_dffe27_wo;
	loop81 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_w_lg_w_lg_force_zero_w634w635w636w(i) <= wire_w_lg_w_lg_force_zero_w634w635w(0) AND exp_res_dffe4_wo(i);
	END GENERATE loop81;
	loop82 : FOR i IN 0 TO 22 GENERATE 
		wire_w_lg_w_lg_w_lg_force_zero_w634w635w645w(i) <= wire_w_lg_w_lg_force_zero_w634w635w(0) AND man_res_dffe4_wo(i);
	END GENERATE loop82;
	loop83 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_w_lg_denormal_result_w558w559w(i) <= wire_w_lg_denormal_result_w558w(0) AND wire_w_exp_adjustment2_add_sub_w_range557w(i);
	END GENERATE loop83;
	loop84 : FOR i IN 0 TO 25 GENERATE 
		wire_w_lg_w_lg_exp_amb_mux_dffe15_wo316w324w(i) <= wire_w_lg_exp_amb_mux_dffe15_wo316w(0) AND aligned_dataa_man_dffe15_w(i);
	END GENERATE loop84;
	loop85 : FOR i IN 0 TO 25 GENERATE 
		wire_w_lg_w_lg_exp_amb_mux_dffe15_wo316w331w(i) <= wire_w_lg_exp_amb_mux_dffe15_wo316w(0) AND wire_rbarrel_shift_result(i);
	END GENERATE loop85;
	loop86 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_w_lg_exp_amb_mux_dffe15_wo316w317w(i) <= wire_w_lg_exp_amb_mux_dffe15_wo316w(0) AND wire_w_aligned_dataa_exp_dffe15_wo_range315w(i);
	END GENERATE loop86;
	loop87 : FOR i IN 0 TO 23 GENERATE 
		wire_w_lg_w_lg_exp_amb_mux_w276w279w(i) <= wire_w_lg_exp_amb_mux_w276w(0) AND aligned_datab_man_dffe12_wo(i);
	END GENERATE loop87;
	loop88 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_w_lg_exp_amb_mux_w276w277w(i) <= wire_w_lg_exp_amb_mux_w276w(0) AND wire_w_exp_amb_w_range275w(i);
	END GENERATE loop88;
	loop89 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_w_lg_force_infinity_w629w639w(i) <= wire_w_lg_force_infinity_w629w(0) AND wire_w_lg_w_lg_w_lg_force_zero_w634w637w638w(i);
	END GENERATE loop89;
	loop90 : FOR i IN 0 TO 22 GENERATE 
		wire_w_lg_w_lg_force_infinity_w629w648w(i) <= wire_w_lg_force_infinity_w629w(0) AND wire_w_lg_w_lg_w_lg_force_zero_w634w646w647w(i);
	END GENERATE loop90;
	wire_w_lg_w_lg_force_infinity_w629w654w(0) <= wire_w_lg_force_infinity_w629w(0) AND sign_res_dffe4_wo;
	loop91 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_w_lg_force_nan_w630w642w(i) <= wire_w_lg_force_nan_w630w(0) AND wire_w_lg_w_lg_force_infinity_w640w641w(i);
	END GENERATE loop91;
	loop92 : FOR i IN 0 TO 22 GENERATE 
		wire_w_lg_w_lg_force_nan_w630w651w(i) <= wire_w_lg_force_nan_w630w(0) AND wire_w_lg_w_lg_force_infinity_w649w650w(i);
	END GENERATE loop92;
	loop93 : FOR i IN 0 TO 22 GENERATE 
		wire_w_lg_w_lg_input_dataa_denormal_dffe11_wo233w243w(i) <= wire_w_lg_input_dataa_denormal_dffe11_wo233w(0) AND wire_w_dataa_dffe11_wo_range242w(i);
	END GENERATE loop93;
	loop94 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_w_lg_input_dataa_denormal_dffe11_wo233w234w(i) <= wire_w_lg_input_dataa_denormal_dffe11_wo233w(0) AND wire_w_dataa_dffe11_wo_range232w(i);
	END GENERATE loop94;
	wire_w_lg_w_lg_input_dataa_infinite_dffe11_wo246w247w(0) <= wire_w_lg_input_dataa_infinite_dffe11_wo246w(0) AND wire_w_lg_input_dataa_denormal_dffe11_wo233w(0);
	loop95 : FOR i IN 0 TO 22 GENERATE 
		wire_w_lg_w_lg_input_datab_denormal_dffe11_wo252w262w(i) <= wire_w_lg_input_datab_denormal_dffe11_wo252w(0) AND wire_w_datab_dffe11_wo_range261w(i);
	END GENERATE loop95;
	loop96 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_w_lg_input_datab_denormal_dffe11_wo252w253w(i) <= wire_w_lg_input_datab_denormal_dffe11_wo252w(0) AND wire_w_datab_dffe11_wo_range251w(i);
	END GENERATE loop96;
	wire_w_lg_w_lg_input_datab_infinite_dffe11_wo265w266w(0) <= wire_w_lg_input_datab_infinite_dffe11_wo265w(0) AND wire_w_lg_input_datab_denormal_dffe11_wo252w(0);
	wire_w_lg_w_lg_input_datab_infinite_dffe15_wo338w339w(0) <= wire_w_lg_input_datab_infinite_dffe15_wo338w(0) AND aligned_dataa_sign_dffe15_wo;
	wire_w_lg_w_lg_man_res_not_zero_dffe26_wo503w504w(0) <= wire_w_lg_man_res_not_zero_dffe26_wo503w(0) AND zero_man_sign_dffe26_wo;
	loop97 : FOR i IN 0 TO 4 GENERATE 
		wire_w293w(i) <= wire_w_lg_w_exp_diff_abs_exceed_max_w_range290w292w(0) AND wire_w_exp_diff_abs_w_range291w(i);
	END GENERATE loop97;
	wire_w397w(0) <= wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w382w(0) AND wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range387w390w(0);
	loop98 : FOR i IN 0 TO 1 GENERATE 
		wire_w383w(i) <= wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w382w(0) AND exp_adjust_by_add1(i);
	END GENERATE loop98;
	loop99 : FOR i IN 0 TO 25 GENERATE 
		wire_w412w(i) <= wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w382w(0) AND wire_w_man_add_sub_res_mag_dffe27_wo_range411w(i);
	END GENERATE loop99;
	loop100 : FOR i IN 0 TO 27 GENERATE 
		wire_w_lg_w_lg_w_man_add_sub_w_range372w375w378w(i) <= wire_w_lg_w_man_add_sub_w_range372w375w(0) AND man_add_sub_w(i);
	END GENERATE loop100;
	loop101 : FOR i IN 0 TO 22 GENERATE 
		wire_w587w(i) <= wire_w_lg_w_man_res_rounding_add_sub_w_range585w586w(0) AND wire_w_man_res_rounding_add_sub_w_range584w(i);
	END GENERATE loop101;
	loop102 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_w_lg_force_zero_w634w637w(i) <= wire_w_lg_force_zero_w634w(0) AND exp_all_zeros_w(i);
	END GENERATE loop102;
	loop103 : FOR i IN 0 TO 22 GENERATE 
		wire_w_lg_w_lg_force_zero_w634w646w(i) <= wire_w_lg_force_zero_w634w(0) AND man_all_zeros_w(i);
	END GENERATE loop103;
	loop104 : FOR i IN 0 TO 25 GENERATE 
		wire_w_lg_exp_amb_mux_dffe15_wo330w(i) <= exp_amb_mux_dffe15_wo AND aligned_datab_man_dffe15_w(i);
	END GENERATE loop104;
	loop105 : FOR i IN 0 TO 25 GENERATE 
		wire_w_lg_exp_amb_mux_dffe15_wo323w(i) <= exp_amb_mux_dffe15_wo AND wire_rbarrel_shift_result(i);
	END GENERATE loop105;
	loop106 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_exp_amb_mux_dffe15_wo314w(i) <= exp_amb_mux_dffe15_wo AND wire_w_aligned_datab_exp_dffe15_wo_range313w(i);
	END GENERATE loop106;
	loop107 : FOR i IN 0 TO 23 GENERATE 
		wire_w_lg_exp_amb_mux_w280w(i) <= exp_amb_mux_w AND aligned_dataa_man_dffe12_wo(i);
	END GENERATE loop107;
	loop108 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_exp_amb_mux_w274w(i) <= exp_amb_mux_w AND wire_w_exp_bma_w_range273w(i);
	END GENERATE loop108;
	loop109 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_force_infinity_w640w(i) <= force_infinity_w AND exp_all_ones_w(i);
	END GENERATE loop109;
	loop110 : FOR i IN 0 TO 22 GENERATE 
		wire_w_lg_force_infinity_w649w(i) <= force_infinity_w AND man_all_zeros_w(i);
	END GENERATE loop110;
	loop111 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_force_nan_w643w(i) <= force_nan_w AND exp_all_ones_w(i);
	END GENERATE loop111;
	loop112 : FOR i IN 0 TO 22 GENERATE 
		wire_w_lg_force_nan_w652w(i) <= force_nan_w AND man_nan_w(i);
	END GENERATE loop112;
	wire_w_lg_input_datab_infinite_dffe15_wo337w(0) <= input_datab_infinite_dffe15_wo AND wire_w_lg_aligned_datab_sign_dffe15_wo336w(0);
	wire_w_lg_need_complement_dffe22_wo376w(0) <= need_complement_dffe22_wo AND wire_w_lg_w_man_add_sub_w_range372w375w(0);
	wire_w_lg_w_dataa_range17w23w(0) <= wire_w_dataa_range17w(0) AND wire_w_exp_a_all_one_w_range7w(0);
	wire_w_lg_w_dataa_range27w33w(0) <= wire_w_dataa_range27w(0) AND wire_w_exp_a_all_one_w_range24w(0);
	wire_w_lg_w_dataa_range37w43w(0) <= wire_w_dataa_range37w(0) AND wire_w_exp_a_all_one_w_range34w(0);
	wire_w_lg_w_dataa_range47w53w(0) <= wire_w_dataa_range47w(0) AND wire_w_exp_a_all_one_w_range44w(0);
	wire_w_lg_w_dataa_range57w63w(0) <= wire_w_dataa_range57w(0) AND wire_w_exp_a_all_one_w_range54w(0);
	wire_w_lg_w_dataa_range67w73w(0) <= wire_w_dataa_range67w(0) AND wire_w_exp_a_all_one_w_range64w(0);
	wire_w_lg_w_dataa_range77w83w(0) <= wire_w_dataa_range77w(0) AND wire_w_exp_a_all_one_w_range74w(0);
	wire_w_lg_w_datab_range20w25w(0) <= wire_w_datab_range20w(0) AND wire_w_exp_b_all_one_w_range9w(0);
	wire_w_lg_w_datab_range30w35w(0) <= wire_w_datab_range30w(0) AND wire_w_exp_b_all_one_w_range26w(0);
	wire_w_lg_w_datab_range40w45w(0) <= wire_w_datab_range40w(0) AND wire_w_exp_b_all_one_w_range36w(0);
	wire_w_lg_w_datab_range50w55w(0) <= wire_w_datab_range50w(0) AND wire_w_exp_b_all_one_w_range46w(0);
	wire_w_lg_w_datab_range60w65w(0) <= wire_w_datab_range60w(0) AND wire_w_exp_b_all_one_w_range56w(0);
	wire_w_lg_w_datab_range70w75w(0) <= wire_w_datab_range70w(0) AND wire_w_exp_b_all_one_w_range66w(0);
	wire_w_lg_w_datab_range80w85w(0) <= wire_w_datab_range80w(0) AND wire_w_exp_b_all_one_w_range76w(0);
	wire_w_lg_w_exp_a_all_one_w_range84w220w(0) <= wire_w_exp_a_all_one_w_range84w(0) AND wire_w_lg_w_man_a_not_zero_w_range215w219w(0);
	wire_w_lg_w_exp_b_all_one_w_range86w226w(0) <= wire_w_exp_b_all_one_w_range86w(0) AND wire_w_lg_w_man_b_not_zero_w_range218w225w(0);
	loop113 : FOR i IN 0 TO 4 GENERATE 
		wire_w_lg_w_exp_diff_abs_exceed_max_w_range290w294w(i) <= wire_w_exp_diff_abs_exceed_max_w_range290w(0) AND exp_diff_abs_max_w(i);
	END GENERATE loop113;
	wire_w_lg_w_exp_res_max_w_range540w542w(0) <= wire_w_exp_res_max_w_range540w(0) AND wire_w_exp_adjustment2_add_sub_w_range518w(0);
	wire_w_lg_w_exp_res_max_w_range543w544w(0) <= wire_w_exp_res_max_w_range543w(0) AND wire_w_exp_adjustment2_add_sub_w_range521w(0);
	wire_w_lg_w_exp_res_max_w_range545w546w(0) <= wire_w_exp_res_max_w_range545w(0) AND wire_w_exp_adjustment2_add_sub_w_range524w(0);
	wire_w_lg_w_exp_res_max_w_range547w548w(0) <= wire_w_exp_res_max_w_range547w(0) AND wire_w_exp_adjustment2_add_sub_w_range527w(0);
	wire_w_lg_w_exp_res_max_w_range549w550w(0) <= wire_w_exp_res_max_w_range549w(0) AND wire_w_exp_adjustment2_add_sub_w_range530w(0);
	wire_w_lg_w_exp_res_max_w_range551w552w(0) <= wire_w_exp_res_max_w_range551w(0) AND wire_w_exp_adjustment2_add_sub_w_range533w(0);
	wire_w_lg_w_exp_res_max_w_range553w554w(0) <= wire_w_exp_res_max_w_range553w(0) AND wire_w_exp_adjustment2_add_sub_w_range536w(0);
	wire_w_lg_w_exp_res_max_w_range555w561w(0) <= wire_w_exp_res_max_w_range555w(0) AND wire_w_lg_w_exp_adjustment2_add_sub_w_range511w560w(0);
	wire_w_lg_w_exp_rounded_res_max_w_range601w604w(0) <= wire_w_exp_rounded_res_max_w_range601w(0) AND wire_w_exp_rounded_res_w_range603w(0);
	wire_w_lg_w_exp_rounded_res_max_w_range605w607w(0) <= wire_w_exp_rounded_res_max_w_range605w(0) AND wire_w_exp_rounded_res_w_range606w(0);
	wire_w_lg_w_exp_rounded_res_max_w_range608w610w(0) <= wire_w_exp_rounded_res_max_w_range608w(0) AND wire_w_exp_rounded_res_w_range609w(0);
	wire_w_lg_w_exp_rounded_res_max_w_range611w613w(0) <= wire_w_exp_rounded_res_max_w_range611w(0) AND wire_w_exp_rounded_res_w_range612w(0);
	wire_w_lg_w_exp_rounded_res_max_w_range614w616w(0) <= wire_w_exp_rounded_res_max_w_range614w(0) AND wire_w_exp_rounded_res_w_range615w(0);
	wire_w_lg_w_exp_rounded_res_max_w_range617w619w(0) <= wire_w_exp_rounded_res_max_w_range617w(0) AND wire_w_exp_rounded_res_w_range618w(0);
	wire_w_lg_w_exp_rounded_res_max_w_range620w622w(0) <= wire_w_exp_rounded_res_max_w_range620w(0) AND wire_w_exp_rounded_res_w_range621w(0);
	wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w391w(0) <= wire_w_man_add_sub_res_mag_dffe27_wo_range381w(0) AND wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range387w390w(0);
	loop114 : FOR i IN 0 TO 1 GENERATE 
		wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w384w(i) <= wire_w_man_add_sub_res_mag_dffe27_wo_range381w(0) AND exp_adjust_by_add2(i);
	END GENERATE loop114;
	loop115 : FOR i IN 0 TO 25 GENERATE 
		wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w414w(i) <= wire_w_man_add_sub_res_mag_dffe27_wo_range381w(0) AND wire_w_man_add_sub_res_mag_dffe27_wo_range413w(i);
	END GENERATE loop115;
	loop116 : FOR i IN 0 TO 27 GENERATE 
		wire_w_lg_w_man_add_sub_w_range372w379w(i) <= wire_w_man_add_sub_w_range372w(0) AND man_2comp_res_w(i);
	END GENERATE loop116;
	loop117 : FOR i IN 0 TO 22 GENERATE 
		wire_w_lg_w_man_res_rounding_add_sub_w_range585w589w(i) <= wire_w_man_res_rounding_add_sub_w_range585w(0) AND wire_w_man_res_rounding_add_sub_w_range588w(i);
	END GENERATE loop117;
	wire_w_lg_w_lg_force_zero_w634w635w(0) <= NOT wire_w_lg_force_zero_w634w(0);
	wire_w_lg_add_sub_dffe25_wo491w(0) <= NOT add_sub_dffe25_wo;
	wire_w_lg_add_sub_w2342w(0) <= NOT add_sub_w2;
	wire_w_lg_aligned_datab_sign_dffe15_wo336w(0) <= NOT aligned_datab_sign_dffe15_wo;
	wire_w_lg_denormal_result_w558w(0) <= NOT denormal_result_w;
	wire_w_lg_exp_amb_mux_dffe15_wo316w(0) <= NOT exp_amb_mux_dffe15_wo;
	wire_w_lg_exp_amb_mux_w276w(0) <= NOT exp_amb_mux_w;
	wire_w_lg_force_infinity_w629w(0) <= NOT force_infinity_w;
	wire_w_lg_force_nan_w630w(0) <= NOT force_nan_w;
	wire_w_lg_force_zero_w628w(0) <= NOT force_zero_w;
	wire_w_lg_input_dataa_denormal_dffe11_wo233w(0) <= NOT input_dataa_denormal_dffe11_wo;
	wire_w_lg_input_dataa_infinite_dffe11_wo246w(0) <= NOT input_dataa_infinite_dffe11_wo;
	wire_w_lg_input_dataa_zero_dffe11_wo245w(0) <= NOT input_dataa_zero_dffe11_wo;
	wire_w_lg_input_datab_denormal_dffe11_wo252w(0) <= NOT input_datab_denormal_dffe11_wo;
	wire_w_lg_input_datab_infinite_dffe11_wo265w(0) <= NOT input_datab_infinite_dffe11_wo;
	wire_w_lg_input_datab_infinite_dffe15_wo338w(0) <= NOT input_datab_infinite_dffe15_wo;
	wire_w_lg_input_datab_zero_dffe11_wo264w(0) <= NOT input_datab_zero_dffe11_wo;
	wire_w_lg_man_res_is_not_zero_dffe4_wo627w(0) <= NOT man_res_is_not_zero_dffe4_wo;
	wire_w_lg_man_res_not_zero_dffe26_wo503w(0) <= NOT man_res_not_zero_dffe26_wo;
	wire_w_lg_need_complement_dffe22_wo373w(0) <= NOT need_complement_dffe22_wo;
	wire_w_lg_sticky_bit_dffe1_wo343w(0) <= NOT sticky_bit_dffe1_wo;
	wire_w_lg_w_exp_adjustment2_add_sub_w_range511w560w(0) <= NOT wire_w_exp_adjustment2_add_sub_w_range511w(0);
	wire_w_lg_w_exp_diff_abs_exceed_max_w_range290w292w(0) <= NOT wire_w_exp_diff_abs_exceed_max_w_range290w(0);
	wire_w_lg_w_man_a_not_zero_w_range215w219w(0) <= NOT wire_w_man_a_not_zero_w_range215w(0);
	wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range387w390w(0) <= NOT wire_w_man_add_sub_res_mag_dffe27_wo_range387w(0);
	wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w382w(0) <= NOT wire_w_man_add_sub_res_mag_dffe27_wo_range381w(0);
	wire_w_lg_w_man_add_sub_w_range372w375w(0) <= NOT wire_w_man_add_sub_w_range372w(0);
	wire_w_lg_w_man_b_not_zero_w_range218w225w(0) <= NOT wire_w_man_b_not_zero_w_range218w(0);
	wire_w_lg_w_man_res_rounding_add_sub_w_range585w586w(0) <= NOT wire_w_man_res_rounding_add_sub_w_range585w(0);
	loop118 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_w_lg_w_lg_force_zero_w634w637w638w(i) <= wire_w_lg_w_lg_force_zero_w634w637w(i) OR wire_w_lg_w_lg_w_lg_force_zero_w634w635w636w(i);
	END GENERATE loop118;
	loop119 : FOR i IN 0 TO 22 GENERATE 
		wire_w_lg_w_lg_w_lg_force_zero_w634w646w647w(i) <= wire_w_lg_w_lg_force_zero_w634w646w(i) OR wire_w_lg_w_lg_w_lg_force_zero_w634w635w645w(i);
	END GENERATE loop119;
	loop120 : FOR i IN 0 TO 7 GENERATE 
		wire_w_lg_w_lg_force_infinity_w640w641w(i) <= wire_w_lg_force_infinity_w640w(i) OR wire_w_lg_w_lg_force_infinity_w629w639w(i);
	END GENERATE loop120;
	loop121 : FOR i IN 0 TO 22 GENERATE 
		wire_w_lg_w_lg_force_infinity_w649w650w(i) <= wire_w_lg_force_infinity_w649w(i) OR wire_w_lg_w_lg_force_infinity_w629w648w(i);
	END GENERATE loop121;
	wire_w_lg_force_zero_w634w(0) <= force_zero_w OR denormal_flag_w;
	wire_w_lg_sticky_bit_dffe27_wo402w(0) <= sticky_bit_dffe27_wo OR wire_w_man_add_sub_res_mag_dffe27_wo_range396w(0);
	wire_w_lg_w_dataa_range141w142w(0) <= wire_w_dataa_range141w(0) OR wire_w_man_a_not_zero_w_range137w(0);
	wire_w_lg_w_dataa_range147w148w(0) <= wire_w_dataa_range147w(0) OR wire_w_man_a_not_zero_w_range143w(0);
	wire_w_lg_w_dataa_range153w154w(0) <= wire_w_dataa_range153w(0) OR wire_w_man_a_not_zero_w_range149w(0);
	wire_w_lg_w_dataa_range159w160w(0) <= wire_w_dataa_range159w(0) OR wire_w_man_a_not_zero_w_range155w(0);
	wire_w_lg_w_dataa_range165w166w(0) <= wire_w_dataa_range165w(0) OR wire_w_man_a_not_zero_w_range161w(0);
	wire_w_lg_w_dataa_range171w172w(0) <= wire_w_dataa_range171w(0) OR wire_w_man_a_not_zero_w_range167w(0);
	wire_w_lg_w_dataa_range177w178w(0) <= wire_w_dataa_range177w(0) OR wire_w_man_a_not_zero_w_range173w(0);
	wire_w_lg_w_dataa_range183w184w(0) <= wire_w_dataa_range183w(0) OR wire_w_man_a_not_zero_w_range179w(0);
	wire_w_lg_w_dataa_range189w190w(0) <= wire_w_dataa_range189w(0) OR wire_w_man_a_not_zero_w_range185w(0);
	wire_w_lg_w_dataa_range195w196w(0) <= wire_w_dataa_range195w(0) OR wire_w_man_a_not_zero_w_range191w(0);
	wire_w_lg_w_dataa_range87w88w(0) <= wire_w_dataa_range87w(0) OR wire_w_man_a_not_zero_w_range12w(0);
	wire_w_lg_w_dataa_range201w202w(0) <= wire_w_dataa_range201w(0) OR wire_w_man_a_not_zero_w_range197w(0);
	wire_w_lg_w_dataa_range207w208w(0) <= wire_w_dataa_range207w(0) OR wire_w_man_a_not_zero_w_range203w(0);
	wire_w_lg_w_dataa_range213w214w(0) <= wire_w_dataa_range213w(0) OR wire_w_man_a_not_zero_w_range209w(0);
	wire_w_lg_w_dataa_range17w18w(0) <= wire_w_dataa_range17w(0) OR wire_w_exp_a_not_zero_w_range2w(0);
	wire_w_lg_w_dataa_range27w28w(0) <= wire_w_dataa_range27w(0) OR wire_w_exp_a_not_zero_w_range19w(0);
	wire_w_lg_w_dataa_range37w38w(0) <= wire_w_dataa_range37w(0) OR wire_w_exp_a_not_zero_w_range29w(0);
	wire_w_lg_w_dataa_range47w48w(0) <= wire_w_dataa_range47w(0) OR wire_w_exp_a_not_zero_w_range39w(0);
	wire_w_lg_w_dataa_range57w58w(0) <= wire_w_dataa_range57w(0) OR wire_w_exp_a_not_zero_w_range49w(0);
	wire_w_lg_w_dataa_range67w68w(0) <= wire_w_dataa_range67w(0) OR wire_w_exp_a_not_zero_w_range59w(0);
	wire_w_lg_w_dataa_range93w94w(0) <= wire_w_dataa_range93w(0) OR wire_w_man_a_not_zero_w_range89w(0);
	wire_w_lg_w_dataa_range77w78w(0) <= wire_w_dataa_range77w(0) OR wire_w_exp_a_not_zero_w_range69w(0);
	wire_w_lg_w_dataa_range99w100w(0) <= wire_w_dataa_range99w(0) OR wire_w_man_a_not_zero_w_range95w(0);
	wire_w_lg_w_dataa_range105w106w(0) <= wire_w_dataa_range105w(0) OR wire_w_man_a_not_zero_w_range101w(0);
	wire_w_lg_w_dataa_range111w112w(0) <= wire_w_dataa_range111w(0) OR wire_w_man_a_not_zero_w_range107w(0);
	wire_w_lg_w_dataa_range117w118w(0) <= wire_w_dataa_range117w(0) OR wire_w_man_a_not_zero_w_range113w(0);
	wire_w_lg_w_dataa_range123w124w(0) <= wire_w_dataa_range123w(0) OR wire_w_man_a_not_zero_w_range119w(0);
	wire_w_lg_w_dataa_range129w130w(0) <= wire_w_dataa_range129w(0) OR wire_w_man_a_not_zero_w_range125w(0);
	wire_w_lg_w_dataa_range135w136w(0) <= wire_w_dataa_range135w(0) OR wire_w_man_a_not_zero_w_range131w(0);
	wire_w_lg_w_datab_range144w145w(0) <= wire_w_datab_range144w(0) OR wire_w_man_b_not_zero_w_range140w(0);
	wire_w_lg_w_datab_range150w151w(0) <= wire_w_datab_range150w(0) OR wire_w_man_b_not_zero_w_range146w(0);
	wire_w_lg_w_datab_range156w157w(0) <= wire_w_datab_range156w(0) OR wire_w_man_b_not_zero_w_range152w(0);
	wire_w_lg_w_datab_range162w163w(0) <= wire_w_datab_range162w(0) OR wire_w_man_b_not_zero_w_range158w(0);
	wire_w_lg_w_datab_range168w169w(0) <= wire_w_datab_range168w(0) OR wire_w_man_b_not_zero_w_range164w(0);
	wire_w_lg_w_datab_range174w175w(0) <= wire_w_datab_range174w(0) OR wire_w_man_b_not_zero_w_range170w(0);
	wire_w_lg_w_datab_range180w181w(0) <= wire_w_datab_range180w(0) OR wire_w_man_b_not_zero_w_range176w(0);
	wire_w_lg_w_datab_range186w187w(0) <= wire_w_datab_range186w(0) OR wire_w_man_b_not_zero_w_range182w(0);
	wire_w_lg_w_datab_range192w193w(0) <= wire_w_datab_range192w(0) OR wire_w_man_b_not_zero_w_range188w(0);
	wire_w_lg_w_datab_range198w199w(0) <= wire_w_datab_range198w(0) OR wire_w_man_b_not_zero_w_range194w(0);
	wire_w_lg_w_datab_range90w91w(0) <= wire_w_datab_range90w(0) OR wire_w_man_b_not_zero_w_range15w(0);
	wire_w_lg_w_datab_range204w205w(0) <= wire_w_datab_range204w(0) OR wire_w_man_b_not_zero_w_range200w(0);
	wire_w_lg_w_datab_range210w211w(0) <= wire_w_datab_range210w(0) OR wire_w_man_b_not_zero_w_range206w(0);
	wire_w_lg_w_datab_range216w217w(0) <= wire_w_datab_range216w(0) OR wire_w_man_b_not_zero_w_range212w(0);
	wire_w_lg_w_datab_range20w21w(0) <= wire_w_datab_range20w(0) OR wire_w_exp_b_not_zero_w_range5w(0);
	wire_w_lg_w_datab_range30w31w(0) <= wire_w_datab_range30w(0) OR wire_w_exp_b_not_zero_w_range22w(0);
	wire_w_lg_w_datab_range40w41w(0) <= wire_w_datab_range40w(0) OR wire_w_exp_b_not_zero_w_range32w(0);
	wire_w_lg_w_datab_range50w51w(0) <= wire_w_datab_range50w(0) OR wire_w_exp_b_not_zero_w_range42w(0);
	wire_w_lg_w_datab_range60w61w(0) <= wire_w_datab_range60w(0) OR wire_w_exp_b_not_zero_w_range52w(0);
	wire_w_lg_w_datab_range70w71w(0) <= wire_w_datab_range70w(0) OR wire_w_exp_b_not_zero_w_range62w(0);
	wire_w_lg_w_datab_range96w97w(0) <= wire_w_datab_range96w(0) OR wire_w_man_b_not_zero_w_range92w(0);
	wire_w_lg_w_datab_range80w81w(0) <= wire_w_datab_range80w(0) OR wire_w_exp_b_not_zero_w_range72w(0);
	wire_w_lg_w_datab_range102w103w(0) <= wire_w_datab_range102w(0) OR wire_w_man_b_not_zero_w_range98w(0);
	wire_w_lg_w_datab_range108w109w(0) <= wire_w_datab_range108w(0) OR wire_w_man_b_not_zero_w_range104w(0);
	wire_w_lg_w_datab_range114w115w(0) <= wire_w_datab_range114w(0) OR wire_w_man_b_not_zero_w_range110w(0);
	wire_w_lg_w_datab_range120w121w(0) <= wire_w_datab_range120w(0) OR wire_w_man_b_not_zero_w_range116w(0);
	wire_w_lg_w_datab_range126w127w(0) <= wire_w_datab_range126w(0) OR wire_w_man_b_not_zero_w_range122w(0);
	wire_w_lg_w_datab_range132w133w(0) <= wire_w_datab_range132w(0) OR wire_w_man_b_not_zero_w_range128w(0);
	wire_w_lg_w_datab_range138w139w(0) <= wire_w_datab_range138w(0) OR wire_w_man_b_not_zero_w_range134w(0);
	wire_w_lg_w_exp_diff_abs_exceed_max_w_range283w286w(0) <= wire_w_exp_diff_abs_exceed_max_w_range283w(0) OR wire_w_exp_diff_abs_w_range285w(0);
	wire_w_lg_w_exp_diff_abs_exceed_max_w_range287w289w(0) <= wire_w_exp_diff_abs_exceed_max_w_range287w(0) OR wire_w_exp_diff_abs_w_range288w(0);
	wire_w_lg_w_exp_res_not_zero_w_range516w519w(0) <= wire_w_exp_res_not_zero_w_range516w(0) OR wire_w_exp_adjustment2_add_sub_w_range518w(0);
	wire_w_lg_w_exp_res_not_zero_w_range520w522w(0) <= wire_w_exp_res_not_zero_w_range520w(0) OR wire_w_exp_adjustment2_add_sub_w_range521w(0);
	wire_w_lg_w_exp_res_not_zero_w_range523w525w(0) <= wire_w_exp_res_not_zero_w_range523w(0) OR wire_w_exp_adjustment2_add_sub_w_range524w(0);
	wire_w_lg_w_exp_res_not_zero_w_range526w528w(0) <= wire_w_exp_res_not_zero_w_range526w(0) OR wire_w_exp_adjustment2_add_sub_w_range527w(0);
	wire_w_lg_w_exp_res_not_zero_w_range529w531w(0) <= wire_w_exp_res_not_zero_w_range529w(0) OR wire_w_exp_adjustment2_add_sub_w_range530w(0);
	wire_w_lg_w_exp_res_not_zero_w_range532w534w(0) <= wire_w_exp_res_not_zero_w_range532w(0) OR wire_w_exp_adjustment2_add_sub_w_range533w(0);
	wire_w_lg_w_exp_res_not_zero_w_range535w537w(0) <= wire_w_exp_res_not_zero_w_range535w(0) OR wire_w_exp_adjustment2_add_sub_w_range536w(0);
	wire_w_lg_w_exp_res_not_zero_w_range538w539w(0) <= wire_w_exp_res_not_zero_w_range538w(0) OR wire_w_exp_adjustment2_add_sub_w_range511w(0);
	wire_w_lg_w_man_res_not_zero_w2_range417w420w(0) <= wire_w_man_res_not_zero_w2_range417w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range419w(0);
	wire_w_lg_w_man_res_not_zero_w2_range448w450w(0) <= wire_w_man_res_not_zero_w2_range448w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range449w(0);
	wire_w_lg_w_man_res_not_zero_w2_range451w453w(0) <= wire_w_man_res_not_zero_w2_range451w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range452w(0);
	wire_w_lg_w_man_res_not_zero_w2_range454w456w(0) <= wire_w_man_res_not_zero_w2_range454w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range455w(0);
	wire_w_lg_w_man_res_not_zero_w2_range457w459w(0) <= wire_w_man_res_not_zero_w2_range457w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range458w(0);
	wire_w_lg_w_man_res_not_zero_w2_range460w462w(0) <= wire_w_man_res_not_zero_w2_range460w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range461w(0);
	wire_w_lg_w_man_res_not_zero_w2_range463w465w(0) <= wire_w_man_res_not_zero_w2_range463w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range464w(0);
	wire_w_lg_w_man_res_not_zero_w2_range466w468w(0) <= wire_w_man_res_not_zero_w2_range466w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range467w(0);
	wire_w_lg_w_man_res_not_zero_w2_range469w471w(0) <= wire_w_man_res_not_zero_w2_range469w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range470w(0);
	wire_w_lg_w_man_res_not_zero_w2_range472w474w(0) <= wire_w_man_res_not_zero_w2_range472w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range473w(0);
	wire_w_lg_w_man_res_not_zero_w2_range475w477w(0) <= wire_w_man_res_not_zero_w2_range475w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range476w(0);
	wire_w_lg_w_man_res_not_zero_w2_range421w423w(0) <= wire_w_man_res_not_zero_w2_range421w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range422w(0);
	wire_w_lg_w_man_res_not_zero_w2_range478w480w(0) <= wire_w_man_res_not_zero_w2_range478w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range479w(0);
	wire_w_lg_w_man_res_not_zero_w2_range481w483w(0) <= wire_w_man_res_not_zero_w2_range481w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range482w(0);
	wire_w_lg_w_man_res_not_zero_w2_range484w486w(0) <= wire_w_man_res_not_zero_w2_range484w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range485w(0);
	wire_w_lg_w_man_res_not_zero_w2_range487w489w(0) <= wire_w_man_res_not_zero_w2_range487w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range488w(0);
	wire_w_lg_w_man_res_not_zero_w2_range424w426w(0) <= wire_w_man_res_not_zero_w2_range424w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range425w(0);
	wire_w_lg_w_man_res_not_zero_w2_range427w429w(0) <= wire_w_man_res_not_zero_w2_range427w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range428w(0);
	wire_w_lg_w_man_res_not_zero_w2_range430w432w(0) <= wire_w_man_res_not_zero_w2_range430w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range431w(0);
	wire_w_lg_w_man_res_not_zero_w2_range433w435w(0) <= wire_w_man_res_not_zero_w2_range433w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range434w(0);
	wire_w_lg_w_man_res_not_zero_w2_range436w438w(0) <= wire_w_man_res_not_zero_w2_range436w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range437w(0);
	wire_w_lg_w_man_res_not_zero_w2_range439w441w(0) <= wire_w_man_res_not_zero_w2_range439w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range440w(0);
	wire_w_lg_w_man_res_not_zero_w2_range442w444w(0) <= wire_w_man_res_not_zero_w2_range442w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range443w(0);
	wire_w_lg_w_man_res_not_zero_w2_range445w447w(0) <= wire_w_man_res_not_zero_w2_range445w(0) OR wire_w_man_add_sub_res_mag_dffe21_wo_range446w(0);
	aclr <= '0';
	add_sub_dffe25_wi <= add_sub_w2;
	add_sub_dffe25_wo <= add_sub_dffe25;
	add_sub_w2 <= (dataa_sign_dffe1_wo XOR datab_sign_dffe1_wo);
	adder_upper_w <= man_intermediate_res_w(25 DOWNTO 13);
	aligned_dataa_exp_dffe12_wi <= aligned_dataa_exp_w;
	aligned_dataa_exp_dffe12_wo <= aligned_dataa_exp_dffe12;
	aligned_dataa_exp_dffe13_wi <= aligned_dataa_exp_dffe12_wo;
	aligned_dataa_exp_dffe13_wo <= aligned_dataa_exp_dffe13;
	aligned_dataa_exp_dffe14_wi <= aligned_dataa_exp_dffe13_wo;
	aligned_dataa_exp_dffe14_wo <= aligned_dataa_exp_dffe14;
	aligned_dataa_exp_dffe15_wi <= aligned_dataa_exp_dffe14_wo;
	aligned_dataa_exp_dffe15_wo <= aligned_dataa_exp_dffe15_wi;
	aligned_dataa_exp_w <= ( "0" & wire_w_lg_w_lg_input_dataa_denormal_dffe11_wo233w234w);
	aligned_dataa_man_dffe12_wi <= aligned_dataa_man_w(25 DOWNTO 2);
	aligned_dataa_man_dffe12_wo <= aligned_dataa_man_dffe12;
	aligned_dataa_man_dffe13_wi <= aligned_dataa_man_dffe12_wo;
	aligned_dataa_man_dffe13_wo <= aligned_dataa_man_dffe13;
	aligned_dataa_man_dffe14_wi <= aligned_dataa_man_dffe13_wo;
	aligned_dataa_man_dffe14_wo <= aligned_dataa_man_dffe14;
	aligned_dataa_man_dffe15_w <= ( aligned_dataa_man_dffe15_wo & "00");
	aligned_dataa_man_dffe15_wi <= aligned_dataa_man_dffe14_wo;
	aligned_dataa_man_dffe15_wo <= aligned_dataa_man_dffe15_wi;
	aligned_dataa_man_w <= ( wire_w248w & wire_w_lg_w_lg_input_dataa_denormal_dffe11_wo233w243w & "00");
	aligned_dataa_sign_dffe12_wi <= aligned_dataa_sign_w;
	aligned_dataa_sign_dffe12_wo <= aligned_dataa_sign_dffe12;
	aligned_dataa_sign_dffe13_wi <= aligned_dataa_sign_dffe12_wo;
	aligned_dataa_sign_dffe13_wo <= aligned_dataa_sign_dffe13;
	aligned_dataa_sign_dffe14_wi <= aligned_dataa_sign_dffe13_wo;
	aligned_dataa_sign_dffe14_wo <= aligned_dataa_sign_dffe14;
	aligned_dataa_sign_dffe15_wi <= aligned_dataa_sign_dffe14_wo;
	aligned_dataa_sign_dffe15_wo <= aligned_dataa_sign_dffe15_wi;
	aligned_dataa_sign_w <= dataa_dffe11_wo(31);
	aligned_datab_exp_dffe12_wi <= aligned_datab_exp_w;
	aligned_datab_exp_dffe12_wo <= aligned_datab_exp_dffe12;
	aligned_datab_exp_dffe13_wi <= aligned_datab_exp_dffe12_wo;
	aligned_datab_exp_dffe13_wo <= aligned_datab_exp_dffe13;
	aligned_datab_exp_dffe14_wi <= aligned_datab_exp_dffe13_wo;
	aligned_datab_exp_dffe14_wo <= aligned_datab_exp_dffe14;
	aligned_datab_exp_dffe15_wi <= aligned_datab_exp_dffe14_wo;
	aligned_datab_exp_dffe15_wo <= aligned_datab_exp_dffe15_wi;
	aligned_datab_exp_w <= ( "0" & wire_w_lg_w_lg_input_datab_denormal_dffe11_wo252w253w);
	aligned_datab_man_dffe12_wi <= aligned_datab_man_w(25 DOWNTO 2);
	aligned_datab_man_dffe12_wo <= aligned_datab_man_dffe12;
	aligned_datab_man_dffe13_wi <= aligned_datab_man_dffe12_wo;
	aligned_datab_man_dffe13_wo <= aligned_datab_man_dffe13;
	aligned_datab_man_dffe14_wi <= aligned_datab_man_dffe13_wo;
	aligned_datab_man_dffe14_wo <= aligned_datab_man_dffe14;
	aligned_datab_man_dffe15_w <= ( aligned_datab_man_dffe15_wo & "00");
	aligned_datab_man_dffe15_wi <= aligned_datab_man_dffe14_wo;
	aligned_datab_man_dffe15_wo <= aligned_datab_man_dffe15_wi;
	aligned_datab_man_w <= ( wire_w267w & wire_w_lg_w_lg_input_datab_denormal_dffe11_wo252w262w & "00");
	aligned_datab_sign_dffe12_wi <= aligned_datab_sign_w;
	aligned_datab_sign_dffe12_wo <= aligned_datab_sign_dffe12;
	aligned_datab_sign_dffe13_wi <= aligned_datab_sign_dffe12_wo;
	aligned_datab_sign_dffe13_wo <= aligned_datab_sign_dffe13;
	aligned_datab_sign_dffe14_wi <= aligned_datab_sign_dffe13_wo;
	aligned_datab_sign_dffe14_wo <= aligned_datab_sign_dffe14;
	aligned_datab_sign_dffe15_wi <= aligned_datab_sign_dffe14_wo;
	aligned_datab_sign_dffe15_wo <= aligned_datab_sign_dffe15_wi;
	aligned_datab_sign_w <= datab_dffe11_wo(31);
	borrow_w <= (wire_w_lg_sticky_bit_dffe1_wo343w(0) AND wire_w_lg_add_sub_w2342w(0));
	both_inputs_are_infinite_dffe1_wi <= (input_dataa_infinite_dffe15_wo AND input_datab_infinite_dffe15_wo);
	both_inputs_are_infinite_dffe1_wo <= both_inputs_are_infinite_dffe1;
	both_inputs_are_infinite_dffe25_wi <= both_inputs_are_infinite_dffe1_wo;
	both_inputs_are_infinite_dffe25_wo <= both_inputs_are_infinite_dffe25;
	clk_en <= '1';
	data_exp_dffe1_wi <= (wire_w_lg_w_lg_exp_amb_mux_dffe15_wo316w317w OR wire_w_lg_exp_amb_mux_dffe15_wo314w);
	data_exp_dffe1_wo <= data_exp_dffe1;
	dataa_dffe11_wi <= dataa;
	dataa_dffe11_wo <= dataa_dffe11_wi;
	dataa_man_dffe1_wi <= (wire_w_lg_w_lg_exp_amb_mux_dffe15_wo316w324w OR wire_w_lg_exp_amb_mux_dffe15_wo323w);
	dataa_man_dffe1_wo <= dataa_man_dffe1;
	dataa_sign_dffe1_wi <= aligned_dataa_sign_dffe15_wo;
	dataa_sign_dffe1_wo <= dataa_sign_dffe1;
	dataa_sign_dffe25_wi <= dataa_sign_dffe1_wo;
	dataa_sign_dffe25_wo <= dataa_sign_dffe25;
	datab_dffe11_wi <= datab;
	datab_dffe11_wo <= datab_dffe11_wi;
	datab_man_dffe1_wi <= (wire_w_lg_w_lg_exp_amb_mux_dffe15_wo316w331w OR wire_w_lg_exp_amb_mux_dffe15_wo330w);
	datab_man_dffe1_wo <= datab_man_dffe1;
	datab_sign_dffe1_wi <= aligned_datab_sign_dffe15_wo;
	datab_sign_dffe1_wo <= datab_sign_dffe1;
	denormal_flag_w <= (((wire_w_lg_force_nan_w630w(0) AND wire_w_lg_force_infinity_w629w(0)) AND wire_w_lg_force_zero_w628w(0)) AND denormal_res_dffe4_wo);
	denormal_res_dffe32_wi <= denormal_result_w;
	denormal_res_dffe32_wo <= denormal_res_dffe32_wi;
	denormal_res_dffe33_wi <= denormal_res_dffe32_wo;
	denormal_res_dffe33_wo <= denormal_res_dffe33_wi;
	denormal_res_dffe3_wi <= denormal_res_dffe33_wo;
	denormal_res_dffe3_wo <= denormal_res_dffe3;
	denormal_res_dffe41_wi <= denormal_res_dffe42_wo;
	denormal_res_dffe41_wo <= denormal_res_dffe41;
	denormal_res_dffe42_wi <= denormal_res_dffe3_wo;
	denormal_res_dffe42_wo <= denormal_res_dffe42_wi;
	denormal_res_dffe4_wi <= denormal_res_dffe41_wo;
	denormal_res_dffe4_wo <= denormal_res_dffe4;
	denormal_result_w <= ((NOT exp_res_not_zero_w(8)) OR exp_adjustment2_add_sub_w(8));
	exp_a_all_one_w <= ( wire_w_lg_w_dataa_range77w83w & wire_w_lg_w_dataa_range67w73w & wire_w_lg_w_dataa_range57w63w & wire_w_lg_w_dataa_range47w53w & wire_w_lg_w_dataa_range37w43w & wire_w_lg_w_dataa_range27w33w & wire_w_lg_w_dataa_range17w23w & dataa(23));
	exp_a_not_zero_w <= ( wire_w_lg_w_dataa_range77w78w & wire_w_lg_w_dataa_range67w68w & wire_w_lg_w_dataa_range57w58w & wire_w_lg_w_dataa_range47w48w & wire_w_lg_w_dataa_range37w38w & wire_w_lg_w_dataa_range27w28w & wire_w_lg_w_dataa_range17w18w & dataa(23));
	exp_adj_0pads <= (OTHERS => '0');
	exp_adj_dffe21_wi <= (wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w384w OR wire_w383w);
	exp_adj_dffe21_wo <= exp_adj_dffe21;
	exp_adj_dffe23_wi <= exp_adj_dffe21_wo;
	exp_adj_dffe23_wo <= exp_adj_dffe23;
	exp_adj_dffe26_wi <= exp_adj_dffe23_wo;
	exp_adj_dffe26_wo <= exp_adj_dffe26_wi;
	exp_adjust_by_add1 <= "01";
	exp_adjust_by_add2 <= "10";
	exp_adjustment2_add_sub_dataa_w <= exp_value;
	exp_adjustment2_add_sub_datab_w <= exp_adjustment_add_sub_w;
	exp_adjustment2_add_sub_w <= wire_add_sub5_result;
	exp_adjustment_add_sub_dataa_w <= ( priority_encoder_1pads_w & wire_leading_zeroes_cnt_q);
	exp_adjustment_add_sub_datab_w <= ( exp_adj_0pads & exp_adj_dffe26_wo);
	exp_adjustment_add_sub_w <= wire_add_sub4_result;
	exp_all_ones_w <= (OTHERS => '1');
	exp_all_zeros_w <= (OTHERS => '0');
	exp_amb_mux_dffe13_wi <= exp_amb_mux_w;
	exp_amb_mux_dffe13_wo <= exp_amb_mux_dffe13;
	exp_amb_mux_dffe14_wi <= exp_amb_mux_dffe13_wo;
	exp_amb_mux_dffe14_wo <= exp_amb_mux_dffe14;
	exp_amb_mux_dffe15_wi <= exp_amb_mux_dffe14_wo;
	exp_amb_mux_dffe15_wo <= exp_amb_mux_dffe15_wi;
	exp_amb_mux_w <= exp_amb_w(8);
	exp_amb_w <= wire_add_sub1_result;
	exp_b_all_one_w <= ( wire_w_lg_w_datab_range80w85w & wire_w_lg_w_datab_range70w75w & wire_w_lg_w_datab_range60w65w & wire_w_lg_w_datab_range50w55w & wire_w_lg_w_datab_range40w45w & wire_w_lg_w_datab_range30w35w & wire_w_lg_w_datab_range20w25w & datab(23));
	exp_b_not_zero_w <= ( wire_w_lg_w_datab_range80w81w & wire_w_lg_w_datab_range70w71w & wire_w_lg_w_datab_range60w61w & wire_w_lg_w_datab_range50w51w & wire_w_lg_w_datab_range40w41w & wire_w_lg_w_datab_range30w31w & wire_w_lg_w_datab_range20w21w & datab(23));
	exp_bma_w <= wire_add_sub2_result;
	exp_diff_abs_exceed_max_w <= ( wire_w_lg_w_exp_diff_abs_exceed_max_w_range287w289w & wire_w_lg_w_exp_diff_abs_exceed_max_w_range283w286w & exp_diff_abs_w(5));
	exp_diff_abs_max_w <= (OTHERS => '1');
	exp_diff_abs_w <= (wire_w_lg_w_lg_exp_amb_mux_w276w277w OR wire_w_lg_exp_amb_mux_w274w);
	exp_intermediate_res_dffe41_wi <= exp_intermediate_res_dffe42_wo;
	exp_intermediate_res_dffe41_wo <= exp_intermediate_res_dffe41;
	exp_intermediate_res_dffe42_wi <= exp_intermediate_res_w;
	exp_intermediate_res_dffe42_wo <= exp_intermediate_res_dffe42_wi;
	exp_intermediate_res_w <= exp_res_dffe3_wo;
	exp_out_dffe5_wi <= (wire_w_lg_force_nan_w643w OR wire_w_lg_w_lg_force_nan_w630w642w);
	exp_out_dffe5_wo <= exp_out_dffe5;
	exp_res_dffe21_wi <= exp_res_dffe27_wo;
	exp_res_dffe21_wo <= exp_res_dffe21;
	exp_res_dffe22_wi <= exp_res_dffe2_wo;
	exp_res_dffe22_wo <= exp_res_dffe22_wi;
	exp_res_dffe23_wi <= exp_res_dffe21_wo;
	exp_res_dffe23_wo <= exp_res_dffe23;
	exp_res_dffe25_wi <= data_exp_dffe1_wo;
	exp_res_dffe25_wo <= exp_res_dffe25;
	exp_res_dffe26_wi <= exp_res_dffe23_wo;
	exp_res_dffe26_wo <= exp_res_dffe26_wi;
	exp_res_dffe27_wi <= exp_res_dffe22_wo;
	exp_res_dffe27_wo <= exp_res_dffe27;
	exp_res_dffe2_wi <= exp_res_dffe25_wo;
	exp_res_dffe2_wo <= exp_res_dffe2;
	exp_res_dffe32_wi <= wire_w_lg_w_lg_denormal_result_w558w559w;
	exp_res_dffe32_wo <= exp_res_dffe32_wi;
	exp_res_dffe33_wi <= exp_res_dffe32_wo;
	exp_res_dffe33_wo <= exp_res_dffe33_wi;
	exp_res_dffe3_wi <= exp_res_dffe33_wo;
	exp_res_dffe3_wo <= exp_res_dffe3;
	exp_res_dffe4_wi <= exp_rounded_res_w;
	exp_res_dffe4_wo <= exp_res_dffe4;
	exp_res_max_w <= ( wire_w_lg_w_exp_res_max_w_range553w554w & wire_w_lg_w_exp_res_max_w_range551w552w & wire_w_lg_w_exp_res_max_w_range549w550w & wire_w_lg_w_exp_res_max_w_range547w548w & wire_w_lg_w_exp_res_max_w_range545w546w & wire_w_lg_w_exp_res_max_w_range543w544w & wire_w_lg_w_exp_res_max_w_range540w542w & exp_adjustment2_add_sub_w(0));
	exp_res_not_zero_w <= ( wire_w_lg_w_exp_res_not_zero_w_range538w539w & wire_w_lg_w_exp_res_not_zero_w_range535w537w & wire_w_lg_w_exp_res_not_zero_w_range532w534w & wire_w_lg_w_exp_res_not_zero_w_range529w531w & wire_w_lg_w_exp_res_not_zero_w_range526w528w & wire_w_lg_w_exp_res_not_zero_w_range523w525w & wire_w_lg_w_exp_res_not_zero_w_range520w522w & wire_w_lg_w_exp_res_not_zero_w_range516w519w & exp_adjustment2_add_sub_w(0));
	exp_res_rounding_adder_dataa_w <= ( "0" & exp_intermediate_res_dffe41_wo);
	exp_res_rounding_adder_w <= wire_add_sub6_result;
	exp_rounded_res_infinity_w <= exp_rounded_res_max_w(7);
	exp_rounded_res_max_w <= ( wire_w_lg_w_exp_rounded_res_max_w_range620w622w & wire_w_lg_w_exp_rounded_res_max_w_range617w619w & wire_w_lg_w_exp_rounded_res_max_w_range614w616w & wire_w_lg_w_exp_rounded_res_max_w_range611w613w & wire_w_lg_w_exp_rounded_res_max_w_range608w610w & wire_w_lg_w_exp_rounded_res_max_w_range605w607w & wire_w_lg_w_exp_rounded_res_max_w_range601w604w & exp_rounded_res_w(0));
	exp_rounded_res_w <= exp_res_rounding_adder_w(7 DOWNTO 0);
	exp_rounding_adjustment_w <= ( "00000000" & man_res_rounding_add_sub_w(24));
	exp_value <= ( "0" & exp_res_dffe26_wo);
	force_infinity_w <= ((input_is_infinite_dffe4_wo OR rounded_res_infinity_dffe4_wo) OR infinite_res_dffe4_wo);
	force_nan_w <= (infinity_magnitude_sub_dffe4_wo OR input_is_nan_dffe4_wo);
	force_zero_w <= wire_w_lg_man_res_is_not_zero_dffe4_wo627w(0);
	guard_bit_dffe3_wo <= man_res_w3(0);
	infinite_output_sign_dffe1_wi <= (wire_w_lg_w_lg_input_datab_infinite_dffe15_wo338w339w(0) OR wire_w_lg_input_datab_infinite_dffe15_wo337w(0));
	infinite_output_sign_dffe1_wo <= infinite_output_sign_dffe1;
	infinite_output_sign_dffe21_wi <= infinite_output_sign_dffe27_wo;
	infinite_output_sign_dffe21_wo <= infinite_output_sign_dffe21;
	infinite_output_sign_dffe22_wi <= infinite_output_sign_dffe2_wo;
	infinite_output_sign_dffe22_wo <= infinite_output_sign_dffe22_wi;
	infinite_output_sign_dffe23_wi <= infinite_output_sign_dffe21_wo;
	infinite_output_sign_dffe23_wo <= infinite_output_sign_dffe23;
	infinite_output_sign_dffe25_wi <= infinite_output_sign_dffe1_wo;
	infinite_output_sign_dffe25_wo <= infinite_output_sign_dffe25;
	infinite_output_sign_dffe26_wi <= infinite_output_sign_dffe23_wo;
	infinite_output_sign_dffe26_wo <= infinite_output_sign_dffe26_wi;
	infinite_output_sign_dffe27_wi <= infinite_output_sign_dffe22_wo;
	infinite_output_sign_dffe27_wo <= infinite_output_sign_dffe27;
	infinite_output_sign_dffe2_wi <= infinite_output_sign_dffe25_wo;
	infinite_output_sign_dffe2_wo <= infinite_output_sign_dffe2;
	infinite_output_sign_dffe31_wi <= infinite_output_sign_dffe26_wo;
	infinite_output_sign_dffe31_wo <= infinite_output_sign_dffe31;
	infinite_output_sign_dffe32_wi <= infinite_output_sign_dffe31_wo;
	infinite_output_sign_dffe32_wo <= infinite_output_sign_dffe32_wi;
	infinite_output_sign_dffe33_wi <= infinite_output_sign_dffe32_wo;
	infinite_output_sign_dffe33_wo <= infinite_output_sign_dffe33_wi;
	infinite_output_sign_dffe3_wi <= infinite_output_sign_dffe33_wo;
	infinite_output_sign_dffe3_wo <= infinite_output_sign_dffe3;
	infinite_output_sign_dffe41_wi <= infinite_output_sign_dffe42_wo;
	infinite_output_sign_dffe41_wo <= infinite_output_sign_dffe41;
	infinite_output_sign_dffe42_wi <= infinite_output_sign_dffe3_wo;
	infinite_output_sign_dffe42_wo <= infinite_output_sign_dffe42_wi;
	infinite_output_sign_dffe4_wi <= infinite_output_sign_dffe41_wo;
	infinite_output_sign_dffe4_wo <= infinite_output_sign_dffe4;
	infinite_res_dff32_wi <= wire_w_lg_w_exp_res_max_w_range555w561w(0);
	infinite_res_dff32_wo <= infinite_res_dff32_wi;
	infinite_res_dff33_wi <= infinite_res_dff32_wo;
	infinite_res_dff33_wo <= infinite_res_dff33_wi;
	infinite_res_dffe3_wi <= infinite_res_dff33_wo;
	infinite_res_dffe3_wo <= infinite_res_dffe3;
	infinite_res_dffe41_wi <= infinite_res_dffe42_wo;
	infinite_res_dffe41_wo <= infinite_res_dffe41;
	infinite_res_dffe42_wi <= infinite_res_dffe3_wo;
	infinite_res_dffe42_wo <= infinite_res_dffe42_wi;
	infinite_res_dffe4_wi <= infinite_res_dffe41_wo;
	infinite_res_dffe4_wo <= infinite_res_dffe4;
	infinity_magnitude_sub_dffe21_wi <= infinity_magnitude_sub_dffe27_wo;
	infinity_magnitude_sub_dffe21_wo <= infinity_magnitude_sub_dffe21;
	infinity_magnitude_sub_dffe22_wi <= infinity_magnitude_sub_dffe2_wo;
	infinity_magnitude_sub_dffe22_wo <= infinity_magnitude_sub_dffe22_wi;
	infinity_magnitude_sub_dffe23_wi <= infinity_magnitude_sub_dffe21_wo;
	infinity_magnitude_sub_dffe23_wo <= infinity_magnitude_sub_dffe23;
	infinity_magnitude_sub_dffe26_wi <= infinity_magnitude_sub_dffe23_wo;
	infinity_magnitude_sub_dffe26_wo <= infinity_magnitude_sub_dffe26_wi;
	infinity_magnitude_sub_dffe27_wi <= infinity_magnitude_sub_dffe22_wo;
	infinity_magnitude_sub_dffe27_wo <= infinity_magnitude_sub_dffe27;
	infinity_magnitude_sub_dffe2_wi <= (wire_w_lg_add_sub_dffe25_wo491w(0) AND both_inputs_are_infinite_dffe25_wo);
	infinity_magnitude_sub_dffe2_wo <= infinity_magnitude_sub_dffe2;
	infinity_magnitude_sub_dffe31_wi <= infinity_magnitude_sub_dffe26_wo;
	infinity_magnitude_sub_dffe31_wo <= infinity_magnitude_sub_dffe31;
	infinity_magnitude_sub_dffe32_wi <= infinity_magnitude_sub_dffe31_wo;
	infinity_magnitude_sub_dffe32_wo <= infinity_magnitude_sub_dffe32_wi;
	infinity_magnitude_sub_dffe33_wi <= infinity_magnitude_sub_dffe32_wo;
	infinity_magnitude_sub_dffe33_wo <= infinity_magnitude_sub_dffe33_wi;
	infinity_magnitude_sub_dffe3_wi <= infinity_magnitude_sub_dffe33_wo;
	infinity_magnitude_sub_dffe3_wo <= infinity_magnitude_sub_dffe3;
	infinity_magnitude_sub_dffe41_wi <= infinity_magnitude_sub_dffe42_wo;
	infinity_magnitude_sub_dffe41_wo <= infinity_magnitude_sub_dffe41;
	infinity_magnitude_sub_dffe42_wi <= infinity_magnitude_sub_dffe3_wo;
	infinity_magnitude_sub_dffe42_wo <= infinity_magnitude_sub_dffe42_wi;
	infinity_magnitude_sub_dffe4_wi <= infinity_magnitude_sub_dffe41_wo;
	infinity_magnitude_sub_dffe4_wo <= infinity_magnitude_sub_dffe4;
	input_dataa_denormal_dffe11_wi <= input_dataa_denormal_w;
	input_dataa_denormal_dffe11_wo <= input_dataa_denormal_dffe11_wi;
	input_dataa_denormal_w <= ((NOT exp_a_not_zero_w(7)) AND man_a_not_zero_w(22));
	input_dataa_infinite_dffe11_wi <= input_dataa_infinite_w;
	input_dataa_infinite_dffe11_wo <= input_dataa_infinite_dffe11_wi;
	input_dataa_infinite_dffe12_wi <= input_dataa_infinite_dffe11_wo;
	input_dataa_infinite_dffe12_wo <= input_dataa_infinite_dffe12;
	input_dataa_infinite_dffe13_wi <= input_dataa_infinite_dffe12_wo;
	input_dataa_infinite_dffe13_wo <= input_dataa_infinite_dffe13;
	input_dataa_infinite_dffe14_wi <= input_dataa_infinite_dffe13_wo;
	input_dataa_infinite_dffe14_wo <= input_dataa_infinite_dffe14;
	input_dataa_infinite_dffe15_wi <= input_dataa_infinite_dffe14_wo;
	input_dataa_infinite_dffe15_wo <= input_dataa_infinite_dffe15_wi;
	input_dataa_infinite_w <= wire_w_lg_w_exp_a_all_one_w_range84w220w(0);
	input_dataa_nan_dffe11_wi <= input_dataa_nan_w;
	input_dataa_nan_dffe11_wo <= input_dataa_nan_dffe11_wi;
	input_dataa_nan_dffe12_wi <= input_dataa_nan_dffe11_wo;
	input_dataa_nan_dffe12_wo <= input_dataa_nan_dffe12;
	input_dataa_nan_w <= (exp_a_all_one_w(7) AND man_a_not_zero_w(22));
	input_dataa_zero_dffe11_wi <= input_dataa_zero_w;
	input_dataa_zero_dffe11_wo <= input_dataa_zero_dffe11_wi;
	input_dataa_zero_w <= ((NOT exp_a_not_zero_w(7)) AND wire_w_lg_w_man_a_not_zero_w_range215w219w(0));
	input_datab_denormal_dffe11_wi <= input_datab_denormal_w;
	input_datab_denormal_dffe11_wo <= input_datab_denormal_dffe11_wi;
	input_datab_denormal_w <= ((NOT exp_b_not_zero_w(7)) AND man_b_not_zero_w(22));
	input_datab_infinite_dffe11_wi <= input_datab_infinite_w;
	input_datab_infinite_dffe11_wo <= input_datab_infinite_dffe11_wi;
	input_datab_infinite_dffe12_wi <= input_datab_infinite_dffe11_wo;
	input_datab_infinite_dffe12_wo <= input_datab_infinite_dffe12;
	input_datab_infinite_dffe13_wi <= input_datab_infinite_dffe12_wo;
	input_datab_infinite_dffe13_wo <= input_datab_infinite_dffe13;
	input_datab_infinite_dffe14_wi <= input_datab_infinite_dffe13_wo;
	input_datab_infinite_dffe14_wo <= input_datab_infinite_dffe14;
	input_datab_infinite_dffe15_wi <= input_datab_infinite_dffe14_wo;
	input_datab_infinite_dffe15_wo <= input_datab_infinite_dffe15_wi;
	input_datab_infinite_w <= wire_w_lg_w_exp_b_all_one_w_range86w226w(0);
	input_datab_nan_dffe11_wi <= input_datab_nan_w;
	input_datab_nan_dffe11_wo <= input_datab_nan_dffe11_wi;
	input_datab_nan_dffe12_wi <= input_datab_nan_dffe11_wo;
	input_datab_nan_dffe12_wo <= input_datab_nan_dffe12;
	input_datab_nan_w <= (exp_b_all_one_w(7) AND man_b_not_zero_w(22));
	input_datab_zero_dffe11_wi <= input_datab_zero_w;
	input_datab_zero_dffe11_wo <= input_datab_zero_dffe11_wi;
	input_datab_zero_w <= ((NOT exp_b_not_zero_w(7)) AND wire_w_lg_w_man_b_not_zero_w_range218w225w(0));
	input_is_infinite_dffe1_wi <= (input_dataa_infinite_dffe15_wo OR input_datab_infinite_dffe15_wo);
	input_is_infinite_dffe1_wo <= input_is_infinite_dffe1;
	input_is_infinite_dffe21_wi <= input_is_infinite_dffe27_wo;
	input_is_infinite_dffe21_wo <= input_is_infinite_dffe21;
	input_is_infinite_dffe22_wi <= input_is_infinite_dffe2_wo;
	input_is_infinite_dffe22_wo <= input_is_infinite_dffe22_wi;
	input_is_infinite_dffe23_wi <= input_is_infinite_dffe21_wo;
	input_is_infinite_dffe23_wo <= input_is_infinite_dffe23;
	input_is_infinite_dffe25_wi <= input_is_infinite_dffe1_wo;
	input_is_infinite_dffe25_wo <= input_is_infinite_dffe25;
	input_is_infinite_dffe26_wi <= input_is_infinite_dffe23_wo;
	input_is_infinite_dffe26_wo <= input_is_infinite_dffe26_wi;
	input_is_infinite_dffe27_wi <= input_is_infinite_dffe22_wo;
	input_is_infinite_dffe27_wo <= input_is_infinite_dffe27;
	input_is_infinite_dffe2_wi <= input_is_infinite_dffe25_wo;
	input_is_infinite_dffe2_wo <= input_is_infinite_dffe2;
	input_is_infinite_dffe31_wi <= input_is_infinite_dffe26_wo;
	input_is_infinite_dffe31_wo <= input_is_infinite_dffe31;
	input_is_infinite_dffe32_wi <= input_is_infinite_dffe31_wo;
	input_is_infinite_dffe32_wo <= input_is_infinite_dffe32_wi;
	input_is_infinite_dffe33_wi <= input_is_infinite_dffe32_wo;
	input_is_infinite_dffe33_wo <= input_is_infinite_dffe33_wi;
	input_is_infinite_dffe3_wi <= input_is_infinite_dffe33_wo;
	input_is_infinite_dffe3_wo <= input_is_infinite_dffe3;
	input_is_infinite_dffe41_wi <= input_is_infinite_dffe42_wo;
	input_is_infinite_dffe41_wo <= input_is_infinite_dffe41;
	input_is_infinite_dffe42_wi <= input_is_infinite_dffe3_wo;
	input_is_infinite_dffe42_wo <= input_is_infinite_dffe42_wi;
	input_is_infinite_dffe4_wi <= input_is_infinite_dffe41_wo;
	input_is_infinite_dffe4_wo <= input_is_infinite_dffe4;
	input_is_nan_dffe13_wi <= (input_dataa_nan_dffe12_wo OR input_datab_nan_dffe12_wo);
	input_is_nan_dffe13_wo <= input_is_nan_dffe13;
	input_is_nan_dffe14_wi <= input_is_nan_dffe13_wo;
	input_is_nan_dffe14_wo <= input_is_nan_dffe14;
	input_is_nan_dffe15_wi <= input_is_nan_dffe14_wo;
	input_is_nan_dffe15_wo <= input_is_nan_dffe15_wi;
	input_is_nan_dffe1_wi <= input_is_nan_dffe15_wo;
	input_is_nan_dffe1_wo <= input_is_nan_dffe1;
	input_is_nan_dffe21_wi <= input_is_nan_dffe27_wo;
	input_is_nan_dffe21_wo <= input_is_nan_dffe21;
	input_is_nan_dffe22_wi <= input_is_nan_dffe2_wo;
	input_is_nan_dffe22_wo <= input_is_nan_dffe22_wi;
	input_is_nan_dffe23_wi <= input_is_nan_dffe21_wo;
	input_is_nan_dffe23_wo <= input_is_nan_dffe23;
	input_is_nan_dffe25_wi <= input_is_nan_dffe1_wo;
	input_is_nan_dffe25_wo <= input_is_nan_dffe25;
	input_is_nan_dffe26_wi <= input_is_nan_dffe23_wo;
	input_is_nan_dffe26_wo <= input_is_nan_dffe26_wi;
	input_is_nan_dffe27_wi <= input_is_nan_dffe22_wo;
	input_is_nan_dffe27_wo <= input_is_nan_dffe27;
	input_is_nan_dffe2_wi <= input_is_nan_dffe25_wo;
	input_is_nan_dffe2_wo <= input_is_nan_dffe2;
	input_is_nan_dffe31_wi <= input_is_nan_dffe26_wo;
	input_is_nan_dffe31_wo <= input_is_nan_dffe31;
	input_is_nan_dffe32_wi <= input_is_nan_dffe31_wo;
	input_is_nan_dffe32_wo <= input_is_nan_dffe32_wi;
	input_is_nan_dffe33_wi <= input_is_nan_dffe32_wo;
	input_is_nan_dffe33_wo <= input_is_nan_dffe33_wi;
	input_is_nan_dffe3_wi <= input_is_nan_dffe33_wo;
	input_is_nan_dffe3_wo <= input_is_nan_dffe3;
	input_is_nan_dffe41_wi <= input_is_nan_dffe42_wo;
	input_is_nan_dffe41_wo <= input_is_nan_dffe41;
	input_is_nan_dffe42_wi <= input_is_nan_dffe3_wo;
	input_is_nan_dffe42_wo <= input_is_nan_dffe42_wi;
	input_is_nan_dffe4_wi <= input_is_nan_dffe41_wo;
	input_is_nan_dffe4_wo <= input_is_nan_dffe4;
	man_2comp_res_dataa_w <= ( pos_sign_bit_ext & datab_man_dffe1_wo);
	man_2comp_res_datab_w <= ( pos_sign_bit_ext & dataa_man_dffe1_wo);
	man_2comp_res_w <= ( wire_man_2comp_res_lower_w_lg_w_lg_w_lg_cout367w368w369w & wire_man_2comp_res_lower_result);
	man_a_not_zero_w <= ( wire_w_lg_w_dataa_range213w214w & wire_w_lg_w_dataa_range207w208w & wire_w_lg_w_dataa_range201w202w & wire_w_lg_w_dataa_range195w196w & wire_w_lg_w_dataa_range189w190w & wire_w_lg_w_dataa_range183w184w & wire_w_lg_w_dataa_range177w178w & wire_w_lg_w_dataa_range171w172w & wire_w_lg_w_dataa_range165w166w & wire_w_lg_w_dataa_range159w160w & wire_w_lg_w_dataa_range153w154w & wire_w_lg_w_dataa_range147w148w & wire_w_lg_w_dataa_range141w142w & wire_w_lg_w_dataa_range135w136w & wire_w_lg_w_dataa_range129w130w & wire_w_lg_w_dataa_range123w124w & wire_w_lg_w_dataa_range117w118w & wire_w_lg_w_dataa_range111w112w & wire_w_lg_w_dataa_range105w106w & wire_w_lg_w_dataa_range99w100w & wire_w_lg_w_dataa_range93w94w & wire_w_lg_w_dataa_range87w88w & dataa(0));
	man_add_sub_dataa_w <= ( pos_sign_bit_ext & dataa_man_dffe1_wo);
	man_add_sub_datab_w <= ( pos_sign_bit_ext & datab_man_dffe1_wo);
	man_add_sub_res_mag_dffe21_wi <= man_res_mag_w2;
	man_add_sub_res_mag_dffe21_wo <= man_add_sub_res_mag_dffe21;
	man_add_sub_res_mag_dffe23_wi <= man_add_sub_res_mag_dffe21_wo;
	man_add_sub_res_mag_dffe23_wo <= man_add_sub_res_mag_dffe23;
	man_add_sub_res_mag_dffe26_wi <= man_add_sub_res_mag_dffe23_wo;
	man_add_sub_res_mag_dffe26_wo <= man_add_sub_res_mag_dffe26_wi;
	man_add_sub_res_mag_dffe27_wi <= man_add_sub_res_mag_w2;
	man_add_sub_res_mag_dffe27_wo <= man_add_sub_res_mag_dffe27;
	man_add_sub_res_mag_w2 <= (wire_w_lg_w_man_add_sub_w_range372w379w OR wire_w_lg_w_lg_w_man_add_sub_w_range372w375w378w);
	man_add_sub_res_sign_dffe21_wo <= man_add_sub_res_sign_dffe21;
	man_add_sub_res_sign_dffe23_wi <= man_add_sub_res_sign_dffe21_wo;
	man_add_sub_res_sign_dffe23_wo <= man_add_sub_res_sign_dffe23;
	man_add_sub_res_sign_dffe26_wi <= man_add_sub_res_sign_dffe23_wo;
	man_add_sub_res_sign_dffe26_wo <= man_add_sub_res_sign_dffe26_wi;
	man_add_sub_res_sign_dffe27_wi <= man_add_sub_res_sign_w2;
	man_add_sub_res_sign_dffe27_wo <= man_add_sub_res_sign_dffe27;
	man_add_sub_res_sign_w2 <= (wire_w_lg_need_complement_dffe22_wo376w(0) OR (wire_w_lg_need_complement_dffe22_wo373w(0) AND man_add_sub_w(27)));
	man_add_sub_w <= ( wire_man_add_sub_lower_w_lg_w_lg_w_lg_cout354w355w356w & wire_man_add_sub_lower_result);
	man_all_zeros_w <= (OTHERS => '0');
	man_b_not_zero_w <= ( wire_w_lg_w_datab_range216w217w & wire_w_lg_w_datab_range210w211w & wire_w_lg_w_datab_range204w205w & wire_w_lg_w_datab_range198w199w & wire_w_lg_w_datab_range192w193w & wire_w_lg_w_datab_range186w187w & wire_w_lg_w_datab_range180w181w & wire_w_lg_w_datab_range174w175w & wire_w_lg_w_datab_range168w169w & wire_w_lg_w_datab_range162w163w & wire_w_lg_w_datab_range156w157w & wire_w_lg_w_datab_range150w151w & wire_w_lg_w_datab_range144w145w & wire_w_lg_w_datab_range138w139w & wire_w_lg_w_datab_range132w133w & wire_w_lg_w_datab_range126w127w & wire_w_lg_w_datab_range120w121w & wire_w_lg_w_datab_range114w115w & wire_w_lg_w_datab_range108w109w & wire_w_lg_w_datab_range102w103w & wire_w_lg_w_datab_range96w97w & wire_w_lg_w_datab_range90w91w & datab(0));
	man_dffe31_wo <= man_dffe31;
	man_intermediate_res_w <= ( "00" & man_res_w3);
	man_leading_zeros_cnt_w <= man_leading_zeros_dffe31_wo;
	man_leading_zeros_dffe31_wi <= (NOT wire_leading_zeroes_cnt_q);
	man_leading_zeros_dffe31_wo <= man_leading_zeros_dffe31;
	man_nan_w <= "10000000000000000000000";
	man_out_dffe5_wi <= (wire_w_lg_force_nan_w652w OR wire_w_lg_w_lg_force_nan_w630w651w);
	man_out_dffe5_wo <= man_out_dffe5;
	man_res_dffe4_wi <= man_rounded_res_w;
	man_res_dffe4_wo <= man_res_dffe4;
	man_res_is_not_zero_dffe31_wi <= man_res_not_zero_dffe26_wo;
	man_res_is_not_zero_dffe31_wo <= man_res_is_not_zero_dffe31;
	man_res_is_not_zero_dffe32_wi <= man_res_is_not_zero_dffe31_wo;
	man_res_is_not_zero_dffe32_wo <= man_res_is_not_zero_dffe32_wi;
	man_res_is_not_zero_dffe33_wi <= man_res_is_not_zero_dffe32_wo;
	man_res_is_not_zero_dffe33_wo <= man_res_is_not_zero_dffe33_wi;
	man_res_is_not_zero_dffe3_wi <= man_res_is_not_zero_dffe33_wo;
	man_res_is_not_zero_dffe3_wo <= man_res_is_not_zero_dffe3;
	man_res_is_not_zero_dffe41_wi <= man_res_is_not_zero_dffe42_wo;
	man_res_is_not_zero_dffe41_wo <= man_res_is_not_zero_dffe41;
	man_res_is_not_zero_dffe42_wi <= man_res_is_not_zero_dffe3_wo;
	man_res_is_not_zero_dffe42_wo <= man_res_is_not_zero_dffe42_wi;
	man_res_is_not_zero_dffe4_wi <= man_res_is_not_zero_dffe41_wo;
	man_res_is_not_zero_dffe4_wo <= man_res_is_not_zero_dffe4;
	man_res_mag_w2 <= (wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w414w OR wire_w412w);
	man_res_not_zero_dffe23_wi <= man_res_not_zero_w2(24);
	man_res_not_zero_dffe23_wo <= man_res_not_zero_dffe23;
	man_res_not_zero_dffe26_wi <= man_res_not_zero_dffe23_wo;
	man_res_not_zero_dffe26_wo <= man_res_not_zero_dffe26_wi;
	man_res_not_zero_w2 <= ( wire_w_lg_w_man_res_not_zero_w2_range487w489w & wire_w_lg_w_man_res_not_zero_w2_range484w486w & wire_w_lg_w_man_res_not_zero_w2_range481w483w & wire_w_lg_w_man_res_not_zero_w2_range478w480w & wire_w_lg_w_man_res_not_zero_w2_range475w477w & wire_w_lg_w_man_res_not_zero_w2_range472w474w & wire_w_lg_w_man_res_not_zero_w2_range469w471w & wire_w_lg_w_man_res_not_zero_w2_range466w468w & wire_w_lg_w_man_res_not_zero_w2_range463w465w & wire_w_lg_w_man_res_not_zero_w2_range460w462w & wire_w_lg_w_man_res_not_zero_w2_range457w459w & wire_w_lg_w_man_res_not_zero_w2_range454w456w & wire_w_lg_w_man_res_not_zero_w2_range451w453w & wire_w_lg_w_man_res_not_zero_w2_range448w450w & wire_w_lg_w_man_res_not_zero_w2_range445w447w & wire_w_lg_w_man_res_not_zero_w2_range442w444w & wire_w_lg_w_man_res_not_zero_w2_range439w441w & wire_w_lg_w_man_res_not_zero_w2_range436w438w & wire_w_lg_w_man_res_not_zero_w2_range433w435w & wire_w_lg_w_man_res_not_zero_w2_range430w432w & wire_w_lg_w_man_res_not_zero_w2_range427w429w & wire_w_lg_w_man_res_not_zero_w2_range424w426w & wire_w_lg_w_man_res_not_zero_w2_range421w423w & wire_w_lg_w_man_res_not_zero_w2_range417w420w & man_add_sub_res_mag_dffe21_wo(1));
	man_res_rounding_add_sub_datab_w <= ( "0000000000000000000000000" & man_rounding_add_value_w);
	man_res_rounding_add_sub_w <= man_res_rounding_add_sub_result_reg;
	man_res_w3 <= wire_lbarrel_shift_result(25 DOWNTO 2);
	man_rounded_res_w <= (wire_w_lg_w_man_res_rounding_add_sub_w_range585w589w OR wire_w587w);
	man_rounding_add_value_w <= (round_bit_dffe3_wo AND (sticky_bit_dffe3_wo OR guard_bit_dffe3_wo));
	man_smaller_dffe13_wi <= man_smaller_w;
	man_smaller_dffe13_wo <= man_smaller_dffe13;
	man_smaller_w <= (wire_w_lg_exp_amb_mux_w280w OR wire_w_lg_w_lg_exp_amb_mux_w276w279w);
	need_complement_dffe22_wi <= need_complement_dffe2_wo;
	need_complement_dffe22_wo <= need_complement_dffe22_wi;
	need_complement_dffe2_wi <= dataa_sign_dffe25_wo;
	need_complement_dffe2_wo <= need_complement_dffe2;
	pos_sign_bit_ext <= (OTHERS => '0');
	priority_encoder_1pads_w <= (OTHERS => '1');
	result <= ( sign_out_dffe5_wo & exp_out_dffe5_wo & man_out_dffe5_wo);
	round_bit_dffe21_wi <= round_bit_w;
	round_bit_dffe21_wo <= round_bit_dffe21;
	round_bit_dffe23_wi <= round_bit_dffe21_wo;
	round_bit_dffe23_wo <= round_bit_dffe23;
	round_bit_dffe26_wi <= round_bit_dffe23_wo;
	round_bit_dffe26_wo <= round_bit_dffe26_wi;
	round_bit_dffe31_wi <= round_bit_dffe26_wo;
	round_bit_dffe31_wo <= round_bit_dffe31;
	round_bit_dffe32_wi <= round_bit_dffe31_wo;
	round_bit_dffe32_wo <= round_bit_dffe32_wi;
	round_bit_dffe33_wi <= round_bit_dffe32_wo;
	round_bit_dffe33_wo <= round_bit_dffe33_wi;
	round_bit_dffe3_wi <= round_bit_dffe33_wo;
	round_bit_dffe3_wo <= round_bit_dffe3;
	round_bit_w <= ((((wire_w397w(0) AND man_add_sub_res_mag_dffe27_wo(0)) OR ((wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w382w(0) AND man_add_sub_res_mag_dffe27_wo(25)) AND man_add_sub_res_mag_dffe27_wo(1))) OR (wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w391w(0) AND man_add_sub_res_mag_dffe27_wo(2))) OR ((man_add_sub_res_mag_dffe27_wo(26) AND man_add_sub_res_mag_dffe27_wo(25)) AND man_add_sub_res_mag_dffe27_wo(2)));
	rounded_res_infinity_dffe4_wi <= exp_rounded_res_infinity_w;
	rounded_res_infinity_dffe4_wo <= rounded_res_infinity_dffe4;
	rshift_distance_dffe13_wi <= rshift_distance_w;
	rshift_distance_dffe13_wo <= rshift_distance_dffe13;
	rshift_distance_dffe14_wi <= rshift_distance_dffe13_wo;
	rshift_distance_dffe14_wo <= rshift_distance_dffe14;
	rshift_distance_dffe15_wi <= rshift_distance_dffe14_wo;
	rshift_distance_dffe15_wo <= rshift_distance_dffe15_wi;
	rshift_distance_w <= (wire_w_lg_w_exp_diff_abs_exceed_max_w_range290w294w OR wire_w293w);
	sign_dffe31_wi <= ((man_res_not_zero_dffe26_wo AND man_add_sub_res_sign_dffe26_wo) OR wire_w_lg_w_lg_man_res_not_zero_dffe26_wo503w504w(0));
	sign_dffe31_wo <= sign_dffe31;
	sign_dffe32_wi <= sign_dffe31_wo;
	sign_dffe32_wo <= sign_dffe32_wi;
	sign_dffe33_wi <= sign_dffe32_wo;
	sign_dffe33_wo <= sign_dffe33_wi;
	sign_out_dffe5_wi <= (wire_w_lg_force_nan_w630w(0) AND ((force_infinity_w AND infinite_output_sign_dffe4_wo) OR wire_w_lg_w_lg_force_infinity_w629w654w(0)));
	sign_out_dffe5_wo <= sign_out_dffe5;
	sign_res_dffe3_wi <= sign_dffe33_wo;
	sign_res_dffe3_wo <= sign_res_dffe3;
	sign_res_dffe41_wi <= sign_res_dffe42_wo;
	sign_res_dffe41_wo <= sign_res_dffe41;
	sign_res_dffe42_wi <= sign_res_dffe3_wo;
	sign_res_dffe42_wo <= sign_res_dffe42_wi;
	sign_res_dffe4_wi <= sign_res_dffe41_wo;
	sign_res_dffe4_wo <= sign_res_dffe4;
	sticky_bit_cnt_dataa_w <= ( "0" & rshift_distance_dffe15_wo);
	sticky_bit_cnt_datab_w <= ( "0" & wire_trailing_zeros_cnt_q);
	sticky_bit_cnt_res_w <= wire_add_sub3_result;
	sticky_bit_dffe1_wi <= wire_trailing_zeros_limit_comparator_agb;
	sticky_bit_dffe1_wo <= sticky_bit_dffe1;
	sticky_bit_dffe21_wi <= sticky_bit_w;
	sticky_bit_dffe21_wo <= sticky_bit_dffe21;
	sticky_bit_dffe22_wi <= sticky_bit_dffe2_wo;
	sticky_bit_dffe22_wo <= sticky_bit_dffe22_wi;
	sticky_bit_dffe23_wi <= sticky_bit_dffe21_wo;
	sticky_bit_dffe23_wo <= sticky_bit_dffe23;
	sticky_bit_dffe25_wi <= sticky_bit_dffe1_wo;
	sticky_bit_dffe25_wo <= sticky_bit_dffe25;
	sticky_bit_dffe26_wi <= sticky_bit_dffe23_wo;
	sticky_bit_dffe26_wo <= sticky_bit_dffe26_wi;
	sticky_bit_dffe27_wi <= sticky_bit_dffe22_wo;
	sticky_bit_dffe27_wo <= sticky_bit_dffe27;
	sticky_bit_dffe2_wi <= sticky_bit_dffe25_wo;
	sticky_bit_dffe2_wo <= sticky_bit_dffe2;
	sticky_bit_dffe31_wi <= sticky_bit_dffe26_wo;
	sticky_bit_dffe31_wo <= sticky_bit_dffe31;
	sticky_bit_dffe32_wi <= sticky_bit_dffe31_wo;
	sticky_bit_dffe32_wo <= sticky_bit_dffe32_wi;
	sticky_bit_dffe33_wi <= sticky_bit_dffe32_wo;
	sticky_bit_dffe33_wo <= sticky_bit_dffe33_wi;
	sticky_bit_dffe3_wi <= sticky_bit_dffe33_wo;
	sticky_bit_dffe3_wo <= sticky_bit_dffe3;
	sticky_bit_w <= (((wire_w_lg_w397w407w(0) OR ((wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w382w(0) AND man_add_sub_res_mag_dffe27_wo(25)) AND wire_w_lg_sticky_bit_dffe27_wo402w(0))) OR (wire_w_lg_w_man_add_sub_res_mag_dffe27_wo_range381w391w(0) AND (wire_w_lg_sticky_bit_dffe27_wo402w(0) OR man_add_sub_res_mag_dffe27_wo(1)))) OR ((man_add_sub_res_mag_dffe27_wo(26) AND man_add_sub_res_mag_dffe27_wo(25)) AND (wire_w_lg_sticky_bit_dffe27_wo402w(0) OR man_add_sub_res_mag_dffe27_wo(1))));
	trailing_zeros_limit_w <= "000010";
	zero_man_sign_dffe21_wi <= zero_man_sign_dffe27_wo;
	zero_man_sign_dffe21_wo <= zero_man_sign_dffe21;
	zero_man_sign_dffe22_wi <= zero_man_sign_dffe2_wo;
	zero_man_sign_dffe22_wo <= zero_man_sign_dffe22_wi;
	zero_man_sign_dffe23_wi <= zero_man_sign_dffe21_wo;
	zero_man_sign_dffe23_wo <= zero_man_sign_dffe23;
	zero_man_sign_dffe26_wi <= zero_man_sign_dffe23_wo;
	zero_man_sign_dffe26_wo <= zero_man_sign_dffe26_wi;
	zero_man_sign_dffe27_wi <= zero_man_sign_dffe22_wo;
	zero_man_sign_dffe27_wo <= zero_man_sign_dffe27;
	zero_man_sign_dffe2_wi <= (dataa_sign_dffe25_wo AND add_sub_dffe25_wo);
	zero_man_sign_dffe2_wo <= zero_man_sign_dffe2;
	wire_w_aligned_dataa_exp_dffe15_wo_range315w <= aligned_dataa_exp_dffe15_wo(7 DOWNTO 0);
	wire_w_aligned_datab_exp_dffe15_wo_range313w <= aligned_datab_exp_dffe15_wo(7 DOWNTO 0);
	wire_w_dataa_range141w(0) <= dataa(10);
	wire_w_dataa_range147w(0) <= dataa(11);
	wire_w_dataa_range153w(0) <= dataa(12);
	wire_w_dataa_range159w(0) <= dataa(13);
	wire_w_dataa_range165w(0) <= dataa(14);
	wire_w_dataa_range171w(0) <= dataa(15);
	wire_w_dataa_range177w(0) <= dataa(16);
	wire_w_dataa_range183w(0) <= dataa(17);
	wire_w_dataa_range189w(0) <= dataa(18);
	wire_w_dataa_range195w(0) <= dataa(19);
	wire_w_dataa_range87w(0) <= dataa(1);
	wire_w_dataa_range201w(0) <= dataa(20);
	wire_w_dataa_range207w(0) <= dataa(21);
	wire_w_dataa_range213w(0) <= dataa(22);
	wire_w_dataa_range17w(0) <= dataa(24);
	wire_w_dataa_range27w(0) <= dataa(25);
	wire_w_dataa_range37w(0) <= dataa(26);
	wire_w_dataa_range47w(0) <= dataa(27);
	wire_w_dataa_range57w(0) <= dataa(28);
	wire_w_dataa_range67w(0) <= dataa(29);
	wire_w_dataa_range93w(0) <= dataa(2);
	wire_w_dataa_range77w(0) <= dataa(30);
	wire_w_dataa_range99w(0) <= dataa(3);
	wire_w_dataa_range105w(0) <= dataa(4);
	wire_w_dataa_range111w(0) <= dataa(5);
	wire_w_dataa_range117w(0) <= dataa(6);
	wire_w_dataa_range123w(0) <= dataa(7);
	wire_w_dataa_range129w(0) <= dataa(8);
	wire_w_dataa_range135w(0) <= dataa(9);
	wire_w_dataa_dffe11_wo_range242w <= dataa_dffe11_wo(22 DOWNTO 0);
	wire_w_dataa_dffe11_wo_range232w <= dataa_dffe11_wo(30 DOWNTO 23);
	wire_w_datab_range144w(0) <= datab(10);
	wire_w_datab_range150w(0) <= datab(11);
	wire_w_datab_range156w(0) <= datab(12);
	wire_w_datab_range162w(0) <= datab(13);
	wire_w_datab_range168w(0) <= datab(14);
	wire_w_datab_range174w(0) <= datab(15);
	wire_w_datab_range180w(0) <= datab(16);
	wire_w_datab_range186w(0) <= datab(17);
	wire_w_datab_range192w(0) <= datab(18);
	wire_w_datab_range198w(0) <= datab(19);
	wire_w_datab_range90w(0) <= datab(1);
	wire_w_datab_range204w(0) <= datab(20);
	wire_w_datab_range210w(0) <= datab(21);
	wire_w_datab_range216w(0) <= datab(22);
	wire_w_datab_range20w(0) <= datab(24);
	wire_w_datab_range30w(0) <= datab(25);
	wire_w_datab_range40w(0) <= datab(26);
	wire_w_datab_range50w(0) <= datab(27);
	wire_w_datab_range60w(0) <= datab(28);
	wire_w_datab_range70w(0) <= datab(29);
	wire_w_datab_range96w(0) <= datab(2);
	wire_w_datab_range80w(0) <= datab(30);
	wire_w_datab_range102w(0) <= datab(3);
	wire_w_datab_range108w(0) <= datab(4);
	wire_w_datab_range114w(0) <= datab(5);
	wire_w_datab_range120w(0) <= datab(6);
	wire_w_datab_range126w(0) <= datab(7);
	wire_w_datab_range132w(0) <= datab(8);
	wire_w_datab_range138w(0) <= datab(9);
	wire_w_datab_dffe11_wo_range261w <= datab_dffe11_wo(22 DOWNTO 0);
	wire_w_datab_dffe11_wo_range251w <= datab_dffe11_wo(30 DOWNTO 23);
	wire_w_exp_a_all_one_w_range7w(0) <= exp_a_all_one_w(0);
	wire_w_exp_a_all_one_w_range24w(0) <= exp_a_all_one_w(1);
	wire_w_exp_a_all_one_w_range34w(0) <= exp_a_all_one_w(2);
	wire_w_exp_a_all_one_w_range44w(0) <= exp_a_all_one_w(3);
	wire_w_exp_a_all_one_w_range54w(0) <= exp_a_all_one_w(4);
	wire_w_exp_a_all_one_w_range64w(0) <= exp_a_all_one_w(5);
	wire_w_exp_a_all_one_w_range74w(0) <= exp_a_all_one_w(6);
	wire_w_exp_a_all_one_w_range84w(0) <= exp_a_all_one_w(7);
	wire_w_exp_a_not_zero_w_range2w(0) <= exp_a_not_zero_w(0);
	wire_w_exp_a_not_zero_w_range19w(0) <= exp_a_not_zero_w(1);
	wire_w_exp_a_not_zero_w_range29w(0) <= exp_a_not_zero_w(2);
	wire_w_exp_a_not_zero_w_range39w(0) <= exp_a_not_zero_w(3);
	wire_w_exp_a_not_zero_w_range49w(0) <= exp_a_not_zero_w(4);
	wire_w_exp_a_not_zero_w_range59w(0) <= exp_a_not_zero_w(5);
	wire_w_exp_a_not_zero_w_range69w(0) <= exp_a_not_zero_w(6);
	wire_w_exp_adjustment2_add_sub_w_range518w(0) <= exp_adjustment2_add_sub_w(1);
	wire_w_exp_adjustment2_add_sub_w_range521w(0) <= exp_adjustment2_add_sub_w(2);
	wire_w_exp_adjustment2_add_sub_w_range524w(0) <= exp_adjustment2_add_sub_w(3);
	wire_w_exp_adjustment2_add_sub_w_range527w(0) <= exp_adjustment2_add_sub_w(4);
	wire_w_exp_adjustment2_add_sub_w_range530w(0) <= exp_adjustment2_add_sub_w(5);
	wire_w_exp_adjustment2_add_sub_w_range533w(0) <= exp_adjustment2_add_sub_w(6);
	wire_w_exp_adjustment2_add_sub_w_range557w <= exp_adjustment2_add_sub_w(7 DOWNTO 0);
	wire_w_exp_adjustment2_add_sub_w_range536w(0) <= exp_adjustment2_add_sub_w(7);
	wire_w_exp_adjustment2_add_sub_w_range511w(0) <= exp_adjustment2_add_sub_w(8);
	wire_w_exp_amb_w_range275w <= exp_amb_w(7 DOWNTO 0);
	wire_w_exp_b_all_one_w_range9w(0) <= exp_b_all_one_w(0);
	wire_w_exp_b_all_one_w_range26w(0) <= exp_b_all_one_w(1);
	wire_w_exp_b_all_one_w_range36w(0) <= exp_b_all_one_w(2);
	wire_w_exp_b_all_one_w_range46w(0) <= exp_b_all_one_w(3);
	wire_w_exp_b_all_one_w_range56w(0) <= exp_b_all_one_w(4);
	wire_w_exp_b_all_one_w_range66w(0) <= exp_b_all_one_w(5);
	wire_w_exp_b_all_one_w_range76w(0) <= exp_b_all_one_w(6);
	wire_w_exp_b_all_one_w_range86w(0) <= exp_b_all_one_w(7);
	wire_w_exp_b_not_zero_w_range5w(0) <= exp_b_not_zero_w(0);
	wire_w_exp_b_not_zero_w_range22w(0) <= exp_b_not_zero_w(1);
	wire_w_exp_b_not_zero_w_range32w(0) <= exp_b_not_zero_w(2);
	wire_w_exp_b_not_zero_w_range42w(0) <= exp_b_not_zero_w(3);
	wire_w_exp_b_not_zero_w_range52w(0) <= exp_b_not_zero_w(4);
	wire_w_exp_b_not_zero_w_range62w(0) <= exp_b_not_zero_w(5);
	wire_w_exp_b_not_zero_w_range72w(0) <= exp_b_not_zero_w(6);
	wire_w_exp_bma_w_range273w <= exp_bma_w(7 DOWNTO 0);
	wire_w_exp_diff_abs_exceed_max_w_range283w(0) <= exp_diff_abs_exceed_max_w(0);
	wire_w_exp_diff_abs_exceed_max_w_range287w(0) <= exp_diff_abs_exceed_max_w(1);
	wire_w_exp_diff_abs_exceed_max_w_range290w(0) <= exp_diff_abs_exceed_max_w(2);
	wire_w_exp_diff_abs_w_range291w <= exp_diff_abs_w(4 DOWNTO 0);
	wire_w_exp_diff_abs_w_range285w(0) <= exp_diff_abs_w(6);
	wire_w_exp_diff_abs_w_range288w(0) <= exp_diff_abs_w(7);
	wire_w_exp_res_max_w_range540w(0) <= exp_res_max_w(0);
	wire_w_exp_res_max_w_range543w(0) <= exp_res_max_w(1);
	wire_w_exp_res_max_w_range545w(0) <= exp_res_max_w(2);
	wire_w_exp_res_max_w_range547w(0) <= exp_res_max_w(3);
	wire_w_exp_res_max_w_range549w(0) <= exp_res_max_w(4);
	wire_w_exp_res_max_w_range551w(0) <= exp_res_max_w(5);
	wire_w_exp_res_max_w_range553w(0) <= exp_res_max_w(6);
	wire_w_exp_res_max_w_range555w(0) <= exp_res_max_w(7);
	wire_w_exp_res_not_zero_w_range516w(0) <= exp_res_not_zero_w(0);
	wire_w_exp_res_not_zero_w_range520w(0) <= exp_res_not_zero_w(1);
	wire_w_exp_res_not_zero_w_range523w(0) <= exp_res_not_zero_w(2);
	wire_w_exp_res_not_zero_w_range526w(0) <= exp_res_not_zero_w(3);
	wire_w_exp_res_not_zero_w_range529w(0) <= exp_res_not_zero_w(4);
	wire_w_exp_res_not_zero_w_range532w(0) <= exp_res_not_zero_w(5);
	wire_w_exp_res_not_zero_w_range535w(0) <= exp_res_not_zero_w(6);
	wire_w_exp_res_not_zero_w_range538w(0) <= exp_res_not_zero_w(7);
	wire_w_exp_rounded_res_max_w_range601w(0) <= exp_rounded_res_max_w(0);
	wire_w_exp_rounded_res_max_w_range605w(0) <= exp_rounded_res_max_w(1);
	wire_w_exp_rounded_res_max_w_range608w(0) <= exp_rounded_res_max_w(2);
	wire_w_exp_rounded_res_max_w_range611w(0) <= exp_rounded_res_max_w(3);
	wire_w_exp_rounded_res_max_w_range614w(0) <= exp_rounded_res_max_w(4);
	wire_w_exp_rounded_res_max_w_range617w(0) <= exp_rounded_res_max_w(5);
	wire_w_exp_rounded_res_max_w_range620w(0) <= exp_rounded_res_max_w(6);
	wire_w_exp_rounded_res_w_range603w(0) <= exp_rounded_res_w(1);
	wire_w_exp_rounded_res_w_range606w(0) <= exp_rounded_res_w(2);
	wire_w_exp_rounded_res_w_range609w(0) <= exp_rounded_res_w(3);
	wire_w_exp_rounded_res_w_range612w(0) <= exp_rounded_res_w(4);
	wire_w_exp_rounded_res_w_range615w(0) <= exp_rounded_res_w(5);
	wire_w_exp_rounded_res_w_range618w(0) <= exp_rounded_res_w(6);
	wire_w_exp_rounded_res_w_range621w(0) <= exp_rounded_res_w(7);
	wire_w_man_a_not_zero_w_range12w(0) <= man_a_not_zero_w(0);
	wire_w_man_a_not_zero_w_range143w(0) <= man_a_not_zero_w(10);
	wire_w_man_a_not_zero_w_range149w(0) <= man_a_not_zero_w(11);
	wire_w_man_a_not_zero_w_range155w(0) <= man_a_not_zero_w(12);
	wire_w_man_a_not_zero_w_range161w(0) <= man_a_not_zero_w(13);
	wire_w_man_a_not_zero_w_range167w(0) <= man_a_not_zero_w(14);
	wire_w_man_a_not_zero_w_range173w(0) <= man_a_not_zero_w(15);
	wire_w_man_a_not_zero_w_range179w(0) <= man_a_not_zero_w(16);
	wire_w_man_a_not_zero_w_range185w(0) <= man_a_not_zero_w(17);
	wire_w_man_a_not_zero_w_range191w(0) <= man_a_not_zero_w(18);
	wire_w_man_a_not_zero_w_range197w(0) <= man_a_not_zero_w(19);
	wire_w_man_a_not_zero_w_range89w(0) <= man_a_not_zero_w(1);
	wire_w_man_a_not_zero_w_range203w(0) <= man_a_not_zero_w(20);
	wire_w_man_a_not_zero_w_range209w(0) <= man_a_not_zero_w(21);
	wire_w_man_a_not_zero_w_range215w(0) <= man_a_not_zero_w(22);
	wire_w_man_a_not_zero_w_range95w(0) <= man_a_not_zero_w(2);
	wire_w_man_a_not_zero_w_range101w(0) <= man_a_not_zero_w(3);
	wire_w_man_a_not_zero_w_range107w(0) <= man_a_not_zero_w(4);
	wire_w_man_a_not_zero_w_range113w(0) <= man_a_not_zero_w(5);
	wire_w_man_a_not_zero_w_range119w(0) <= man_a_not_zero_w(6);
	wire_w_man_a_not_zero_w_range125w(0) <= man_a_not_zero_w(7);
	wire_w_man_a_not_zero_w_range131w(0) <= man_a_not_zero_w(8);
	wire_w_man_a_not_zero_w_range137w(0) <= man_a_not_zero_w(9);
	wire_w_man_add_sub_res_mag_dffe21_wo_range443w(0) <= man_add_sub_res_mag_dffe21_wo(10);
	wire_w_man_add_sub_res_mag_dffe21_wo_range446w(0) <= man_add_sub_res_mag_dffe21_wo(11);
	wire_w_man_add_sub_res_mag_dffe21_wo_range449w(0) <= man_add_sub_res_mag_dffe21_wo(12);
	wire_w_man_add_sub_res_mag_dffe21_wo_range452w(0) <= man_add_sub_res_mag_dffe21_wo(13);
	wire_w_man_add_sub_res_mag_dffe21_wo_range455w(0) <= man_add_sub_res_mag_dffe21_wo(14);
	wire_w_man_add_sub_res_mag_dffe21_wo_range458w(0) <= man_add_sub_res_mag_dffe21_wo(15);
	wire_w_man_add_sub_res_mag_dffe21_wo_range461w(0) <= man_add_sub_res_mag_dffe21_wo(16);
	wire_w_man_add_sub_res_mag_dffe21_wo_range464w(0) <= man_add_sub_res_mag_dffe21_wo(17);
	wire_w_man_add_sub_res_mag_dffe21_wo_range467w(0) <= man_add_sub_res_mag_dffe21_wo(18);
	wire_w_man_add_sub_res_mag_dffe21_wo_range470w(0) <= man_add_sub_res_mag_dffe21_wo(19);
	wire_w_man_add_sub_res_mag_dffe21_wo_range473w(0) <= man_add_sub_res_mag_dffe21_wo(20);
	wire_w_man_add_sub_res_mag_dffe21_wo_range476w(0) <= man_add_sub_res_mag_dffe21_wo(21);
	wire_w_man_add_sub_res_mag_dffe21_wo_range479w(0) <= man_add_sub_res_mag_dffe21_wo(22);
	wire_w_man_add_sub_res_mag_dffe21_wo_range482w(0) <= man_add_sub_res_mag_dffe21_wo(23);
	wire_w_man_add_sub_res_mag_dffe21_wo_range485w(0) <= man_add_sub_res_mag_dffe21_wo(24);
	wire_w_man_add_sub_res_mag_dffe21_wo_range488w(0) <= man_add_sub_res_mag_dffe21_wo(25);
	wire_w_man_add_sub_res_mag_dffe21_wo_range419w(0) <= man_add_sub_res_mag_dffe21_wo(2);
	wire_w_man_add_sub_res_mag_dffe21_wo_range422w(0) <= man_add_sub_res_mag_dffe21_wo(3);
	wire_w_man_add_sub_res_mag_dffe21_wo_range425w(0) <= man_add_sub_res_mag_dffe21_wo(4);
	wire_w_man_add_sub_res_mag_dffe21_wo_range428w(0) <= man_add_sub_res_mag_dffe21_wo(5);
	wire_w_man_add_sub_res_mag_dffe21_wo_range431w(0) <= man_add_sub_res_mag_dffe21_wo(6);
	wire_w_man_add_sub_res_mag_dffe21_wo_range434w(0) <= man_add_sub_res_mag_dffe21_wo(7);
	wire_w_man_add_sub_res_mag_dffe21_wo_range437w(0) <= man_add_sub_res_mag_dffe21_wo(8);
	wire_w_man_add_sub_res_mag_dffe21_wo_range440w(0) <= man_add_sub_res_mag_dffe21_wo(9);
	wire_w_man_add_sub_res_mag_dffe27_wo_range396w(0) <= man_add_sub_res_mag_dffe27_wo(0);
	wire_w_man_add_sub_res_mag_dffe27_wo_range411w <= man_add_sub_res_mag_dffe27_wo(25 DOWNTO 0);
	wire_w_man_add_sub_res_mag_dffe27_wo_range387w(0) <= man_add_sub_res_mag_dffe27_wo(25);
	wire_w_man_add_sub_res_mag_dffe27_wo_range413w <= man_add_sub_res_mag_dffe27_wo(26 DOWNTO 1);
	wire_w_man_add_sub_res_mag_dffe27_wo_range381w(0) <= man_add_sub_res_mag_dffe27_wo(26);
	wire_w_man_add_sub_w_range372w(0) <= man_add_sub_w(27);
	wire_w_man_b_not_zero_w_range15w(0) <= man_b_not_zero_w(0);
	wire_w_man_b_not_zero_w_range146w(0) <= man_b_not_zero_w(10);
	wire_w_man_b_not_zero_w_range152w(0) <= man_b_not_zero_w(11);
	wire_w_man_b_not_zero_w_range158w(0) <= man_b_not_zero_w(12);
	wire_w_man_b_not_zero_w_range164w(0) <= man_b_not_zero_w(13);
	wire_w_man_b_not_zero_w_range170w(0) <= man_b_not_zero_w(14);
	wire_w_man_b_not_zero_w_range176w(0) <= man_b_not_zero_w(15);
	wire_w_man_b_not_zero_w_range182w(0) <= man_b_not_zero_w(16);
	wire_w_man_b_not_zero_w_range188w(0) <= man_b_not_zero_w(17);
	wire_w_man_b_not_zero_w_range194w(0) <= man_b_not_zero_w(18);
	wire_w_man_b_not_zero_w_range200w(0) <= man_b_not_zero_w(19);
	wire_w_man_b_not_zero_w_range92w(0) <= man_b_not_zero_w(1);
	wire_w_man_b_not_zero_w_range206w(0) <= man_b_not_zero_w(20);
	wire_w_man_b_not_zero_w_range212w(0) <= man_b_not_zero_w(21);
	wire_w_man_b_not_zero_w_range218w(0) <= man_b_not_zero_w(22);
	wire_w_man_b_not_zero_w_range98w(0) <= man_b_not_zero_w(2);
	wire_w_man_b_not_zero_w_range104w(0) <= man_b_not_zero_w(3);
	wire_w_man_b_not_zero_w_range110w(0) <= man_b_not_zero_w(4);
	wire_w_man_b_not_zero_w_range116w(0) <= man_b_not_zero_w(5);
	wire_w_man_b_not_zero_w_range122w(0) <= man_b_not_zero_w(6);
	wire_w_man_b_not_zero_w_range128w(0) <= man_b_not_zero_w(7);
	wire_w_man_b_not_zero_w_range134w(0) <= man_b_not_zero_w(8);
	wire_w_man_b_not_zero_w_range140w(0) <= man_b_not_zero_w(9);
	wire_w_man_res_not_zero_w2_range417w(0) <= man_res_not_zero_w2(0);
	wire_w_man_res_not_zero_w2_range448w(0) <= man_res_not_zero_w2(10);
	wire_w_man_res_not_zero_w2_range451w(0) <= man_res_not_zero_w2(11);
	wire_w_man_res_not_zero_w2_range454w(0) <= man_res_not_zero_w2(12);
	wire_w_man_res_not_zero_w2_range457w(0) <= man_res_not_zero_w2(13);
	wire_w_man_res_not_zero_w2_range460w(0) <= man_res_not_zero_w2(14);
	wire_w_man_res_not_zero_w2_range463w(0) <= man_res_not_zero_w2(15);
	wire_w_man_res_not_zero_w2_range466w(0) <= man_res_not_zero_w2(16);
	wire_w_man_res_not_zero_w2_range469w(0) <= man_res_not_zero_w2(17);
	wire_w_man_res_not_zero_w2_range472w(0) <= man_res_not_zero_w2(18);
	wire_w_man_res_not_zero_w2_range475w(0) <= man_res_not_zero_w2(19);
	wire_w_man_res_not_zero_w2_range421w(0) <= man_res_not_zero_w2(1);
	wire_w_man_res_not_zero_w2_range478w(0) <= man_res_not_zero_w2(20);
	wire_w_man_res_not_zero_w2_range481w(0) <= man_res_not_zero_w2(21);
	wire_w_man_res_not_zero_w2_range484w(0) <= man_res_not_zero_w2(22);
	wire_w_man_res_not_zero_w2_range487w(0) <= man_res_not_zero_w2(23);
	wire_w_man_res_not_zero_w2_range424w(0) <= man_res_not_zero_w2(2);
	wire_w_man_res_not_zero_w2_range427w(0) <= man_res_not_zero_w2(3);
	wire_w_man_res_not_zero_w2_range430w(0) <= man_res_not_zero_w2(4);
	wire_w_man_res_not_zero_w2_range433w(0) <= man_res_not_zero_w2(5);
	wire_w_man_res_not_zero_w2_range436w(0) <= man_res_not_zero_w2(6);
	wire_w_man_res_not_zero_w2_range439w(0) <= man_res_not_zero_w2(7);
	wire_w_man_res_not_zero_w2_range442w(0) <= man_res_not_zero_w2(8);
	wire_w_man_res_not_zero_w2_range445w(0) <= man_res_not_zero_w2(9);
	wire_w_man_res_rounding_add_sub_w_range584w <= man_res_rounding_add_sub_w(22 DOWNTO 0);
	wire_w_man_res_rounding_add_sub_w_range588w <= man_res_rounding_add_sub_w(23 DOWNTO 1);
	wire_w_man_res_rounding_add_sub_w_range585w(0) <= man_res_rounding_add_sub_w(24);
	lbarrel_shift :  kn_kalman_sub_altbarrel_shift_h0e
	  PORT MAP ( 
		aclr => aclr,
		clk_en => clk_en,
		clock => clock,
		data => man_dffe31_wo,
		distance => man_leading_zeros_cnt_w,
		result => wire_lbarrel_shift_result
	  );
	wire_rbarrel_shift_data <= ( man_smaller_dffe13_wo & "00");
	rbarrel_shift :  kn_kalman_sub_altbarrel_shift_n3g
	  PORT MAP ( 
		aclr => aclr,
		clk_en => clk_en,
		clock => clock,
		data => wire_rbarrel_shift_data,
		distance => rshift_distance_dffe13_wo,
		result => wire_rbarrel_shift_result
	  );
	wire_leading_zeroes_cnt_data <= ( man_add_sub_res_mag_dffe21_wo(25 DOWNTO 1) & "1" & "000000");
	leading_zeroes_cnt :  kn_kalman_sub_altpriority_encoder_ou8
	  PORT MAP ( 
		aclr => aclr,
		clk_en => clk_en,
		clock => clock,
		data => wire_leading_zeroes_cnt_data,
		q => wire_leading_zeroes_cnt_q
	  );
	wire_trailing_zeros_cnt_data <= ( "111111111" & man_smaller_dffe13_wo(22 DOWNTO 0));
	trailing_zeros_cnt :  kn_kalman_sub_altpriority_encoder_cna
	  PORT MAP ( 
		aclr => aclr,
		clk_en => clk_en,
		clock => clock,
		data => wire_trailing_zeros_cnt_data,
		q => wire_trailing_zeros_cnt_q
	  );
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN add_sub_dffe25 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN add_sub_dffe25 <= add_sub_dffe25_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_dataa_exp_dffe12 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_dataa_exp_dffe12 <= aligned_dataa_exp_dffe12_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_dataa_exp_dffe13 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_dataa_exp_dffe13 <= aligned_dataa_exp_dffe13_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_dataa_exp_dffe14 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_dataa_exp_dffe14 <= aligned_dataa_exp_dffe14_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_dataa_man_dffe12 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_dataa_man_dffe12 <= aligned_dataa_man_dffe12_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_dataa_man_dffe13 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_dataa_man_dffe13 <= aligned_dataa_man_dffe13_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_dataa_man_dffe14 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_dataa_man_dffe14 <= aligned_dataa_man_dffe14_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_dataa_sign_dffe12 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_dataa_sign_dffe12 <= aligned_dataa_sign_dffe12_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_dataa_sign_dffe13 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_dataa_sign_dffe13 <= aligned_dataa_sign_dffe13_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_dataa_sign_dffe14 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_dataa_sign_dffe14 <= aligned_dataa_sign_dffe14_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_datab_exp_dffe12 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_datab_exp_dffe12 <= aligned_datab_exp_dffe12_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_datab_exp_dffe13 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_datab_exp_dffe13 <= aligned_datab_exp_dffe13_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_datab_exp_dffe14 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_datab_exp_dffe14 <= aligned_datab_exp_dffe14_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_datab_man_dffe12 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_datab_man_dffe12 <= aligned_datab_man_dffe12_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_datab_man_dffe13 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_datab_man_dffe13 <= aligned_datab_man_dffe13_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_datab_man_dffe14 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_datab_man_dffe14 <= aligned_datab_man_dffe14_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_datab_sign_dffe12 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_datab_sign_dffe12 <= aligned_datab_sign_dffe12_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_datab_sign_dffe13 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_datab_sign_dffe13 <= aligned_datab_sign_dffe13_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN aligned_datab_sign_dffe14 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN aligned_datab_sign_dffe14 <= aligned_datab_sign_dffe14_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN both_inputs_are_infinite_dffe1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN both_inputs_are_infinite_dffe1 <= both_inputs_are_infinite_dffe1_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN both_inputs_are_infinite_dffe25 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN both_inputs_are_infinite_dffe25 <= both_inputs_are_infinite_dffe25_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN data_exp_dffe1 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN data_exp_dffe1 <= data_exp_dffe1_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN dataa_man_dffe1 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN dataa_man_dffe1 <= dataa_man_dffe1_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN dataa_sign_dffe1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN dataa_sign_dffe1 <= dataa_sign_dffe1_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN dataa_sign_dffe25 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN dataa_sign_dffe25 <= dataa_sign_dffe25_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN datab_man_dffe1 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN datab_man_dffe1 <= datab_man_dffe1_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN datab_sign_dffe1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN datab_sign_dffe1 <= datab_sign_dffe1_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN denormal_res_dffe3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN denormal_res_dffe3 <= denormal_res_dffe3_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN denormal_res_dffe4 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN denormal_res_dffe4 <= denormal_res_dffe4_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN denormal_res_dffe41 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN denormal_res_dffe41 <= denormal_res_dffe41_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_adj_dffe21 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_adj_dffe21 <= exp_adj_dffe21_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_adj_dffe23 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_adj_dffe23 <= exp_adj_dffe23_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_amb_mux_dffe13 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_amb_mux_dffe13 <= exp_amb_mux_dffe13_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_amb_mux_dffe14 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_amb_mux_dffe14 <= exp_amb_mux_dffe14_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_intermediate_res_dffe41 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_intermediate_res_dffe41 <= exp_intermediate_res_dffe41_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_out_dffe5 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_out_dffe5 <= exp_out_dffe5_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_res_dffe2 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_res_dffe2 <= exp_res_dffe2_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_res_dffe21 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_res_dffe21 <= exp_res_dffe21_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_res_dffe23 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_res_dffe23 <= exp_res_dffe23_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_res_dffe25 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_res_dffe25 <= exp_res_dffe25_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_res_dffe27 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_res_dffe27 <= exp_res_dffe27_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_res_dffe3 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_res_dffe3 <= exp_res_dffe3_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_res_dffe4 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_res_dffe4 <= exp_res_dffe4_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinite_output_sign_dffe1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinite_output_sign_dffe1 <= infinite_output_sign_dffe1_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinite_output_sign_dffe2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinite_output_sign_dffe2 <= infinite_output_sign_dffe2_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinite_output_sign_dffe21 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinite_output_sign_dffe21 <= infinite_output_sign_dffe21_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinite_output_sign_dffe23 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinite_output_sign_dffe23 <= infinite_output_sign_dffe23_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinite_output_sign_dffe25 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinite_output_sign_dffe25 <= infinite_output_sign_dffe25_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinite_output_sign_dffe27 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinite_output_sign_dffe27 <= infinite_output_sign_dffe27_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinite_output_sign_dffe3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinite_output_sign_dffe3 <= infinite_output_sign_dffe3_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinite_output_sign_dffe31 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinite_output_sign_dffe31 <= infinite_output_sign_dffe31_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinite_output_sign_dffe4 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinite_output_sign_dffe4 <= infinite_output_sign_dffe4_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinite_output_sign_dffe41 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinite_output_sign_dffe41 <= infinite_output_sign_dffe41_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinite_res_dffe3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinite_res_dffe3 <= infinite_res_dffe3_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinite_res_dffe4 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinite_res_dffe4 <= infinite_res_dffe4_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinite_res_dffe41 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinite_res_dffe41 <= infinite_res_dffe41_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinity_magnitude_sub_dffe2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinity_magnitude_sub_dffe2 <= infinity_magnitude_sub_dffe2_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinity_magnitude_sub_dffe21 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinity_magnitude_sub_dffe21 <= infinity_magnitude_sub_dffe21_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinity_magnitude_sub_dffe23 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinity_magnitude_sub_dffe23 <= infinity_magnitude_sub_dffe23_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinity_magnitude_sub_dffe27 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinity_magnitude_sub_dffe27 <= infinity_magnitude_sub_dffe27_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinity_magnitude_sub_dffe3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinity_magnitude_sub_dffe3 <= infinity_magnitude_sub_dffe3_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinity_magnitude_sub_dffe31 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinity_magnitude_sub_dffe31 <= infinity_magnitude_sub_dffe31_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinity_magnitude_sub_dffe4 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinity_magnitude_sub_dffe4 <= infinity_magnitude_sub_dffe4_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinity_magnitude_sub_dffe41 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinity_magnitude_sub_dffe41 <= infinity_magnitude_sub_dffe41_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_dataa_infinite_dffe12 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_dataa_infinite_dffe12 <= input_dataa_infinite_dffe12_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_dataa_infinite_dffe13 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_dataa_infinite_dffe13 <= input_dataa_infinite_dffe13_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_dataa_infinite_dffe14 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_dataa_infinite_dffe14 <= input_dataa_infinite_dffe14_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_dataa_nan_dffe12 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_dataa_nan_dffe12 <= input_dataa_nan_dffe12_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_datab_infinite_dffe12 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_datab_infinite_dffe12 <= input_datab_infinite_dffe12_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_datab_infinite_dffe13 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_datab_infinite_dffe13 <= input_datab_infinite_dffe13_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_datab_infinite_dffe14 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_datab_infinite_dffe14 <= input_datab_infinite_dffe14_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_datab_nan_dffe12 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_datab_nan_dffe12 <= input_datab_nan_dffe12_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinite_dffe1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinite_dffe1 <= input_is_infinite_dffe1_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinite_dffe2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinite_dffe2 <= input_is_infinite_dffe2_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinite_dffe21 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinite_dffe21 <= input_is_infinite_dffe21_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinite_dffe23 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinite_dffe23 <= input_is_infinite_dffe23_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinite_dffe25 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinite_dffe25 <= input_is_infinite_dffe25_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinite_dffe27 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinite_dffe27 <= input_is_infinite_dffe27_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinite_dffe3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinite_dffe3 <= input_is_infinite_dffe3_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinite_dffe31 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinite_dffe31 <= input_is_infinite_dffe31_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinite_dffe4 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinite_dffe4 <= input_is_infinite_dffe4_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_infinite_dffe41 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_infinite_dffe41 <= input_is_infinite_dffe41_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_dffe1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_dffe1 <= input_is_nan_dffe1_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_dffe13 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_dffe13 <= input_is_nan_dffe13_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_dffe14 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_dffe14 <= input_is_nan_dffe14_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_dffe2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_dffe2 <= input_is_nan_dffe2_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_dffe21 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_dffe21 <= input_is_nan_dffe21_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_dffe23 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_dffe23 <= input_is_nan_dffe23_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_dffe25 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_dffe25 <= input_is_nan_dffe25_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_dffe27 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_dffe27 <= input_is_nan_dffe27_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_dffe3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_dffe3 <= input_is_nan_dffe3_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_dffe31 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_dffe31 <= input_is_nan_dffe31_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_dffe4 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_dffe4 <= input_is_nan_dffe4_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN input_is_nan_dffe41 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN input_is_nan_dffe41 <= input_is_nan_dffe41_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_add_sub_res_mag_dffe21 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_add_sub_res_mag_dffe21 <= man_add_sub_res_mag_dffe21_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_add_sub_res_mag_dffe23 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_add_sub_res_mag_dffe23 <= man_add_sub_res_mag_dffe23_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_add_sub_res_mag_dffe27 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_add_sub_res_mag_dffe27 <= man_add_sub_res_mag_dffe27_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_add_sub_res_sign_dffe21 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_add_sub_res_sign_dffe21 <= man_add_sub_res_sign_dffe27_wo;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_add_sub_res_sign_dffe23 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_add_sub_res_sign_dffe23 <= man_add_sub_res_sign_dffe23_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_add_sub_res_sign_dffe27 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_add_sub_res_sign_dffe27 <= man_add_sub_res_sign_dffe27_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_dffe31 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_dffe31 <= man_add_sub_res_mag_dffe26_wo;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_leading_zeros_dffe31 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_leading_zeros_dffe31 <= man_leading_zeros_dffe31_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_out_dffe5 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_out_dffe5 <= man_out_dffe5_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_res_dffe4 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_res_dffe4 <= man_res_dffe4_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_res_is_not_zero_dffe3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_res_is_not_zero_dffe3 <= man_res_is_not_zero_dffe3_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_res_is_not_zero_dffe31 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_res_is_not_zero_dffe31 <= man_res_is_not_zero_dffe31_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_res_is_not_zero_dffe4 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_res_is_not_zero_dffe4 <= man_res_is_not_zero_dffe4_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_res_is_not_zero_dffe41 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_res_is_not_zero_dffe41 <= man_res_is_not_zero_dffe41_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_res_not_zero_dffe23 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_res_not_zero_dffe23 <= man_res_not_zero_dffe23_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_res_rounding_add_sub_result_reg <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_res_rounding_add_sub_result_reg <= ( wire_man_res_rounding_add_sub_lower_w_lg_w_lg_w_lg_cout580w581w582w & wire_man_res_rounding_add_sub_lower_result);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_smaller_dffe13 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_smaller_dffe13 <= man_smaller_dffe13_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN need_complement_dffe2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN need_complement_dffe2 <= need_complement_dffe2_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN round_bit_dffe21 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN round_bit_dffe21 <= round_bit_dffe21_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN round_bit_dffe23 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN round_bit_dffe23 <= round_bit_dffe23_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN round_bit_dffe3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN round_bit_dffe3 <= round_bit_dffe3_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN round_bit_dffe31 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN round_bit_dffe31 <= round_bit_dffe31_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN rounded_res_infinity_dffe4 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN rounded_res_infinity_dffe4 <= rounded_res_infinity_dffe4_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN rshift_distance_dffe13 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN rshift_distance_dffe13 <= rshift_distance_dffe13_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN rshift_distance_dffe14 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN rshift_distance_dffe14 <= rshift_distance_dffe14_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_dffe31 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_dffe31 <= sign_dffe31_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_out_dffe5 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_out_dffe5 <= sign_out_dffe5_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_res_dffe3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_res_dffe3 <= sign_res_dffe3_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_res_dffe4 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_res_dffe4 <= sign_res_dffe4_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_res_dffe41 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_res_dffe41 <= sign_res_dffe41_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sticky_bit_dffe1 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sticky_bit_dffe1 <= sticky_bit_dffe1_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sticky_bit_dffe2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sticky_bit_dffe2 <= sticky_bit_dffe2_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sticky_bit_dffe21 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sticky_bit_dffe21 <= sticky_bit_dffe21_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sticky_bit_dffe23 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sticky_bit_dffe23 <= sticky_bit_dffe23_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sticky_bit_dffe25 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sticky_bit_dffe25 <= sticky_bit_dffe25_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sticky_bit_dffe27 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sticky_bit_dffe27 <= sticky_bit_dffe27_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sticky_bit_dffe3 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sticky_bit_dffe3 <= sticky_bit_dffe3_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sticky_bit_dffe31 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sticky_bit_dffe31 <= sticky_bit_dffe31_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN zero_man_sign_dffe2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN zero_man_sign_dffe2 <= zero_man_sign_dffe2_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN zero_man_sign_dffe21 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN zero_man_sign_dffe21 <= zero_man_sign_dffe21_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN zero_man_sign_dffe23 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN zero_man_sign_dffe23 <= zero_man_sign_dffe23_wi;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN zero_man_sign_dffe27 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN zero_man_sign_dffe27 <= zero_man_sign_dffe27_wi;
			END IF;
		END IF;
	END PROCESS;
	add_sub1 :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "SUB",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 9,
		lpm_hint => "USE_WYS=ON"
	  )
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => aligned_dataa_exp_w,
		datab => aligned_datab_exp_w,
		result => wire_add_sub1_result
	  );
	add_sub2 :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "SUB",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 9,
		lpm_hint => "USE_WYS=ON"
	  )
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => aligned_datab_exp_w,
		datab => aligned_dataa_exp_w,
		result => wire_add_sub2_result
	  );
	add_sub3 :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "SUB",
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 6
	  )
	  PORT MAP ( 
		dataa => sticky_bit_cnt_dataa_w,
		datab => sticky_bit_cnt_datab_w,
		result => wire_add_sub3_result
	  );
	add_sub4 :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "ADD",
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 9
	  )
	  PORT MAP ( 
		dataa => exp_adjustment_add_sub_dataa_w,
		datab => exp_adjustment_add_sub_datab_w,
		result => wire_add_sub4_result
	  );
	add_sub5 :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "ADD",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 9,
		lpm_hint => "USE_WYS=ON"
	  )
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => exp_adjustment2_add_sub_dataa_w,
		datab => exp_adjustment2_add_sub_datab_w,
		result => wire_add_sub5_result
	  );
	add_sub6 :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "ADD",
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 9
	  )
	  PORT MAP ( 
		dataa => exp_res_rounding_adder_dataa_w,
		datab => exp_rounding_adjustment_w,
		result => wire_add_sub6_result
	  );
	loop122 : FOR i IN 0 TO 13 GENERATE 
		wire_man_2comp_res_lower_w_lg_w_lg_cout367w368w(i) <= wire_man_2comp_res_lower_w_lg_cout367w(0) AND wire_man_2comp_res_upper0_result(i);
	END GENERATE loop122;
	loop123 : FOR i IN 0 TO 13 GENERATE 
		wire_man_2comp_res_lower_w_lg_cout366w(i) <= wire_man_2comp_res_lower_cout AND wire_man_2comp_res_upper1_result(i);
	END GENERATE loop123;
	wire_man_2comp_res_lower_w_lg_cout367w(0) <= NOT wire_man_2comp_res_lower_cout;
	loop124 : FOR i IN 0 TO 13 GENERATE 
		wire_man_2comp_res_lower_w_lg_w_lg_w_lg_cout367w368w369w(i) <= wire_man_2comp_res_lower_w_lg_w_lg_cout367w368w(i) OR wire_man_2comp_res_lower_w_lg_cout366w(i);
	END GENERATE loop124;
	man_2comp_res_lower :  lpm_add_sub
	  GENERIC MAP (
		LPM_PIPELINE => 2,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 14,
		lpm_hint => "USE_WYS=ON"
	  )
	  PORT MAP ( 
		aclr => aclr,
		add_sub => add_sub_w2,
		cin => borrow_w,
		clken => clk_en,
		clock => clock,
		cout => wire_man_2comp_res_lower_cout,
		dataa => man_2comp_res_dataa_w(13 DOWNTO 0),
		datab => man_2comp_res_datab_w(13 DOWNTO 0),
		result => wire_man_2comp_res_lower_result
	  );
	man_2comp_res_upper0 :  lpm_add_sub
	  GENERIC MAP (
		LPM_PIPELINE => 2,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 14,
		lpm_hint => "USE_WYS=ON"
	  )
	  PORT MAP ( 
		aclr => aclr,
		add_sub => add_sub_w2,
		cin => wire_gnd,
		clken => clk_en,
		clock => clock,
		dataa => man_2comp_res_dataa_w(27 DOWNTO 14),
		datab => man_2comp_res_datab_w(27 DOWNTO 14),
		result => wire_man_2comp_res_upper0_result
	  );
	man_2comp_res_upper1 :  lpm_add_sub
	  GENERIC MAP (
		LPM_PIPELINE => 2,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 14,
		lpm_hint => "USE_WYS=ON"
	  )
	  PORT MAP ( 
		aclr => aclr,
		add_sub => add_sub_w2,
		cin => wire_vcc,
		clken => clk_en,
		clock => clock,
		dataa => man_2comp_res_dataa_w(27 DOWNTO 14),
		datab => man_2comp_res_datab_w(27 DOWNTO 14),
		result => wire_man_2comp_res_upper1_result
	  );
	loop125 : FOR i IN 0 TO 13 GENERATE 
		wire_man_add_sub_lower_w_lg_w_lg_cout354w355w(i) <= wire_man_add_sub_lower_w_lg_cout354w(0) AND wire_man_add_sub_upper0_result(i);
	END GENERATE loop125;
	loop126 : FOR i IN 0 TO 13 GENERATE 
		wire_man_add_sub_lower_w_lg_cout353w(i) <= wire_man_add_sub_lower_cout AND wire_man_add_sub_upper1_result(i);
	END GENERATE loop126;
	wire_man_add_sub_lower_w_lg_cout354w(0) <= NOT wire_man_add_sub_lower_cout;
	loop127 : FOR i IN 0 TO 13 GENERATE 
		wire_man_add_sub_lower_w_lg_w_lg_w_lg_cout354w355w356w(i) <= wire_man_add_sub_lower_w_lg_w_lg_cout354w355w(i) OR wire_man_add_sub_lower_w_lg_cout353w(i);
	END GENERATE loop127;
	man_add_sub_lower :  lpm_add_sub
	  GENERIC MAP (
		LPM_PIPELINE => 2,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 14,
		lpm_hint => "USE_WYS=ON"
	  )
	  PORT MAP ( 
		aclr => aclr,
		add_sub => add_sub_w2,
		cin => borrow_w,
		clken => clk_en,
		clock => clock,
		cout => wire_man_add_sub_lower_cout,
		dataa => man_add_sub_dataa_w(13 DOWNTO 0),
		datab => man_add_sub_datab_w(13 DOWNTO 0),
		result => wire_man_add_sub_lower_result
	  );
	man_add_sub_upper0 :  lpm_add_sub
	  GENERIC MAP (
		LPM_PIPELINE => 2,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 14,
		lpm_hint => "USE_WYS=ON"
	  )
	  PORT MAP ( 
		aclr => aclr,
		add_sub => add_sub_w2,
		cin => wire_gnd,
		clken => clk_en,
		clock => clock,
		dataa => man_add_sub_dataa_w(27 DOWNTO 14),
		datab => man_add_sub_datab_w(27 DOWNTO 14),
		result => wire_man_add_sub_upper0_result
	  );
	man_add_sub_upper1 :  lpm_add_sub
	  GENERIC MAP (
		LPM_PIPELINE => 2,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 14,
		lpm_hint => "USE_WYS=ON"
	  )
	  PORT MAP ( 
		aclr => aclr,
		add_sub => add_sub_w2,
		cin => wire_vcc,
		clken => clk_en,
		clock => clock,
		dataa => man_add_sub_dataa_w(27 DOWNTO 14),
		datab => man_add_sub_datab_w(27 DOWNTO 14),
		result => wire_man_add_sub_upper1_result
	  );
	loop128 : FOR i IN 0 TO 12 GENERATE 
		wire_man_res_rounding_add_sub_lower_w_lg_w_lg_cout580w581w(i) <= wire_man_res_rounding_add_sub_lower_w_lg_cout580w(0) AND adder_upper_w(i);
	END GENERATE loop128;
	loop129 : FOR i IN 0 TO 12 GENERATE 
		wire_man_res_rounding_add_sub_lower_w_lg_cout579w(i) <= wire_man_res_rounding_add_sub_lower_cout AND wire_man_res_rounding_add_sub_upper1_result(i);
	END GENERATE loop129;
	wire_man_res_rounding_add_sub_lower_w_lg_cout580w(0) <= NOT wire_man_res_rounding_add_sub_lower_cout;
	loop130 : FOR i IN 0 TO 12 GENERATE 
		wire_man_res_rounding_add_sub_lower_w_lg_w_lg_w_lg_cout580w581w582w(i) <= wire_man_res_rounding_add_sub_lower_w_lg_w_lg_cout580w581w(i) OR wire_man_res_rounding_add_sub_lower_w_lg_cout579w(i);
	END GENERATE loop130;
	man_res_rounding_add_sub_lower :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "ADD",
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 13
	  )
	  PORT MAP ( 
		cout => wire_man_res_rounding_add_sub_lower_cout,
		dataa => man_intermediate_res_w(12 DOWNTO 0),
		datab => man_res_rounding_add_sub_datab_w(12 DOWNTO 0),
		result => wire_man_res_rounding_add_sub_lower_result
	  );
	man_res_rounding_add_sub_upper1 :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "ADD",
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 13
	  )
	  PORT MAP ( 
		cin => wire_vcc,
		dataa => man_intermediate_res_w(25 DOWNTO 13),
		datab => man_res_rounding_add_sub_datab_w(25 DOWNTO 13),
		result => wire_man_res_rounding_add_sub_upper1_result
	  );
	trailing_zeros_limit_comparator :  lpm_compare
	  GENERIC MAP (
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 6
	  )
	  PORT MAP ( 
		agb => wire_trailing_zeros_limit_comparator_agb,
		dataa => sticky_bit_cnt_res_w,
		datab => trailing_zeros_limit_w
	  );

 END RTL; --kn_kalman_sub_altfp_add_sub_23j
--VALID FILE


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY kn_kalman_sub IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		dataa		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END kn_kalman_sub;


ARCHITECTURE RTL OF kn_kalman_sub IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (31 DOWNTO 0);



	COMPONENT kn_kalman_sub_altfp_add_sub_23j
	PORT (
			clock	: IN STD_LOGIC ;
			dataa	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			datab	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			result	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	result    <= sub_wire0(31 DOWNTO 0);

	kn_kalman_sub_altfp_add_sub_23j_component : kn_kalman_sub_altfp_add_sub_23j
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
-- Retrieval info: PRIVATE: FPM_FORMAT NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
-- Retrieval info: PRIVATE: WIDTH_DATA NUMERIC "32"
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: CONSTANT: DENORMAL_SUPPORT STRING "NO"
-- Retrieval info: CONSTANT: DIRECTION STRING "SUB"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
-- Retrieval info: CONSTANT: OPTIMIZE STRING "SPEED"
-- Retrieval info: CONSTANT: PIPELINE NUMERIC "14"
-- Retrieval info: CONSTANT: REDUCED_FUNCTIONALITY STRING "NO"
-- Retrieval info: CONSTANT: WIDTH_EXP NUMERIC "8"
-- Retrieval info: CONSTANT: WIDTH_MAN NUMERIC "23"
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
-- Retrieval info: USED_PORT: dataa 0 0 32 0 INPUT NODEFVAL "dataa[31..0]"
-- Retrieval info: USED_PORT: datab 0 0 32 0 INPUT NODEFVAL "datab[31..0]"
-- Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT NODEFVAL "result[31..0]"
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: @dataa 0 0 32 0 dataa 0 0 32 0
-- Retrieval info: CONNECT: @datab 0 0 32 0 datab 0 0 32 0
-- Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_sub.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_sub.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_sub.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_sub.bsf FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_sub_inst.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_sub_syn.v TRUE
-- Retrieval info: LIB_FILE: lpm
