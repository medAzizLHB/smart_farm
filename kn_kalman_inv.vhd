--32 bit float point inversion block
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_inv_altfp_inv_and_or_6nd IS 
	 PORT 
	 ( 
		 aclr	:	IN  STD_LOGIC := '0';
		 clken	:	IN  STD_LOGIC := '1';
		 clock	:	IN  STD_LOGIC := '0';
		 data	:	IN  STD_LOGIC_VECTOR (22 DOWNTO 0) := (OTHERS => '0');
		 result	:	OUT  STD_LOGIC
	 ); 
 END kn_kalman_inv_altfp_inv_and_or_6nd;

 ARCHITECTURE RTL OF kn_kalman_inv_altfp_inv_and_or_6nd IS

	 SIGNAL	 connection_dffe0	:	STD_LOGIC_VECTOR(5 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 connection_dffe1	:	STD_LOGIC_VECTOR(1 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 connection_dffe2	:	STD_LOGIC_VECTOR(0 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range303w307w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range331w335w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range337w340w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range339w343w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range342w346w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range348w351w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range350w354w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range353w357w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range306w310w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range359w362w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range361w365w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range309w313w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range315w318w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range317w321w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range320w324w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range326w329w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range328w332w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r2_w_range375w379w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r2_w_range378w382w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r2_w_range381w385w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r2_w_range387w390w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_lg_w_operation_r3_w_range395w399w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  connection_r0_w :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  connection_r1_w :	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  connection_r2_w :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  connection_r3_w :	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  operation_r1_w :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  operation_r2_w :	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  operation_r3_w :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range330w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range333w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range338w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range341w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range344w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range349w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range352w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range355w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range305w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range360w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range363w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range308w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range311w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range316w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range319w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range322w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r0_w_range327w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r1_w_range377w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r1_w_range380w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r1_w_range383w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r1_w_range388w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_connection_r2_w_range397w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range303w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range331w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range337w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range339w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range342w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range348w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range350w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range353w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range306w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range359w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range361w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range309w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range315w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range317w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range320w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range326w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r1_w_range328w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r2_w_range375w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r2_w_range378w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r2_w_range381w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r2_w_range387w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or2_w_operation_r3_w_range395w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range303w307w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range303w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range305w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range331w335w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range331w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range333w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range337w340w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range337w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range338w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range339w343w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range339w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range341w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range342w346w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range342w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range344w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range348w351w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range348w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range349w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range350w354w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range350w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range352w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range353w357w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range353w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range355w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range306w310w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range306w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range308w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range359w362w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range359w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range360w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range361w365w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range361w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range363w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range309w313w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range309w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range311w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range315w318w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range315w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range316w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range317w321w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range317w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range319w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range320w324w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range320w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range322w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range326w329w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range326w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range327w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range328w332w(0) <= wire_altfp_inv_and_or2_w_operation_r1_w_range328w(0) OR wire_altfp_inv_and_or2_w_connection_r0_w_range330w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r2_w_range375w379w(0) <= wire_altfp_inv_and_or2_w_operation_r2_w_range375w(0) OR wire_altfp_inv_and_or2_w_connection_r1_w_range377w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r2_w_range378w382w(0) <= wire_altfp_inv_and_or2_w_operation_r2_w_range378w(0) OR wire_altfp_inv_and_or2_w_connection_r1_w_range380w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r2_w_range381w385w(0) <= wire_altfp_inv_and_or2_w_operation_r2_w_range381w(0) OR wire_altfp_inv_and_or2_w_connection_r1_w_range383w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r2_w_range387w390w(0) <= wire_altfp_inv_and_or2_w_operation_r2_w_range387w(0) OR wire_altfp_inv_and_or2_w_connection_r1_w_range388w(0);
	wire_altfp_inv_and_or2_w_lg_w_operation_r3_w_range395w399w(0) <= wire_altfp_inv_and_or2_w_operation_r3_w_range395w(0) OR wire_altfp_inv_and_or2_w_connection_r2_w_range397w(0);
	connection_r0_w <= data;
	connection_r1_w <= connection_dffe0;
	connection_r2_w <= connection_dffe1;
	connection_r3_w <= connection_dffe2;
	operation_r1_w <= ( wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range361w365w & wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range359w362w & connection_r0_w(20) & wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range353w357w & wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range350w354w & wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range348w351w & connection_r0_w(16) & wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range342w346w & wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range339w343w & wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range337w340w & connection_r0_w(12) & wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range331w335w & wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range328w332w & wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range326w329w & connection_r0_w(8) & wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range320w324w & wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range317w321w & wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range315w318w & connection_r0_w(4) & wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range309w313w & wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range306w310w & wire_altfp_inv_and_or2_w_lg_w_operation_r1_w_range303w307w & connection_r0_w(0));
	operation_r2_w <= ( wire_altfp_inv_and_or2_w_lg_w_operation_r2_w_range387w390w & connection_r1_w(4) & wire_altfp_inv_and_or2_w_lg_w_operation_r2_w_range381w385w & wire_altfp_inv_and_or2_w_lg_w_operation_r2_w_range378w382w & wire_altfp_inv_and_or2_w_lg_w_operation_r2_w_range375w379w & connection_r1_w(0));
	operation_r3_w <= ( wire_altfp_inv_and_or2_w_lg_w_operation_r3_w_range395w399w & connection_r2_w(0));
	result <= connection_r3_w(0);
	wire_altfp_inv_and_or2_w_connection_r0_w_range330w(0) <= connection_r0_w(10);
	wire_altfp_inv_and_or2_w_connection_r0_w_range333w(0) <= connection_r0_w(11);
	wire_altfp_inv_and_or2_w_connection_r0_w_range338w(0) <= connection_r0_w(13);
	wire_altfp_inv_and_or2_w_connection_r0_w_range341w(0) <= connection_r0_w(14);
	wire_altfp_inv_and_or2_w_connection_r0_w_range344w(0) <= connection_r0_w(15);
	wire_altfp_inv_and_or2_w_connection_r0_w_range349w(0) <= connection_r0_w(17);
	wire_altfp_inv_and_or2_w_connection_r0_w_range352w(0) <= connection_r0_w(18);
	wire_altfp_inv_and_or2_w_connection_r0_w_range355w(0) <= connection_r0_w(19);
	wire_altfp_inv_and_or2_w_connection_r0_w_range305w(0) <= connection_r0_w(1);
	wire_altfp_inv_and_or2_w_connection_r0_w_range360w(0) <= connection_r0_w(21);
	wire_altfp_inv_and_or2_w_connection_r0_w_range363w(0) <= connection_r0_w(22);
	wire_altfp_inv_and_or2_w_connection_r0_w_range308w(0) <= connection_r0_w(2);
	wire_altfp_inv_and_or2_w_connection_r0_w_range311w(0) <= connection_r0_w(3);
	wire_altfp_inv_and_or2_w_connection_r0_w_range316w(0) <= connection_r0_w(5);
	wire_altfp_inv_and_or2_w_connection_r0_w_range319w(0) <= connection_r0_w(6);
	wire_altfp_inv_and_or2_w_connection_r0_w_range322w(0) <= connection_r0_w(7);
	wire_altfp_inv_and_or2_w_connection_r0_w_range327w(0) <= connection_r0_w(9);
	wire_altfp_inv_and_or2_w_connection_r1_w_range377w(0) <= connection_r1_w(1);
	wire_altfp_inv_and_or2_w_connection_r1_w_range380w(0) <= connection_r1_w(2);
	wire_altfp_inv_and_or2_w_connection_r1_w_range383w(0) <= connection_r1_w(3);
	wire_altfp_inv_and_or2_w_connection_r1_w_range388w(0) <= connection_r1_w(5);
	wire_altfp_inv_and_or2_w_connection_r2_w_range397w(0) <= connection_r2_w(1);
	wire_altfp_inv_and_or2_w_operation_r1_w_range303w(0) <= operation_r1_w(0);
	wire_altfp_inv_and_or2_w_operation_r1_w_range331w(0) <= operation_r1_w(10);
	wire_altfp_inv_and_or2_w_operation_r1_w_range337w(0) <= operation_r1_w(12);
	wire_altfp_inv_and_or2_w_operation_r1_w_range339w(0) <= operation_r1_w(13);
	wire_altfp_inv_and_or2_w_operation_r1_w_range342w(0) <= operation_r1_w(14);
	wire_altfp_inv_and_or2_w_operation_r1_w_range348w(0) <= operation_r1_w(16);
	wire_altfp_inv_and_or2_w_operation_r1_w_range350w(0) <= operation_r1_w(17);
	wire_altfp_inv_and_or2_w_operation_r1_w_range353w(0) <= operation_r1_w(18);
	wire_altfp_inv_and_or2_w_operation_r1_w_range306w(0) <= operation_r1_w(1);
	wire_altfp_inv_and_or2_w_operation_r1_w_range359w(0) <= operation_r1_w(20);
	wire_altfp_inv_and_or2_w_operation_r1_w_range361w(0) <= operation_r1_w(21);
	wire_altfp_inv_and_or2_w_operation_r1_w_range309w(0) <= operation_r1_w(2);
	wire_altfp_inv_and_or2_w_operation_r1_w_range315w(0) <= operation_r1_w(4);
	wire_altfp_inv_and_or2_w_operation_r1_w_range317w(0) <= operation_r1_w(5);
	wire_altfp_inv_and_or2_w_operation_r1_w_range320w(0) <= operation_r1_w(6);
	wire_altfp_inv_and_or2_w_operation_r1_w_range326w(0) <= operation_r1_w(8);
	wire_altfp_inv_and_or2_w_operation_r1_w_range328w(0) <= operation_r1_w(9);
	wire_altfp_inv_and_or2_w_operation_r2_w_range375w(0) <= operation_r2_w(0);
	wire_altfp_inv_and_or2_w_operation_r2_w_range378w(0) <= operation_r2_w(1);
	wire_altfp_inv_and_or2_w_operation_r2_w_range381w(0) <= operation_r2_w(2);
	wire_altfp_inv_and_or2_w_operation_r2_w_range387w(0) <= operation_r2_w(4);
	wire_altfp_inv_and_or2_w_operation_r3_w_range395w(0) <= operation_r3_w(0);
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN connection_dffe0 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clken = '1') THEN connection_dffe0 <= ( operation_r1_w(22) & operation_r1_w(19) & operation_r1_w(15) & operation_r1_w(11) & operation_r1_w(7) & operation_r1_w(3));
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN connection_dffe1 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clken = '1') THEN connection_dffe1 <= ( operation_r2_w(5) & operation_r2_w(3));
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN connection_dffe2 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clken = '1') THEN connection_dffe2(0) <= ( operation_r3_w(1));
			END IF;
		END IF;
	END PROCESS;

 END RTL; --kn_kalman_inv_altfp_inv_and_or_6nd


