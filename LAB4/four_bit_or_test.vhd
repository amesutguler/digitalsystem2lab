--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:17:10 11/26/2022
-- Design Name:   
-- Module Name:   C:/Xilinx/ALU/four_bit_or_test.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_or
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
 
ENTITY four_bit_or_test IS
END four_bit_or_test;
 
ARCHITECTURE behavior OF four_bit_or_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_or
    PORT(
         in1 : IN  std_logic_vector(3 downto 0);
         in2 : IN  std_logic_vector(3 downto 0);
         OR_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic_vector(3 downto 0) := (others => '0');
   signal in2 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal OR_out : std_logic_vector(3 downto 0);
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_or PORT MAP (
          in1 => in1,
          in2 => in2,
          OR_out => OR_out
        );
   tb: PROCESS
	BEGIN
	
	wait for 50 ns;
	in1 <= "1111";
	in2 <= "0000";
	wait for 50 ns;
	
	in1 <= "1111";
	in2 <= "0110";
	wait for 50 ns;
	
	in1 <= "0000";
	in2 <= "0000";
	wait for 50 ns;
	  WAIT;
   END PROCESS;


END;
