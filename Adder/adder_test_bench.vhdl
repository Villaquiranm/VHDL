LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY adder_test_bench IS
END adder_test_bench;
ARCHITECTURE behavior OF adder_test_bench is
	
	COMPONENT full_adder_vhdl_code
	PORT(
	A 			: 	IN std_logic;
	B 			: 	IN std_logic;
	Cin 		: 	IN std_logic;
	S 			: 	OUT std_logic;
	Cout 		: 	OUT std_logic
	);
	END COMPONENT;
	
	--Inputs
	signal A 	: std_logic := '0';
	signal B 	: std_logic := '0';
	signal Cin	: std_logic := '0';
	
	--Outputs
	signal S 	: std_logic;
	signal Cout : std_logic;
	
	BEGIN
	uut: full_adder_vhdl_code PORT MAP(
	A 		=> A,
	B 		=> B,
	Cin 	=> Cin,
	S 		=> S,
	Cout 	=> Cout
	);
	--Stimulus
	stim_proc: process
	begin
	wait for 100 ns;
	A 		<= '1';
	B 		<= '0';
	Cin 	<= '0';
	
	wait for 10 ns;
	A 		<= '0';
	B 		<= '1';
	Cin 	<= '0';
	
	wait for 10 ns;
	A 		<= '1';
	B 		<= '1';
	Cin 	<= '0';
	
	wait for 10 ns;
	A 		<= '0';
	B 		<= '0';
	Cin 	<= '1';
	
	wait for 10 ns;
	
	A 		<= '1';
	B 		<= '0';
	Cin 	<= '1';
	
	wait for 10 ns;
	A 		<= '0';
	B 		<= '1';
	Cin 	<= '1';
	
	wait for 10 ns;
	
	A 		<= '1';
	B 		<= '1';
	Cin 	<= '1';
	
	wait for 10 ns;
	
	end process;
END;