--altfp_inv_and_or CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone II" LUT_INPUT_COUNT=4 OPERATION="AND" PIPELINE=3 WIDTH=23 aclr clken clock data result
--VERSION_BEGIN 11.1SP2 cbx_altfp_inv 2012:01:25:21:13:53:SJ cbx_cycloneii 2012:01:25:21:13:53:SJ cbx_lpm_add_sub 2012:01:25:21:13:53:SJ cbx_lpm_compare 2012:01:25:21:13:53:SJ cbx_lpm_mult 2012:01:25:21:13:53:SJ cbx_lpm_mux 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ cbx_padd 2012:01:25:21:13:53:SJ cbx_stratix 2012:01:25:21:13:53:SJ cbx_stratixii 2012:01:25:21:13:53:SJ cbx_util_mgl 2012:01:25:21:13:53:SJ  VERSION_END

--synthesis_resources = reg 9 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_inv_altfp_inv_and_or_opd IS 
	 PORT 
	 ( 
		 aclr	:	IN  STD_LOGIC := '0';
		 clken	:	IN  STD_LOGIC := '1';
		 clock	:	IN  STD_LOGIC := '0';
		 data	:	IN  STD_LOGIC_VECTOR (22 DOWNTO 0) := (OTHERS => '0');
		 result	:	OUT  STD_LOGIC
	 ); 
 END kn_kalman_inv_altfp_inv_and_or_opd;

 ARCHITECTURE RTL OF kn_kalman_inv_altfp_inv_and_or_opd IS

	 SIGNAL	 connection_dffe0	:	STD_LOGIC_VECTOR(5 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 connection_dffe1	:	STD_LOGIC_VECTOR(1 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 connection_dffe2	:	STD_LOGIC_VECTOR(0 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range404w408w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range432w436w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range438w441w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range440w444w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range443w447w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range449w452w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range451w455w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range454w458w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range407w411w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range460w463w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range462w466w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range410w414w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range416w419w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range418w422w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range421w425w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range427w430w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range429w433w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r2_w_range476w480w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r2_w_range479w483w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r2_w_range482w486w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r2_w_range488w491w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_lg_w_operation_r3_w_range496w500w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  connection_r0_w :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  connection_r1_w :	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  connection_r2_w :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  connection_r3_w :	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  operation_r1_w :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  operation_r2_w :	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  operation_r3_w :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range431w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range434w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range439w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range442w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range445w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range450w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range453w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range456w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range406w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range461w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range464w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range409w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range412w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range417w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range420w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range423w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r0_w_range428w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r1_w_range478w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r1_w_range481w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r1_w_range484w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r1_w_range489w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_connection_r2_w_range498w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range404w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range432w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range438w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range440w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range443w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range449w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range451w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range454w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range407w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range460w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range462w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range410w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range416w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range418w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range421w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range427w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r1_w_range429w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r2_w_range476w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r2_w_range479w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r2_w_range482w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r2_w_range488w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or3_w_operation_r3_w_range496w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range404w408w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range404w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range406w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range432w436w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range432w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range434w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range438w441w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range438w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range439w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range440w444w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range440w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range442w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range443w447w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range443w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range445w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range449w452w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range449w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range450w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range451w455w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range451w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range453w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range454w458w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range454w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range456w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range407w411w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range407w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range409w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range460w463w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range460w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range461w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range462w466w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range462w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range464w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range410w414w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range410w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range412w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range416w419w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range416w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range417w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range418w422w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range418w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range420w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range421w425w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range421w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range423w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range427w430w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range427w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range428w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range429w433w(0) <= wire_altfp_inv_and_or3_w_operation_r1_w_range429w(0) AND wire_altfp_inv_and_or3_w_connection_r0_w_range431w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r2_w_range476w480w(0) <= wire_altfp_inv_and_or3_w_operation_r2_w_range476w(0) AND wire_altfp_inv_and_or3_w_connection_r1_w_range478w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r2_w_range479w483w(0) <= wire_altfp_inv_and_or3_w_operation_r2_w_range479w(0) AND wire_altfp_inv_and_or3_w_connection_r1_w_range481w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r2_w_range482w486w(0) <= wire_altfp_inv_and_or3_w_operation_r2_w_range482w(0) AND wire_altfp_inv_and_or3_w_connection_r1_w_range484w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r2_w_range488w491w(0) <= wire_altfp_inv_and_or3_w_operation_r2_w_range488w(0) AND wire_altfp_inv_and_or3_w_connection_r1_w_range489w(0);
	wire_altfp_inv_and_or3_w_lg_w_operation_r3_w_range496w500w(0) <= wire_altfp_inv_and_or3_w_operation_r3_w_range496w(0) AND wire_altfp_inv_and_or3_w_connection_r2_w_range498w(0);
	connection_r0_w <= data;
	connection_r1_w <= connection_dffe0;
	connection_r2_w <= connection_dffe1;
	connection_r3_w <= connection_dffe2;
	operation_r1_w <= ( wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range462w466w & wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range460w463w & connection_r0_w(20) & wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range454w458w & wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range451w455w & wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range449w452w & connection_r0_w(16) & wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range443w447w & wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range440w444w & wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range438w441w & connection_r0_w(12) & wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range432w436w & wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range429w433w & wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range427w430w & connection_r0_w(8) & wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range421w425w & wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range418w422w & wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range416w419w & connection_r0_w(4) & wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range410w414w & wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range407w411w & wire_altfp_inv_and_or3_w_lg_w_operation_r1_w_range404w408w & connection_r0_w(0));
	operation_r2_w <= ( wire_altfp_inv_and_or3_w_lg_w_operation_r2_w_range488w491w & connection_r1_w(4) & wire_altfp_inv_and_or3_w_lg_w_operation_r2_w_range482w486w & wire_altfp_inv_and_or3_w_lg_w_operation_r2_w_range479w483w & wire_altfp_inv_and_or3_w_lg_w_operation_r2_w_range476w480w & connection_r1_w(0));
	operation_r3_w <= ( wire_altfp_inv_and_or3_w_lg_w_operation_r3_w_range496w500w & connection_r2_w(0));
	result <= connection_r3_w(0);
	wire_altfp_inv_and_or3_w_connection_r0_w_range431w(0) <= connection_r0_w(10);
	wire_altfp_inv_and_or3_w_connection_r0_w_range434w(0) <= connection_r0_w(11);
	wire_altfp_inv_and_or3_w_connection_r0_w_range439w(0) <= connection_r0_w(13);
	wire_altfp_inv_and_or3_w_connection_r0_w_range442w(0) <= connection_r0_w(14);
	wire_altfp_inv_and_or3_w_connection_r0_w_range445w(0) <= connection_r0_w(15);
	wire_altfp_inv_and_or3_w_connection_r0_w_range450w(0) <= connection_r0_w(17);
	wire_altfp_inv_and_or3_w_connection_r0_w_range453w(0) <= connection_r0_w(18);
	wire_altfp_inv_and_or3_w_connection_r0_w_range456w(0) <= connection_r0_w(19);
	wire_altfp_inv_and_or3_w_connection_r0_w_range406w(0) <= connection_r0_w(1);
	wire_altfp_inv_and_or3_w_connection_r0_w_range461w(0) <= connection_r0_w(21);
	wire_altfp_inv_and_or3_w_connection_r0_w_range464w(0) <= connection_r0_w(22);
	wire_altfp_inv_and_or3_w_connection_r0_w_range409w(0) <= connection_r0_w(2);
	wire_altfp_inv_and_or3_w_connection_r0_w_range412w(0) <= connection_r0_w(3);
	wire_altfp_inv_and_or3_w_connection_r0_w_range417w(0) <= connection_r0_w(5);
	wire_altfp_inv_and_or3_w_connection_r0_w_range420w(0) <= connection_r0_w(6);
	wire_altfp_inv_and_or3_w_connection_r0_w_range423w(0) <= connection_r0_w(7);
	wire_altfp_inv_and_or3_w_connection_r0_w_range428w(0) <= connection_r0_w(9);
	wire_altfp_inv_and_or3_w_connection_r1_w_range478w(0) <= connection_r1_w(1);
	wire_altfp_inv_and_or3_w_connection_r1_w_range481w(0) <= connection_r1_w(2);
	wire_altfp_inv_and_or3_w_connection_r1_w_range484w(0) <= connection_r1_w(3);
	wire_altfp_inv_and_or3_w_connection_r1_w_range489w(0) <= connection_r1_w(5);
	wire_altfp_inv_and_or3_w_connection_r2_w_range498w(0) <= connection_r2_w(1);
	wire_altfp_inv_and_or3_w_operation_r1_w_range404w(0) <= operation_r1_w(0);
	wire_altfp_inv_and_or3_w_operation_r1_w_range432w(0) <= operation_r1_w(10);
	wire_altfp_inv_and_or3_w_operation_r1_w_range438w(0) <= operation_r1_w(12);
	wire_altfp_inv_and_or3_w_operation_r1_w_range440w(0) <= operation_r1_w(13);
	wire_altfp_inv_and_or3_w_operation_r1_w_range443w(0) <= operation_r1_w(14);
	wire_altfp_inv_and_or3_w_operation_r1_w_range449w(0) <= operation_r1_w(16);
	wire_altfp_inv_and_or3_w_operation_r1_w_range451w(0) <= operation_r1_w(17);
	wire_altfp_inv_and_or3_w_operation_r1_w_range454w(0) <= operation_r1_w(18);
	wire_altfp_inv_and_or3_w_operation_r1_w_range407w(0) <= operation_r1_w(1);
	wire_altfp_inv_and_or3_w_operation_r1_w_range460w(0) <= operation_r1_w(20);
	wire_altfp_inv_and_or3_w_operation_r1_w_range462w(0) <= operation_r1_w(21);
	wire_altfp_inv_and_or3_w_operation_r1_w_range410w(0) <= operation_r1_w(2);
	wire_altfp_inv_and_or3_w_operation_r1_w_range416w(0) <= operation_r1_w(4);
	wire_altfp_inv_and_or3_w_operation_r1_w_range418w(0) <= operation_r1_w(5);
	wire_altfp_inv_and_or3_w_operation_r1_w_range421w(0) <= operation_r1_w(6);
	wire_altfp_inv_and_or3_w_operation_r1_w_range427w(0) <= operation_r1_w(8);
	wire_altfp_inv_and_or3_w_operation_r1_w_range429w(0) <= operation_r1_w(9);
	wire_altfp_inv_and_or3_w_operation_r2_w_range476w(0) <= operation_r2_w(0);
	wire_altfp_inv_and_or3_w_operation_r2_w_range479w(0) <= operation_r2_w(1);
	wire_altfp_inv_and_or3_w_operation_r2_w_range482w(0) <= operation_r2_w(2);
	wire_altfp_inv_and_or3_w_operation_r2_w_range488w(0) <= operation_r2_w(4);
	wire_altfp_inv_and_or3_w_operation_r3_w_range496w(0) <= operation_r3_w(0);
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN connection_dffe0 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clken = '1') THEN connection_dffe0 <= ( operation_r1_w(22) & operation_r1_w(19) & operation_r1_w(15) & operation_r1_w(11) & operation_r1_w(7) & operation_r1_w(3));
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN connection_dffe1 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clken = '1') THEN connection_dffe1 <= ( operation_r2_w(5) & operation_r2_w(3));
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN connection_dffe2 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clken = '1') THEN connection_dffe2(0) <= ( operation_r3_w(1));
			END IF;
		END IF;
	END PROCESS;

 END RTL; --kn_kalman_inv_altfp_inv_and_or_opd


