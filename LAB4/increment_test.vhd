--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:22:54 11/28/2022
-- Design Name:   
-- Module Name:   C:/Xilinx/ALU/increment_test.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: increment
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
 
ENTITY increment_test IS
END increment_test;
 
ARCHITECTURE behavior OF increment_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT increment
    PORT(
         in1 : IN  std_logic_vector(3 downto 0);
         carry : OUT  std_logic;
         out1 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal carry : std_logic;
   signal out1 : std_logic_vector(3 downto 0);
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: increment PORT MAP (
          in1 => in1,
          carry => carry,
          out1 => out1
        );
tb: PROCESS
	BEGIN
	
	wait for 50 ns;
	
	in1 <= "1111";
	wait for 50 ns;
	
	in1 <= "1110";
	wait for 50 ns;
	
	in1 <= "0000";
	wait for 50 ns;
	
	in1 <= "0001";
	wait for 50 ns;
	
	in1 <= "0010";
	wait for 50 ns;
	  WAIT;
   END PROCESS;

END;  


