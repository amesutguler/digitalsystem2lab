----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:01:54 11/28/2022 
-- Design Name: 
-- Module Name:    four_bit_subtract - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_bit_subtract is
Port ( in1 : in  STD_LOGIC_VECTOR (3 downto 0);
           in2 : in  STD_LOGIC_VECTOR (3 downto 0);
           sout : out  STD_LOGIC_VECTOR (3 downto 0));
           
end four_bit_subtract;

architecture Behavioral of four_bit_subtract is
component full_adder
	 Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sout : out  STD_LOGIC);
end component;
component increment
	 Port ( in1 : IN std_logic_vector(3 downto 0);          
			  carry : OUT std_logic;
			  out1 : OUT std_logic_vector(3 downto 0));
																	
end component;

signal notIN2, upped : std_logic_vector(3 downto 0);
signal w1,w2,w3,carry0,carry1 : std_logic;
begin
notIN2 <= not in2;
inc : increment port map(notIN2, carry0, upped);  

U1 : full_adder port map(in1(0), upped(0), '0', w1, sout(0));
U2 : full_adder port map(in1(1), upped(1), w1, w2, sout(1));
U3 : full_adder port map(in1(2), upped(2), w2, w3, sout(2));
U4 : full_adder port map(in1(3), upped(3), w3, carry1, sout(3));
end Behavioral;