--altfp_inv_and_or CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone II" LUT_INPUT_COUNT=4 OPERATION="OR" PIPELINE=3 WIDTH=8 aclr clken clock data result
--VERSION_BEGIN 11.1SP2 cbx_altfp_inv 2012:01:25:21:13:53:SJ cbx_cycloneii 2012:01:25:21:13:53:SJ cbx_lpm_add_sub 2012:01:25:21:13:53:SJ cbx_lpm_compare 2012:01:25:21:13:53:SJ cbx_lpm_mult 2012:01:25:21:13:53:SJ cbx_lpm_mux 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ cbx_padd 2012:01:25:21:13:53:SJ cbx_stratix 2012:01:25:21:13:53:SJ cbx_stratixii 2012:01:25:21:13:53:SJ cbx_util_mgl 2012:01:25:21:13:53:SJ  VERSION_END

--synthesis_resources = reg 4 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_inv_altfp_inv_and_or_pld IS 
	 PORT 
	 ( 
		 aclr	:	IN  STD_LOGIC := '0';
		 clken	:	IN  STD_LOGIC := '1';
		 clock	:	IN  STD_LOGIC := '0';
		 data	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0) := (OTHERS => '0');
		 result	:	OUT  STD_LOGIC
	 ); 
 END kn_kalman_inv_altfp_inv_and_or_pld;

 ARCHITECTURE RTL OF kn_kalman_inv_altfp_inv_and_or_pld IS

	 SIGNAL	 connection_dffe0	:	STD_LOGIC_VECTOR(1 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 connection_dffe1	:	STD_LOGIC_VECTOR(0 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 connection_dffe2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range505w509w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range508w512w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range511w515w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range517w520w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range519w523w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range522w526w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_lg_w_operation_r2_w_range532w536w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  connection_r0_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  connection_r1_w :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  connection_r2_w :	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  operation_r1_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  operation_r2_w :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_connection_r0_w_range507w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_connection_r0_w_range510w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_connection_r0_w_range513w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_connection_r0_w_range518w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_connection_r0_w_range521w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_connection_r0_w_range524w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_connection_r1_w_range534w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_operation_r1_w_range505w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_operation_r1_w_range508w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_operation_r1_w_range511w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_operation_r1_w_range517w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_operation_r1_w_range519w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_operation_r1_w_range522w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or4_w_operation_r2_w_range532w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range505w509w(0) <= wire_altfp_inv_and_or4_w_operation_r1_w_range505w(0) OR wire_altfp_inv_and_or4_w_connection_r0_w_range507w(0);
	wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range508w512w(0) <= wire_altfp_inv_and_or4_w_operation_r1_w_range508w(0) OR wire_altfp_inv_and_or4_w_connection_r0_w_range510w(0);
	wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range511w515w(0) <= wire_altfp_inv_and_or4_w_operation_r1_w_range511w(0) OR wire_altfp_inv_and_or4_w_connection_r0_w_range513w(0);
	wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range517w520w(0) <= wire_altfp_inv_and_or4_w_operation_r1_w_range517w(0) OR wire_altfp_inv_and_or4_w_connection_r0_w_range518w(0);
	wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range519w523w(0) <= wire_altfp_inv_and_or4_w_operation_r1_w_range519w(0) OR wire_altfp_inv_and_or4_w_connection_r0_w_range521w(0);
	wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range522w526w(0) <= wire_altfp_inv_and_or4_w_operation_r1_w_range522w(0) OR wire_altfp_inv_and_or4_w_connection_r0_w_range524w(0);
	wire_altfp_inv_and_or4_w_lg_w_operation_r2_w_range532w536w(0) <= wire_altfp_inv_and_or4_w_operation_r2_w_range532w(0) OR wire_altfp_inv_and_or4_w_connection_r1_w_range534w(0);
	connection_r0_w <= data;
	connection_r1_w <= connection_dffe0;
	connection_r2_w <= connection_dffe1;
	operation_r1_w <= ( wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range522w526w & wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range519w523w & wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range517w520w & connection_r0_w(4) & wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range511w515w & wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range508w512w & wire_altfp_inv_and_or4_w_lg_w_operation_r1_w_range505w509w & connection_r0_w(0));
	operation_r2_w <= ( wire_altfp_inv_and_or4_w_lg_w_operation_r2_w_range532w536w & connection_r1_w(0));
	result <= connection_dffe2;
	wire_altfp_inv_and_or4_w_connection_r0_w_range507w(0) <= connection_r0_w(1);
	wire_altfp_inv_and_or4_w_connection_r0_w_range510w(0) <= connection_r0_w(2);
	wire_altfp_inv_and_or4_w_connection_r0_w_range513w(0) <= connection_r0_w(3);
	wire_altfp_inv_and_or4_w_connection_r0_w_range518w(0) <= connection_r0_w(5);
	wire_altfp_inv_and_or4_w_connection_r0_w_range521w(0) <= connection_r0_w(6);
	wire_altfp_inv_and_or4_w_connection_r0_w_range524w(0) <= connection_r0_w(7);
	wire_altfp_inv_and_or4_w_connection_r1_w_range534w(0) <= connection_r1_w(1);
	wire_altfp_inv_and_or4_w_operation_r1_w_range505w(0) <= operation_r1_w(0);
	wire_altfp_inv_and_or4_w_operation_r1_w_range508w(0) <= operation_r1_w(1);
	wire_altfp_inv_and_or4_w_operation_r1_w_range511w(0) <= operation_r1_w(2);
	wire_altfp_inv_and_or4_w_operation_r1_w_range517w(0) <= operation_r1_w(4);
	wire_altfp_inv_and_or4_w_operation_r1_w_range519w(0) <= operation_r1_w(5);
	wire_altfp_inv_and_or4_w_operation_r1_w_range522w(0) <= operation_r1_w(6);
	wire_altfp_inv_and_or4_w_operation_r2_w_range532w(0) <= operation_r2_w(0);
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN connection_dffe0 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clken = '1') THEN connection_dffe0 <= ( operation_r1_w(7) & operation_r1_w(3));
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN connection_dffe1 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clken = '1') THEN connection_dffe1(0) <= ( operation_r2_w(1));
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN connection_dffe2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clken = '1') THEN connection_dffe2 <= connection_r2_w(0);
			END IF;
		END IF;
	END PROCESS;

 END RTL; --kn_kalman_inv_altfp_inv_and_or_pld


--altfp_inv_and_or CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone II" LUT_INPUT_COUNT=4 OPERATION="AND" PIPELINE=3 WIDTH=8 aclr clken clock data result
--VERSION_BEGIN 11.1SP2 cbx_altfp_inv 2012:01:25:21:13:53:SJ cbx_cycloneii 2012:01:25:21:13:53:SJ cbx_lpm_add_sub 2012:01:25:21:13:53:SJ cbx_lpm_compare 2012:01:25:21:13:53:SJ cbx_lpm_mult 2012:01:25:21:13:53:SJ cbx_lpm_mux 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ cbx_padd 2012:01:25:21:13:53:SJ cbx_stratix 2012:01:25:21:13:53:SJ cbx_stratixii 2012:01:25:21:13:53:SJ cbx_util_mgl 2012:01:25:21:13:53:SJ  VERSION_END

