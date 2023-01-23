--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:59:57 12/14/2022
-- Design Name:   
-- Module Name:   C:/Xilinx/lab5final/counter_test.vhd
-- Project Name:  lab5final
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter
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
 
ENTITY counter_test IS
END counter_test;
 
ARCHITECTURE behavior OF counter_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         up_down : IN  std_logic;
         enable : IN  std_logic;
         u_limit : IN  std_logic_vector(3 downto 0);
         result : OUT  std_logic_vector(3 downto 0);
         en_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal up_down : std_logic := '0';
   signal enable : std_logic := '0';
   signal u_limit : std_logic_vector(3 downto 0) := "1111";

 	--Outputs
   signal result : std_logic_vector(3 downto 0);
   signal en_out : std_logic;


 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter PORT MAP (
          clk => clk,
          rst => rst,
          up_down => up_down,
          enable => enable,
          u_limit => u_limit,
          result => result,
          en_out => en_out
        );
	
	tb: Process
	begin
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
		clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
		clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;

	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '1';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
	
	clk <= '0';
	rst <= '0';
	up_down <= '1';
	enable <= '1';
	wait for 5 ns;
      wait;
   end process;

END;
