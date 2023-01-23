--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:39:05 11/09/2022
-- Design Name:   
-- Module Name:   C:/Xilinx/LAB3/findx_test.vhd
-- Project Name:  LAB3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Find_X
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
 
ENTITY findx_test IS
END findx_test;
 
ARCHITECTURE behavior OF findx_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Find_X
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         X : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';

 	--Outputs
   signal X : std_logic;
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Find_X PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          X => X
        );
	
	process
	begin
		wait for 10 ns;
		A<= '0';
		B<= '1';
		C<= '1';
		D<= '1';
		wait;
	end process;
END;