--synthesis_resources = reg 4 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_inv_altfp_inv_and_or_bod IS 
	 PORT 
	 ( 
		 aclr	:	IN  STD_LOGIC := '0';
		 clken	:	IN  STD_LOGIC := '1';
		 clock	:	IN  STD_LOGIC := '0';
		 data	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0) := (OTHERS => '0');
		 result	:	OUT  STD_LOGIC
	 ); 
 END kn_kalman_inv_altfp_inv_and_or_bod;

 ARCHITECTURE RTL OF kn_kalman_inv_altfp_inv_and_or_bod IS

	 SIGNAL	 connection_dffe0	:	STD_LOGIC_VECTOR(1 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 connection_dffe1	:	STD_LOGIC_VECTOR(0 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 connection_dffe2	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range541w545w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range544w548w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range547w551w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range553w556w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range555w559w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range558w562w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_lg_w_operation_r2_w_range568w572w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  connection_r0_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  connection_r1_w :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  connection_r2_w :	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  operation_r1_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  operation_r2_w :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_connection_r0_w_range543w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_connection_r0_w_range546w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_connection_r0_w_range549w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_connection_r0_w_range554w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_connection_r0_w_range557w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_connection_r0_w_range560w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_connection_r1_w_range570w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_operation_r1_w_range541w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_operation_r1_w_range544w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_operation_r1_w_range547w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_operation_r1_w_range553w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_operation_r1_w_range555w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_operation_r1_w_range558w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_altfp_inv_and_or5_w_operation_r2_w_range568w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range541w545w(0) <= wire_altfp_inv_and_or5_w_operation_r1_w_range541w(0) AND wire_altfp_inv_and_or5_w_connection_r0_w_range543w(0);
	wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range544w548w(0) <= wire_altfp_inv_and_or5_w_operation_r1_w_range544w(0) AND wire_altfp_inv_and_or5_w_connection_r0_w_range546w(0);
	wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range547w551w(0) <= wire_altfp_inv_and_or5_w_operation_r1_w_range547w(0) AND wire_altfp_inv_and_or5_w_connection_r0_w_range549w(0);
	wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range553w556w(0) <= wire_altfp_inv_and_or5_w_operation_r1_w_range553w(0) AND wire_altfp_inv_and_or5_w_connection_r0_w_range554w(0);
	wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range555w559w(0) <= wire_altfp_inv_and_or5_w_operation_r1_w_range555w(0) AND wire_altfp_inv_and_or5_w_connection_r0_w_range557w(0);
	wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range558w562w(0) <= wire_altfp_inv_and_or5_w_operation_r1_w_range558w(0) AND wire_altfp_inv_and_or5_w_connection_r0_w_range560w(0);
	wire_altfp_inv_and_or5_w_lg_w_operation_r2_w_range568w572w(0) <= wire_altfp_inv_and_or5_w_operation_r2_w_range568w(0) AND wire_altfp_inv_and_or5_w_connection_r1_w_range570w(0);
	connection_r0_w <= data;
	connection_r1_w <= connection_dffe0;
	connection_r2_w <= connection_dffe1;
	operation_r1_w <= ( wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range558w562w & wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range555w559w & wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range553w556w & connection_r0_w(4) & wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range547w551w & wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range544w548w & wire_altfp_inv_and_or5_w_lg_w_operation_r1_w_range541w545w & connection_r0_w(0));
	operation_r2_w <= ( wire_altfp_inv_and_or5_w_lg_w_operation_r2_w_range568w572w & connection_r1_w(0));
	result <= connection_dffe2;
	wire_altfp_inv_and_or5_w_connection_r0_w_range543w(0) <= connection_r0_w(1);
	wire_altfp_inv_and_or5_w_connection_r0_w_range546w(0) <= connection_r0_w(2);
	wire_altfp_inv_and_or5_w_connection_r0_w_range549w(0) <= connection_r0_w(3);
	wire_altfp_inv_and_or5_w_connection_r0_w_range554w(0) <= connection_r0_w(5);
	wire_altfp_inv_and_or5_w_connection_r0_w_range557w(0) <= connection_r0_w(6);
	wire_altfp_inv_and_or5_w_connection_r0_w_range560w(0) <= connection_r0_w(7);
	wire_altfp_inv_and_or5_w_connection_r1_w_range570w(0) <= connection_r1_w(1);
	wire_altfp_inv_and_or5_w_operation_r1_w_range541w(0) <= operation_r1_w(0);
	wire_altfp_inv_and_or5_w_operation_r1_w_range544w(0) <= operation_r1_w(1);
	wire_altfp_inv_and_or5_w_operation_r1_w_range547w(0) <= operation_r1_w(2);
	wire_altfp_inv_and_or5_w_operation_r1_w_range553w(0) <= operation_r1_w(4);
	wire_altfp_inv_and_or5_w_operation_r1_w_range555w(0) <= operation_r1_w(5);
	wire_altfp_inv_and_or5_w_operation_r1_w_range558w(0) <= operation_r1_w(6);
	wire_altfp_inv_and_or5_w_operation_r2_w_range568w(0) <= operation_r2_w(0);
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN connection_dffe0 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clken = '1') THEN connection_dffe0 <= ( operation_r1_w(7) & operation_r1_w(3));
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN connection_dffe1 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clken = '1') THEN connection_dffe1(0) <= ( operation_r2_w(1));
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN connection_dffe2 <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clken = '1') THEN connection_dffe2 <= connection_r2_w(0);
			END IF;
		END IF;
	END PROCESS;

 END RTL; --kn_kalman_inv_altfp_inv_and_or_bod


--altfp_inv_csa CARRY_SELECT="YES" CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone II" DIRECTION="SUB" PIPELINE=1 REGISTER_INPUT="NO" REPRESENTATION="UNSIGNED" WIDTH=26 aclr clken clock dataa datab result
--VERSION_BEGIN 11.1SP2 cbx_altfp_inv 2012:01:25:21:13:53:SJ cbx_cycloneii 2012:01:25:21:13:53:SJ cbx_lpm_add_sub 2012:01:25:21:13:53:SJ cbx_lpm_compare 2012:01:25:21:13:53:SJ cbx_lpm_mult 2012:01:25:21:13:53:SJ cbx_lpm_mux 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ cbx_padd 2012:01:25:21:13:53:SJ cbx_stratix 2012:01:25:21:13:53:SJ cbx_stratixii 2012:01:25:21:13:53:SJ cbx_util_mgl 2012:01:25:21:13:53:SJ  VERSION_END

 LIBRARY lpm;
 USE lpm.all;

--synthesis_resources = lpm_add_sub 3 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_inv_altfp_inv_csa_pei IS 
	 PORT 
	 ( 
		 aclr	:	IN  STD_LOGIC := '0';
		 clken	:	IN  STD_LOGIC := '1';
		 clock	:	IN  STD_LOGIC := '0';
		 dataa	:	IN  STD_LOGIC_VECTOR (25 DOWNTO 0) := (OTHERS => '0');
		 datab	:	IN  STD_LOGIC_VECTOR (25 DOWNTO 0) := (OTHERS => '0');
		 result	:	OUT  STD_LOGIC_VECTOR (25 DOWNTO 0)
	 ); 
 END kn_kalman_inv_altfp_inv_csa_pei;

 ARCHITECTURE RTL OF kn_kalman_inv_altfp_inv_csa_pei IS

	 SIGNAL  wire_csa_lower_w_lg_w_lg_cout583w584w	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_csa_lower_w_lg_cout582w	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_csa_lower_w_lg_cout583w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_csa_lower_w_lg_w_lg_w_lg_cout583w584w585w	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_csa_lower_cout	:	STD_LOGIC;
	 SIGNAL  wire_csa_lower_result	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_csa_upper0_result	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_vcc	:	STD_LOGIC;
	 SIGNAL  wire_csa_upper1_result	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  dataa_w :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  datab_w :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  result_w :	STD_LOGIC_VECTOR (25 DOWNTO 0);
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
 BEGIN

	wire_gnd <= '0';
	wire_vcc <= '1';
	dataa_w <= dataa;
	datab_w <= datab;
	result <= result_w;
	result_w <= ( wire_csa_lower_w_lg_w_lg_w_lg_cout583w584w585w & wire_csa_lower_result);
	loop0 : FOR i IN 0 TO 12 GENERATE 
		wire_csa_lower_w_lg_w_lg_cout583w584w(i) <= wire_csa_lower_w_lg_cout583w(0) AND wire_csa_upper0_result(i);
	END GENERATE loop0;
	loop1 : FOR i IN 0 TO 12 GENERATE 
		wire_csa_lower_w_lg_cout582w(i) <= wire_csa_lower_cout AND wire_csa_upper1_result(i);
	END GENERATE loop1;
	wire_csa_lower_w_lg_cout583w(0) <= NOT wire_csa_lower_cout;
	loop2 : FOR i IN 0 TO 12 GENERATE 
		wire_csa_lower_w_lg_w_lg_w_lg_cout583w584w585w(i) <= wire_csa_lower_w_lg_w_lg_cout583w584w(i) OR wire_csa_lower_w_lg_cout582w(i);
	END GENERATE loop2;
	csa_lower :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "SUB",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTH => 13
	  )
	  PORT MAP ( 
		aclr => aclr,
		clken => clken,
		clock => clock,
		cout => wire_csa_lower_cout,
		dataa => dataa_w(12 DOWNTO 0),
		datab => datab_w(12 DOWNTO 0),
		result => wire_csa_lower_result
	  );
	csa_upper0 :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "SUB",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTH => 13
	  )
	  PORT MAP ( 
		aclr => aclr,
		cin => wire_gnd,
		clken => clken,
		clock => clock,
		dataa => dataa_w(25 DOWNTO 13),
		datab => datab_w(25 DOWNTO 13),
		result => wire_csa_upper0_result
	  );
	csa_upper1 :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "SUB",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTH => 13
	  )
	  PORT MAP ( 
		aclr => aclr,
		cin => wire_vcc,
		clken => clken,
		clock => clock,
		dataa => dataa_w(25 DOWNTO 13),
		datab => datab_w(25 DOWNTO 13),
		result => wire_csa_upper1_result
	  );

 END RTL; --kn_kalman_inv_altfp_inv_csa_pei


--altfp_inv_csa CARRY_SELECT="NO" CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone II" DIRECTION="ADD" PIPELINE=1 REGISTER_INPUT="NO" REPRESENTATION="UNSIGNED" WIDTH=13 aclr clken clock dataa datab result
--VERSION_BEGIN 11.1SP2 cbx_altfp_inv 2012:01:25:21:13:53:SJ cbx_cycloneii 2012:01:25:21:13:53:SJ cbx_lpm_add_sub 2012:01:25:21:13:53:SJ cbx_lpm_compare 2012:01:25:21:13:53:SJ cbx_lpm_mult 2012:01:25:21:13:53:SJ cbx_lpm_mux 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ cbx_padd 2012:01:25:21:13:53:SJ cbx_stratix 2012:01:25:21:13:53:SJ cbx_stratixii 2012:01:25:21:13:53:SJ cbx_util_mgl 2012:01:25:21:13:53:SJ  VERSION_END

 LIBRARY lpm;
 USE lpm.all;

