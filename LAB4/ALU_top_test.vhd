--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:45:48 11/30/2022
-- Design Name:   
-- Module Name:   C:/Xilinx/ALU/ALU_top_test.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_top
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALU_top_test IS
END ALU_top_test;
 
ARCHITECTURE behavior OF ALU_top_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_top
    PORT(
         clk : IN  std_logic;
         in1 : IN  std_logic_vector(3 downto 0);
         in2 : IN  std_logic_vector(3 downto 0);
         op_sel : IN  std_logic_vector(2 downto 0);
         flag_out : OUT  std_logic_vector(2 downto 0);
         seg_out : OUT  std_logic_vector(7 downto 0);
         seg_sel : OUT  std_logic_vector(7 downto 0);
			final_out : out STD_LOGIC_VECTOR (3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal in1 : std_logic_vector(3 downto 0) := (others => '0');
   signal in2 : std_logic_vector(3 downto 0) := (others => '0');
   signal op_sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal flag_out : std_logic_vector(2 downto 0);
   signal seg_out : std_logic_vector(7 downto 0);
   signal seg_sel : std_logic_vector(7 downto 0);
	signal final_out : STD_LOGIC_VECTOR (3 downto 0);

   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_top PORT MAP (
          clk => clk,
          in1 => in1,
          in2 => in2,
          op_sel => op_sel,
          flag_out => flag_out,
          seg_out => seg_out,
          seg_sel => seg_sel
        );
tb: PROCESS
	BEGIN
	
	wait for 50 ns;
	in1 <= "1000";
	in2 <= "0001";
	op_sel <= "000";
	wait for 50 ns;
	
	in1 <= "1111";
	in2 <= "0110";
	op_sel <= "001";
	wait for 50 ns;
	
	in1 <= "0000";
	in2 <= "0000";
	op_sel <= "010";
	wait for 50 ns;
	
   wait for 50 ns;
	in1 <= "1111";
	in2 <= "0000";
	op_sel <= "011";
	wait for 50 ns;
	
	in1 <= "1111";
	in2 <= "0110";
	op_sel <= "100";
	wait for 50 ns;
	
	in1 <= "0000";
	in2 <= "0000";
	op_sel <= "101";
	wait for 50 ns;
	
	wait for 50 ns;
	in1 <= "1111";
	in2 <= "0000";
	op_sel <= "110";
	wait for 50 ns;
	
	in1 <= "1111";
	in2 <= "0110";
	op_sel <= "111";
	wait for 50 ns;
	
	  WAIT;
	END PROCESS;

END;