--synthesis_resources = lpm_add_sub 1 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_inv_altfp_inv_csa_0ai IS 
	 PORT 
	 ( 
		 aclr	:	IN  STD_LOGIC := '0';
		 clken	:	IN  STD_LOGIC := '1';
		 clock	:	IN  STD_LOGIC := '0';
		 dataa	:	IN  STD_LOGIC_VECTOR (12 DOWNTO 0) := (OTHERS => '0');
		 datab	:	IN  STD_LOGIC_VECTOR (12 DOWNTO 0) := (OTHERS => '0');
		 result	:	OUT  STD_LOGIC_VECTOR (12 DOWNTO 0)
	 ); 
 END kn_kalman_inv_altfp_inv_csa_0ai;

 ARCHITECTURE RTL OF kn_kalman_inv_altfp_inv_csa_0ai IS

	 SIGNAL  wire_add_sub7_result	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  dataa_w :	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  datab_w :	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  result_w :	STD_LOGIC_VECTOR (12 DOWNTO 0);
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
 BEGIN

	dataa_w <= dataa;
	datab_w <= datab;
	result <= result_w;
	result_w <= wire_add_sub7_result;
	add_sub7 :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "ADD",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTH => 13
	  )
	  PORT MAP ( 
		aclr => aclr,
		clken => clken,
		clock => clock,
		dataa => dataa_w,
		datab => datab_w,
		result => wire_add_sub7_result
	  );

 END RTL; --kn_kalman_inv_altfp_inv_csa_0ai


--altfp_inv_csa CARRY_SELECT="NO" CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone II" DIRECTION="SUB" PIPELINE=1 REGISTER_INPUT="NO" REPRESENTATION="UNSIGNED" WIDTH=13 aclr clken clock dataa datab result
--VERSION_BEGIN 11.1SP2 cbx_altfp_inv 2012:01:25:21:13:53:SJ cbx_cycloneii 2012:01:25:21:13:53:SJ cbx_lpm_add_sub 2012:01:25:21:13:53:SJ cbx_lpm_compare 2012:01:25:21:13:53:SJ cbx_lpm_mult 2012:01:25:21:13:53:SJ cbx_lpm_mux 2012:01:25:21:13:53:SJ cbx_mgl 2012:01:25:21:15:41:SJ cbx_padd 2012:01:25:21:13:53:SJ cbx_stratix 2012:01:25:21:13:53:SJ cbx_stratixii 2012:01:25:21:13:53:SJ cbx_util_mgl 2012:01:25:21:13:53:SJ  VERSION_END

 LIBRARY lpm;
 USE lpm.all;

--synthesis_resources = lpm_add_sub 1 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_inv_altfp_inv_csa_1bi IS 
	 PORT 
	 ( 
		 aclr	:	IN  STD_LOGIC := '0';
		 clken	:	IN  STD_LOGIC := '1';
		 clock	:	IN  STD_LOGIC := '0';
		 dataa	:	IN  STD_LOGIC_VECTOR (12 DOWNTO 0) := (OTHERS => '0');
		 datab	:	IN  STD_LOGIC_VECTOR (12 DOWNTO 0) := (OTHERS => '0');
		 result	:	OUT  STD_LOGIC_VECTOR (12 DOWNTO 0)
	 ); 
 END kn_kalman_inv_altfp_inv_csa_1bi;

 ARCHITECTURE RTL OF kn_kalman_inv_altfp_inv_csa_1bi IS

	 SIGNAL  wire_add_sub8_result	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  dataa_w :	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  datab_w :	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  result_w :	STD_LOGIC_VECTOR (12 DOWNTO 0);
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
 BEGIN

	dataa_w <= dataa;
	datab_w <= datab;
	result <= result_w;
	result_w <= wire_add_sub8_result;
	add_sub8 :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "SUB",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTH => 13
	  )
	  PORT MAP ( 
		aclr => aclr,
		clken => clken,
		clock => clock,
		dataa => dataa_w,
		datab => datab_w,
		result => wire_add_sub8_result
	  );

 END RTL; --kn_kalman_inv_altfp_inv_csa_1bi

 LIBRARY lpm;
 USE lpm.lpm_components.all;

--synthesis_resources = lpm_add_sub 15 lpm_compare 1 lpm_mult 4 lpm_mux 1 reg 755 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  kn_kalman_inv_altfp_inv_rhc IS 
	 PORT 
	 ( 
		 clock	:	IN  STD_LOGIC;
		 data	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 result	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0)
	 ); 
 END kn_kalman_inv_altfp_inv_rhc;

 ARCHITECTURE RTL OF kn_kalman_inv_altfp_inv_rhc IS

	 SIGNAL  wire_altfp_inv_and_or2_result	:	STD_LOGIC;
	 SIGNAL  wire_altfp_inv_and_or3_result	:	STD_LOGIC;
	 SIGNAL  wire_altfp_inv_and_or4_result	:	STD_LOGIC;
	 SIGNAL  wire_altfp_inv_and_or5_result	:	STD_LOGIC;
	 SIGNAL  wire_diff_adder_0_result	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_diff_adder_1_result	:	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  wire_slope_r1c1_add_result	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_slope_r1c2_add_result	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_slope_r1c3_add_result	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_slope_r2c1_add_result	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_slope_r2c2_add_result	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_slope_r3c1_add_result	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL	 and_dffe_0	:	STD_LOGIC_VECTOR(12 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 and_dffe_1	:	STD_LOGIC_VECTOR(12 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 and_dffe_2	:	STD_LOGIC_VECTOR(12 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 and_dffe_3	:	STD_LOGIC_VECTOR(12 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 and_dffe_4	:	STD_LOGIC_VECTOR(12 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 and_dffe_5	:	STD_LOGIC_VECTOR(12 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 division_by_zero_dffe	:	STD_LOGIC_VECTOR(2 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe1_0	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe1_1	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe1_10	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe1_11	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe1_12	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe1_13	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe1_14	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe1_2	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe1_3	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe1_4	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe1_5	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe1_6	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe1_7	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe1_8	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe1_9	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe2_0	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe2_1	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 exp_dffe2_2	:	STD_LOGIC_VECTOR(7 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinite_dffe	:	STD_LOGIC_VECTOR(2 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 infinite_input_dffe	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 intercept_dffe	:	STD_LOGIC_VECTOR(9 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_dffe_0	:	STD_LOGIC_VECTOR(22 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_dffe_1	:	STD_LOGIC_VECTOR(22 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_dffe_10	:	STD_LOGIC_VECTOR(22 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_dffe_11	:	STD_LOGIC_VECTOR(22 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_dffe_2	:	STD_LOGIC_VECTOR(22 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_dffe_3	:	STD_LOGIC_VECTOR(22 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_dffe_4	:	STD_LOGIC_VECTOR(22 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_dffe_5	:	STD_LOGIC_VECTOR(22 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_dffe_6	:	STD_LOGIC_VECTOR(22 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_dffe_7	:	STD_LOGIC_VECTOR(22 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_dffe_8	:	STD_LOGIC_VECTOR(22 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 man_dffe_9	:	STD_LOGIC_VECTOR(22 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 nan_dffe	:	STD_LOGIC_VECTOR(2 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 nan_input_dffe	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL	 result_output_dffe	:	STD_LOGIC_VECTOR(31 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 sign_dffe	:	STD_LOGIC_VECTOR(18 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 underflow_dffe	:	STD_LOGIC_VECTOR(2 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 x_dffe_0	:	STD_LOGIC_VECTOR(12 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 x_dffe_1	:	STD_LOGIC_VECTOR(12 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 x_dffe_2	:	STD_LOGIC_VECTOR(12 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 x_dffe_3	:	STD_LOGIC_VECTOR(12 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 x_dffe_4	:	STD_LOGIC_VECTOR(24 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 x_dffe_5	:	STD_LOGIC_VECTOR(24 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 x_dffe_6	:	STD_LOGIC_VECTOR(24 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 x_dffe_7	:	STD_LOGIC_VECTOR(24 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 zero_dffe	:	STD_LOGIC_VECTOR(2 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 zero_input_dffe	:	STD_LOGIC
	 -- synopsys translate_off
	  := '0'
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_approx_sub_result	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
	 SIGNAL  wire_bias_adjustment_datab	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_bias_adjustment_result	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_bias_adjustment_w_result_range267w	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_modified_add_result	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_cmpr6_ageb	:	STD_LOGIC;
	 SIGNAL  wire_cmpr6_dataa	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_inner_mult0_result	:	STD_LOGIC_VECTOR (36 DOWNTO 0);
	 SIGNAL  wire_inner_mult1_result	:	STD_LOGIC_VECTOR (48 DOWNTO 0);
	 SIGNAL  wire_outer_mult0_result	:	STD_LOGIC_VECTOR (37 DOWNTO 0);
	 SIGNAL  wire_outer_mult1_result	:	STD_LOGIC_VECTOR (49 DOWNTO 0);
	 SIGNAL  wire_mux1_data_2d	:	STD_LOGIC_2D(31 DOWNTO 0, 15 DOWNTO 0);
	 SIGNAL  wire_mux1_result	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_mux1_w_result_range183w	:	STD_LOGIC_VECTOR (9 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_infinite_out_w290w291w	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_man_zero_w215w216w	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_nan_out_w298w299w	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_zero_out_w294w295w	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_w_lg_infinite_out_w292w	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_w_lg_man_zero_w214w	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_w_lg_nan_out_w300w	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_w_lg_zero_out_w296w	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_slope_w_range171w172w	:	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_slope_w_range164w165w	:	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_slope_w_range156w157w	:	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_slope_w_range148w149w	:	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_slope_w_range140w141w	:	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_slope_w_range132w133w	:	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  wire_w_lg_exp_or_msb_w204w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_infinite_input_w221w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_infinite_out_w290w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_man_or_msb_w203w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_man_zero_w215w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_nan_input_w212w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_nan_out_w298w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_zero_out_w294w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  aclr	:	STD_LOGIC;
	 SIGNAL  and_b0_w :	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  and_b1_w :	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  and_b2_w :	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  and_b3_w :	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  and_b4_w :	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  and_b5_w :	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  approx_c_w :	STD_LOGIC_VECTOR (6 DOWNTO 0);
	 SIGNAL  approx_mx_w :	STD_LOGIC_VECTOR (6 DOWNTO 0);
	 SIGNAL  approx_y_w :	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  c_offset_w :	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  clk_en	:	STD_LOGIC;
	 SIGNAL  const_2_w :	STD_LOGIC_VECTOR (25 DOWNTO 0);
	 SIGNAL  const_bias_adj_greater_one_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  const_bias_adj_one_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  const_bias_adj_w :	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  data_exp_bus_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  data_man_bus_w :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  data_sign_w :	STD_LOGIC;
	 SIGNAL  division_by_zero_w :	STD_LOGIC;
	 SIGNAL  exp_and_msb_w :	STD_LOGIC;
	 SIGNAL  exp_bus_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_exc_ones_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_exc_zeros_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_one_w :	STD_LOGIC;
	 SIGNAL  exp_or_msb_w :	STD_LOGIC;
	 SIGNAL  exp_res_w :	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  exp_zero_w :	STD_LOGIC;
	 SIGNAL  gnd_w :	STD_LOGIC;
	 SIGNAL  infi_res_w :	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  infinite_input_w :	STD_LOGIC;
	 SIGNAL  infinite_out_w :	STD_LOGIC;
	 SIGNAL  infinite_w :	STD_LOGIC;
	 SIGNAL  man_and_msb_w :	STD_LOGIC;
	 SIGNAL  man_bus_w :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  man_exc_nan_w :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  man_exc_zeros_w :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  man_non_zero_w :	STD_LOGIC;
	 SIGNAL  man_one_w :	STD_LOGIC;
	 SIGNAL  man_or_msb_w :	STD_LOGIC;
	 SIGNAL  man_out_0_w :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  man_out_1_w :	STD_LOGIC_VECTOR (23 DOWNTO 0);
	 SIGNAL  man_res_w :	STD_LOGIC_VECTOR (22 DOWNTO 0);
	 SIGNAL  man_zero_w :	STD_LOGIC;
	 SIGNAL  modified_c_w :	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  mux_1_res_w :	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  mux_2_res_w :	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  mux_3_res_w :	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  nan_input_w :	STD_LOGIC;
	 SIGNAL  nan_out_w :	STD_LOGIC;
	 SIGNAL  nan_res_w :	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  nan_w :	STD_LOGIC;
	 SIGNAL  norm_res_int_w :	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  shift_b0_w :	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  shift_b1_w :	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  shift_b2_w :	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  shift_b3_w :	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  shift_b4_w :	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  shift_b5_w :	STD_LOGIC_VECTOR (29 DOWNTO 0);
	 SIGNAL  sign_exc_bit_w :	STD_LOGIC;
	 SIGNAL  sign_res_w :	STD_LOGIC;
	 SIGNAL  slope_w :	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  table_bus_full_w :	STD_LOGIC_VECTOR (511 DOWNTO 0);
	 SIGNAL  underflow_w :	STD_LOGIC;
	 SIGNAL  vcc_w :	STD_LOGIC;
	 SIGNAL  x_0_w :	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  x_1_w :	STD_LOGIC_VECTOR (24 DOWNTO 0);
	 SIGNAL  x_2_w :	STD_LOGIC_VECTOR (24 DOWNTO 0);
	 SIGNAL  x_initial_w :	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  zero_input_w :	STD_LOGIC;
	 SIGNAL  zero_out_w :	STD_LOGIC;
	 SIGNAL  zero_res_w :	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  zero_w :	STD_LOGIC;
	 SIGNAL  wire_w_and_b0_w_range134w	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_w_and_b1_w_range142w	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_w_and_b2_w_range150w	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_w_and_b3_w_range158w	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_w_and_b4_w_range166w	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_w_and_b5_w_range173w	:	STD_LOGIC_VECTOR (12 DOWNTO 0);
	 SIGNAL  wire_w_slope_w_range171w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_slope_w_range164w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_slope_w_range156w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_slope_w_range148w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_slope_w_range140w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_slope_w_range132w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 COMPONENT  kn_kalman_inv_altfp_inv_and_or_6nd
	 PORT
	 ( 
		aclr	:	IN  STD_LOGIC := '0';
		clken	:	IN  STD_LOGIC := '1';
		clock	:	IN  STD_LOGIC := '0';
		data	:	IN  STD_LOGIC_VECTOR(22 DOWNTO 0) := (OTHERS => '0');
		result	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_inv_altfp_inv_and_or_opd
	 PORT
	 ( 
		aclr	:	IN  STD_LOGIC := '0';
		clken	:	IN  STD_LOGIC := '1';
		clock	:	IN  STD_LOGIC := '0';
		data	:	IN  STD_LOGIC_VECTOR(22 DOWNTO 0) := (OTHERS => '0');
		result	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_inv_altfp_inv_and_or_pld
	 PORT
	 ( 
		aclr	:	IN  STD_LOGIC := '0';
		clken	:	IN  STD_LOGIC := '1';
		clock	:	IN  STD_LOGIC := '0';
		data	:	IN  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
		result	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_inv_altfp_inv_and_or_bod
	 PORT
	 ( 
		aclr	:	IN  STD_LOGIC := '0';
		clken	:	IN  STD_LOGIC := '1';
		clock	:	IN  STD_LOGIC := '0';
		data	:	IN  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
		result	:	OUT  STD_LOGIC
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_inv_altfp_inv_csa_pei
	 PORT
	 ( 
		aclr	:	IN  STD_LOGIC := '0';
		clken	:	IN  STD_LOGIC := '1';
		clock	:	IN  STD_LOGIC := '0';
		dataa	:	IN  STD_LOGIC_VECTOR(25 DOWNTO 0) := (OTHERS => '0');
		datab	:	IN  STD_LOGIC_VECTOR(25 DOWNTO 0) := (OTHERS => '0');
		result	:	OUT  STD_LOGIC_VECTOR(25 DOWNTO 0)
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_inv_altfp_inv_csa_0ai
	 PORT
	 ( 
		aclr	:	IN  STD_LOGIC := '0';
		clken	:	IN  STD_LOGIC := '1';
		clock	:	IN  STD_LOGIC := '0';
		dataa	:	IN  STD_LOGIC_VECTOR(12 DOWNTO 0) := (OTHERS => '0');
		datab	:	IN  STD_LOGIC_VECTOR(12 DOWNTO 0) := (OTHERS => '0');
		result	:	OUT  STD_LOGIC_VECTOR(12 DOWNTO 0)
	 ); 
	 END COMPONENT;
	 COMPONENT  kn_kalman_inv_altfp_inv_csa_1bi
	 PORT
	 ( 
		aclr	:	IN  STD_LOGIC := '0';
		clken	:	IN  STD_LOGIC := '1';
		clock	:	IN  STD_LOGIC := '0';
		dataa	:	IN  STD_LOGIC_VECTOR(12 DOWNTO 0) := (OTHERS => '0');
		datab	:	IN  STD_LOGIC_VECTOR(12 DOWNTO 0) := (OTHERS => '0');
		result	:	OUT  STD_LOGIC_VECTOR(12 DOWNTO 0)
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

	loop3 : FOR i IN 0 TO 31 GENERATE 
		wire_w_lg_w_lg_infinite_out_w290w291w(i) <= wire_w_lg_infinite_out_w290w(0) AND norm_res_int_w(i);
	END GENERATE loop3;
	loop4 : FOR i IN 0 TO 8 GENERATE 
		wire_w_lg_w_lg_man_zero_w215w216w(i) <= wire_w_lg_man_zero_w215w(0) AND const_bias_adj_greater_one_w(i);
	END GENERATE loop4;
	loop5 : FOR i IN 0 TO 31 GENERATE 
		wire_w_lg_w_lg_nan_out_w298w299w(i) <= wire_w_lg_nan_out_w298w(0) AND mux_2_res_w(i);
	END GENERATE loop5;
	loop6 : FOR i IN 0 TO 31 GENERATE 
		wire_w_lg_w_lg_zero_out_w294w295w(i) <= wire_w_lg_zero_out_w294w(0) AND mux_1_res_w(i);
	END GENERATE loop6;
	loop7 : FOR i IN 0 TO 31 GENERATE 
		wire_w_lg_infinite_out_w292w(i) <= infinite_out_w AND infi_res_w(i);
	END GENERATE loop7;
	loop8 : FOR i IN 0 TO 8 GENERATE 
		wire_w_lg_man_zero_w214w(i) <= man_zero_w AND const_bias_adj_one_w(i);
	END GENERATE loop8;
	loop9 : FOR i IN 0 TO 31 GENERATE 
		wire_w_lg_nan_out_w300w(i) <= nan_out_w AND nan_res_w(i);
	END GENERATE loop9;
	loop10 : FOR i IN 0 TO 31 GENERATE 
		wire_w_lg_zero_out_w296w(i) <= zero_out_w AND zero_res_w(i);
	END GENERATE loop10;
	loop11 : FOR i IN 0 TO 29 GENERATE 
		wire_w_lg_w_slope_w_range171w172w(i) <= wire_w_slope_w_range171w(0) AND shift_b5_w(i);
	END GENERATE loop11;
	loop12 : FOR i IN 0 TO 29 GENERATE 
		wire_w_lg_w_slope_w_range164w165w(i) <= wire_w_slope_w_range164w(0) AND shift_b4_w(i);
	END GENERATE loop12;
	loop13 : FOR i IN 0 TO 29 GENERATE 
		wire_w_lg_w_slope_w_range156w157w(i) <= wire_w_slope_w_range156w(0) AND shift_b3_w(i);
	END GENERATE loop13;
	loop14 : FOR i IN 0 TO 29 GENERATE 
		wire_w_lg_w_slope_w_range148w149w(i) <= wire_w_slope_w_range148w(0) AND shift_b2_w(i);
	END GENERATE loop14;
	loop15 : FOR i IN 0 TO 29 GENERATE 
		wire_w_lg_w_slope_w_range140w141w(i) <= wire_w_slope_w_range140w(0) AND shift_b1_w(i);
	END GENERATE loop15;
	loop16 : FOR i IN 0 TO 29 GENERATE 
		wire_w_lg_w_slope_w_range132w133w(i) <= wire_w_slope_w_range132w(0) AND shift_b0_w(i);
	END GENERATE loop16;
	wire_w_lg_exp_or_msb_w204w(0) <= NOT exp_or_msb_w;
	wire_w_lg_infinite_input_w221w(0) <= NOT infinite_input_w;
	wire_w_lg_infinite_out_w290w(0) <= NOT infinite_out_w;
	wire_w_lg_man_or_msb_w203w(0) <= NOT man_or_msb_w;
	wire_w_lg_man_zero_w215w(0) <= NOT man_zero_w;
	wire_w_lg_nan_input_w212w(0) <= NOT nan_input_w;
	wire_w_lg_nan_out_w298w(0) <= NOT nan_out_w;
	wire_w_lg_zero_out_w294w(0) <= NOT zero_out_w;
	aclr <= '0';
	and_b0_w <= wire_w_lg_w_slope_w_range132w133w;
	and_b1_w <= wire_w_lg_w_slope_w_range140w141w;
	and_b2_w <= wire_w_lg_w_slope_w_range148w149w;
	and_b3_w <= wire_w_lg_w_slope_w_range156w157w;
	and_b4_w <= wire_w_lg_w_slope_w_range164w165w;
	and_b5_w <= wire_w_lg_w_slope_w_range171w172w;
	approx_c_w <= "1100000";
	approx_mx_w <= ( gnd_w & vcc_w & man_dffe_0(22 DOWNTO 18));
	approx_y_w <= ( wire_approx_sub_result(5 DOWNTO 0) & gnd_w & gnd_w & gnd_w & gnd_w & gnd_w & gnd_w & gnd_w);
	c_offset_w <= ( gnd_w & gnd_w & gnd_w & intercept_dffe);
	clk_en <= '1';
	const_2_w <= "10000000000000000000000000";
	const_bias_adj_greater_one_w <= "011111101";
	const_bias_adj_one_w <= "011111110";
	const_bias_adj_w <= (wire_w_lg_w_lg_man_zero_w215w216w OR wire_w_lg_man_zero_w214w);
	data_exp_bus_w <= data(30 DOWNTO 23);
	data_man_bus_w <= data(22 DOWNTO 0);
	data_sign_w <= data(31);
	division_by_zero_w <= zero_input_w;
	exp_and_msb_w <= wire_altfp_inv_and_or5_result;
	exp_bus_w <= exp_dffe1_11;
	exp_exc_ones_w <= (OTHERS => '1');
	exp_exc_zeros_w <= (OTHERS => '0');
	exp_one_w <= exp_and_msb_w;
	exp_or_msb_w <= wire_altfp_inv_and_or4_result;
	exp_res_w <= exp_dffe2_2;
	exp_zero_w <= wire_w_lg_exp_or_msb_w204w(0);
	gnd_w <= '0';
	infi_res_w <= ( sign_exc_bit_w & exp_exc_ones_w & man_exc_zeros_w);
	infinite_input_w <= infinite_input_dffe;
	infinite_out_w <= infinite_dffe(2);
	infinite_w <= zero_input_w;
	man_and_msb_w <= wire_altfp_inv_and_or3_result;
	man_bus_w <= man_dffe_11;
	man_exc_nan_w <= ( vcc_w & man_exc_zeros_w(21 DOWNTO 0));
	man_exc_zeros_w <= (OTHERS => '0');
	man_non_zero_w <= man_or_msb_w;
	man_one_w <= man_and_msb_w;
	man_or_msb_w <= wire_altfp_inv_and_or2_result;
	man_out_0_w <= ( vcc_w & man_dffe_4(22 DOWNTO 0));
	man_out_1_w <= ( vcc_w & man_dffe_11(22 DOWNTO 0));
	man_res_w <= x_2_w(22 DOWNTO 0);
	man_zero_w <= wire_w_lg_man_or_msb_w203w(0);
	modified_c_w <= wire_modified_add_result(12 DOWNTO 0);
	mux_1_res_w <= (wire_w_lg_infinite_out_w292w OR wire_w_lg_w_lg_infinite_out_w290w291w);
	mux_2_res_w <= (wire_w_lg_zero_out_w296w OR wire_w_lg_w_lg_zero_out_w294w295w);
	mux_3_res_w <= (wire_w_lg_nan_out_w300w OR wire_w_lg_w_lg_nan_out_w298w299w);
	nan_input_w <= nan_input_dffe;
	nan_out_w <= nan_dffe(2);
	nan_res_w <= ( sign_exc_bit_w & exp_exc_ones_w & man_exc_nan_w);
	nan_w <= nan_input_w;
	norm_res_int_w <= ( sign_res_w & exp_res_w & man_res_w);
	result <= result_output_dffe;
	shift_b0_w <= ( gnd_w & vcc_w & man_dffe_0 & gnd_w & gnd_w & gnd_w & gnd_w & gnd_w);
	shift_b1_w <= ( gnd_w & gnd_w & vcc_w & man_dffe_0 & gnd_w & gnd_w & gnd_w & gnd_w);
	shift_b2_w <= ( gnd_w & gnd_w & gnd_w & vcc_w & man_dffe_0 & gnd_w & gnd_w & gnd_w);
	shift_b3_w <= ( gnd_w & gnd_w & gnd_w & gnd_w & vcc_w & man_dffe_0 & gnd_w & gnd_w);
	shift_b4_w <= ( gnd_w & gnd_w & gnd_w & gnd_w & gnd_w & vcc_w & man_dffe_0 & gnd_w);
	shift_b5_w <= ( gnd_w & gnd_w & gnd_w & gnd_w & gnd_w & gnd_w & vcc_w & man_dffe_0);
	sign_exc_bit_w <= sign_res_w;
	sign_res_w <= sign_dffe(18);
	slope_w <= wire_mux1_result(15 DOWNTO 10);
	table_bus_full_w <= ( "0100010000000001" & "0100010010000001" & "0100100010000111" & "0100100100000111" & "0100110100010000" & "0101000100011100" & "0101000110011100" & "0101010110101011" & "0101100110111100" & "0101110111010000" & "0101111001010001" & "0110001001100111" & "0110011001111111" & "0110101010011010" & "0110111010110111" & "0111001011010101" & "0111101010010111" & "0111111010111010" & "1000001011011111" & "1000101010101101" & "1000111011010101" & "1001011010101011" & "1001111010000101" & "1010001010110011" & "1010111001000101" & "1011011000101010" & "1011111000010011" & "1100100110110111" & "1101010101100001" & "1110000100010001" & "1110110011000110" & "1111110001000000");
	underflow_w <= ((wire_w_lg_infinite_input_w221w(0) AND wire_w_lg_nan_input_w212w(0)) AND wire_cmpr6_ageb);
	vcc_w <= '1';
	x_0_w <= x_initial_w;
	x_1_w <= wire_outer_mult0_result(36 DOWNTO 12);
	x_2_w <= wire_outer_mult1_result(48 DOWNTO 24);
	x_initial_w <= wire_slope_r3c1_add_result;
	zero_input_w <= zero_input_dffe;
	zero_out_w <= zero_dffe(2);
	zero_res_w <= ( sign_exc_bit_w & exp_exc_zeros_w & man_exc_zeros_w);
	zero_w <= (wire_w_lg_nan_input_w212w(0) AND (infinite_input_w OR underflow_w));
	wire_w_and_b0_w_range134w <= and_b0_w(29 DOWNTO 17);
	wire_w_and_b1_w_range142w <= and_b1_w(29 DOWNTO 17);
	wire_w_and_b2_w_range150w <= and_b2_w(29 DOWNTO 17);
	wire_w_and_b3_w_range158w <= and_b3_w(29 DOWNTO 17);
	wire_w_and_b4_w_range166w <= and_b4_w(29 DOWNTO 17);
	wire_w_and_b5_w_range173w <= and_b5_w(29 DOWNTO 17);
	wire_w_slope_w_range171w(0) <= slope_w(0);
	wire_w_slope_w_range164w(0) <= slope_w(1);
	wire_w_slope_w_range156w(0) <= slope_w(2);
	wire_w_slope_w_range148w(0) <= slope_w(3);
	wire_w_slope_w_range140w(0) <= slope_w(4);
	wire_w_slope_w_range132w(0) <= slope_w(5);
	altfp_inv_and_or2 :  kn_kalman_inv_altfp_inv_and_or_6nd
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		data => man_bus_w,
		result => wire_altfp_inv_and_or2_result
	  );
	altfp_inv_and_or3 :  kn_kalman_inv_altfp_inv_and_or_opd
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		data => man_bus_w,
		result => wire_altfp_inv_and_or3_result
	  );
	altfp_inv_and_or4 :  kn_kalman_inv_altfp_inv_and_or_pld
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		data => exp_bus_w,
		result => wire_altfp_inv_and_or4_result
	  );
	altfp_inv_and_or5 :  kn_kalman_inv_altfp_inv_and_or_bod
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		data => exp_bus_w,
		result => wire_altfp_inv_and_or5_result
	  );
	diff_adder_0 :  kn_kalman_inv_altfp_inv_csa_pei
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => const_2_w(25 DOWNTO 0),
		datab => wire_inner_mult0_result(36 DOWNTO 11),
		result => wire_diff_adder_0_result
	  );
	diff_adder_1 :  kn_kalman_inv_altfp_inv_csa_pei
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => const_2_w(25 DOWNTO 0),
		datab => wire_inner_mult1_result(48 DOWNTO 23),
		result => wire_diff_adder_1_result
	  );
	slope_r1c1_add :  kn_kalman_inv_altfp_inv_csa_0ai
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => and_dffe_0,
		datab => and_dffe_1,
		result => wire_slope_r1c1_add_result
	  );
	slope_r1c2_add :  kn_kalman_inv_altfp_inv_csa_0ai
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => and_dffe_2,
		datab => and_dffe_3,
		result => wire_slope_r1c2_add_result
	  );
	slope_r1c3_add :  kn_kalman_inv_altfp_inv_csa_0ai
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => and_dffe_4,
		datab => and_dffe_5,
		result => wire_slope_r1c3_add_result
	  );
	slope_r2c1_add :  kn_kalman_inv_altfp_inv_csa_0ai
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => wire_slope_r1c1_add_result,
		datab => wire_slope_r1c2_add_result,
		result => wire_slope_r2c1_add_result
	  );
	slope_r2c2_add :  kn_kalman_inv_altfp_inv_csa_1bi
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => modified_c_w,
		datab => wire_slope_r1c3_add_result,
		result => wire_slope_r2c2_add_result
	  );
	slope_r3c1_add :  kn_kalman_inv_altfp_inv_csa_1bi
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => wire_slope_r2c2_add_result,
		datab => wire_slope_r2c1_add_result,
		result => wire_slope_r3c1_add_result
	  );
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN and_dffe_0 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN and_dffe_0 <= wire_w_and_b0_w_range134w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN and_dffe_1 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN and_dffe_1 <= wire_w_and_b1_w_range142w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN and_dffe_2 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN and_dffe_2 <= wire_w_and_b2_w_range150w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN and_dffe_3 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN and_dffe_3 <= wire_w_and_b3_w_range158w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN and_dffe_4 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN and_dffe_4 <= wire_w_and_b4_w_range166w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN and_dffe_5 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN and_dffe_5 <= wire_w_and_b5_w_range173w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN division_by_zero_dffe <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN division_by_zero_dffe <= ( division_by_zero_dffe(1 DOWNTO 0) & division_by_zero_w);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe1_0 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe1_0 <= data_exp_bus_w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe1_1 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe1_1 <= exp_dffe1_0;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe1_10 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe1_10 <= exp_dffe1_9;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe1_11 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe1_11 <= exp_dffe1_10;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe1_12 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe1_12 <= exp_dffe1_11;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe1_13 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe1_13 <= exp_dffe1_12;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe1_14 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe1_14 <= exp_dffe1_13;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe1_2 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe1_2 <= exp_dffe1_1;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe1_3 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe1_3 <= exp_dffe1_2;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe1_4 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe1_4 <= exp_dffe1_3;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe1_5 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe1_5 <= exp_dffe1_4;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe1_6 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe1_6 <= exp_dffe1_5;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe1_7 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe1_7 <= exp_dffe1_6;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe1_8 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe1_8 <= exp_dffe1_7;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe1_9 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe1_9 <= exp_dffe1_8;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe2_0 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe2_0 <= wire_bias_adjustment_w_result_range267w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe2_1 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe2_1 <= exp_dffe2_0;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN exp_dffe2_2 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN exp_dffe2_2 <= exp_dffe2_1;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinite_dffe <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinite_dffe <= ( infinite_dffe(1 DOWNTO 0) & infinite_w);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN infinite_input_dffe <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN infinite_input_dffe <= (exp_one_w AND man_zero_w);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN intercept_dffe <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN intercept_dffe <= wire_mux1_w_result_range183w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_dffe_0 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_dffe_0 <= data_man_bus_w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_dffe_1 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_dffe_1 <= man_dffe_0;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_dffe_10 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_dffe_10 <= man_dffe_9;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_dffe_11 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_dffe_11 <= man_dffe_10;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_dffe_2 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_dffe_2 <= man_dffe_1;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_dffe_3 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_dffe_3 <= man_dffe_2;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_dffe_4 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_dffe_4 <= man_dffe_3;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_dffe_5 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_dffe_5 <= man_dffe_4;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_dffe_6 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_dffe_6 <= man_dffe_5;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_dffe_7 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_dffe_7 <= man_dffe_6;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_dffe_8 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_dffe_8 <= man_dffe_7;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN man_dffe_9 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN man_dffe_9 <= man_dffe_8;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN nan_dffe <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN nan_dffe <= ( nan_dffe(1 DOWNTO 0) & nan_w);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN nan_input_dffe <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN nan_input_dffe <= (exp_one_w AND (man_non_zero_w OR man_one_w));
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN result_output_dffe <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN result_output_dffe <= mux_3_res_w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN sign_dffe <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN sign_dffe <= ( sign_dffe(17 DOWNTO 0) & data_sign_w);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN underflow_dffe <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN underflow_dffe <= ( underflow_dffe(1 DOWNTO 0) & underflow_w);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN x_dffe_0 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN x_dffe_0 <= x_0_w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN x_dffe_1 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN x_dffe_1 <= x_dffe_0;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN x_dffe_2 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN x_dffe_2 <= x_dffe_1;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN x_dffe_3 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN x_dffe_3 <= x_dffe_2;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN x_dffe_4 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN x_dffe_4 <= x_1_w;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN x_dffe_5 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN x_dffe_5 <= x_dffe_4;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN x_dffe_6 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN x_dffe_6 <= x_dffe_5;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN x_dffe_7 <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN x_dffe_7 <= x_dffe_6;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN zero_dffe <= (OTHERS => '0');
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN zero_dffe <= ( zero_dffe(1 DOWNTO 0) & zero_w);
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock, aclr)
	BEGIN
		IF (aclr = '1') THEN zero_input_dffe <= '0';
		ELSIF (clock = '1' AND clock'event) THEN 
			IF (clk_en = '1') THEN zero_input_dffe <= (exp_zero_w AND ((man_one_w OR man_non_zero_w) OR man_zero_w));
			END IF;
		END IF;
	END PROCESS;
	approx_sub :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "SUB",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTH => 7
	  )
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => approx_c_w,
		datab => approx_mx_w,
		result => wire_approx_sub_result
	  );
	wire_bias_adjustment_datab <= ( gnd_w & exp_dffe1_14);
	wire_bias_adjustment_w_result_range267w <= wire_bias_adjustment_result(7 DOWNTO 0);
	bias_adjustment :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "SUB",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTH => 9,
		lpm_hint => "ONE_INPUT_IS_CONSTANT=YES"
	  )
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => const_bias_adj_w,
		datab => wire_bias_adjustment_datab,
		result => wire_bias_adjustment_result
	  );
	modified_add :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "SUB",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTH => 13
	  )
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => approx_y_w,
		datab => c_offset_w,
		result => wire_modified_add_result
	  );
	wire_cmpr6_dataa <= ( gnd_w & exp_dffe1_14);
	cmpr6 :  lpm_compare
	  GENERIC MAP (
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTH => 9
	  )
	  PORT MAP ( 
		aclr => aclr,
		ageb => wire_cmpr6_ageb,
		clken => clk_en,
		clock => clock,
		dataa => wire_cmpr6_dataa,
		datab => const_bias_adj_w
	  );
	inner_mult0 :  lpm_mult
	  GENERIC MAP (
		LPM_PIPELINE => 3,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTHA => 24,
		LPM_WIDTHB => 13,
		LPM_WIDTHP => 37,
		lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=AUTO"
	  )
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => man_out_0_w,
		datab => x_0_w,
		result => wire_inner_mult0_result
	  );
	inner_mult1 :  lpm_mult
	  GENERIC MAP (
		LPM_PIPELINE => 3,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTHA => 24,
		LPM_WIDTHB => 25,
		LPM_WIDTHP => 49,
		lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=AUTO"
	  )
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => man_out_1_w,
		datab => x_1_w,
		result => wire_inner_mult1_result
	  );
	outer_mult0 :  lpm_mult
	  GENERIC MAP (
		LPM_PIPELINE => 3,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTHA => 25,
		LPM_WIDTHB => 13,
		LPM_WIDTHP => 38,
		lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=AUTO"
	  )
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => wire_diff_adder_0_result(24 DOWNTO 0),
		datab => x_dffe_3,
		result => wire_outer_mult0_result
	  );
	outer_mult1 :  lpm_mult
	  GENERIC MAP (
		LPM_PIPELINE => 3,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTHA => 25,
		LPM_WIDTHB => 25,
		LPM_WIDTHP => 50,
		lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=AUTO"
	  )
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		dataa => wire_diff_adder_1_result(24 DOWNTO 0),
		datab => x_dffe_7,
		result => wire_outer_mult1_result
	  );
	loop17 : FOR i IN 0 TO 31 GENERATE
		loop18 : FOR j IN 0 TO 15 GENERATE
			wire_mux1_data_2d(i, j) <= table_bus_full_w(i*16+j);
		END GENERATE loop18;
	END GENERATE loop17;
	wire_mux1_w_result_range183w <= wire_mux1_result(9 DOWNTO 0);
	mux1 :  lpm_mux
	  GENERIC MAP (
		LPM_PIPELINE => 1,
		LPM_SIZE => 32,
		LPM_WIDTH => 16,
		LPM_WIDTHS => 5
	  )
	  PORT MAP ( 
		aclr => aclr,
		clken => clk_en,
		clock => clock,
		data => wire_mux1_data_2d,
		result => wire_mux1_result,
		sel => data_man_bus_w(22 DOWNTO 18)
	  );

 END RTL; --kn_kalman_inv_altfp_inv_rhc
--VALID FILE


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY kn_kalman_inv IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END kn_kalman_inv;


ARCHITECTURE RTL OF kn_kalman_inv IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (31 DOWNTO 0);



	COMPONENT kn_kalman_inv_altfp_inv_rhc
	PORT (
			clock	: IN STD_LOGIC ;
			data	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			result	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	result    <= sub_wire0(31 DOWNTO 0);

	kn_kalman_inv_altfp_inv_rhc_component : kn_kalman_inv_altfp_inv_rhc
	PORT MAP (
		clock => clock,
		data => data,
		result => sub_wire0
	);



END RTL;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "UNUSED"
-- Retrieval info: CONSTANT: LPM_HINT STRING "UNUSED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "altfp_inv"
-- Retrieval info: CONSTANT: PIPELINE NUMERIC "20"
-- Retrieval info: CONSTANT: ROUNDING STRING "TO_NEAREST"
-- Retrieval info: CONSTANT: WIDTH_EXP NUMERIC "8"
-- Retrieval info: CONSTANT: WIDTH_MAN NUMERIC "23"
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: USED_PORT: data 0 0 32 0 INPUT NODEFVAL "data[31..0]"
-- Retrieval info: CONNECT: @data 0 0 32 0 data 0 0 32 0
-- Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT NODEFVAL "result[31..0]"
-- Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_inv.vhd TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_inv.qip TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_inv.bsf TRUE TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_inv_inst.vhd TRUE TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_inv.inc FALSE TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL kn_kalman_inv.cmp TRUE TRUE
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX NUMERIC "1"
-- Retrieval info: LIB_FILE: lpm
