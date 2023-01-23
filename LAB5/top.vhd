----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:11:20 12/15/2022 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is
	Port (
			clk : in std_logic;
			enable : in std_logic;
			up_down : in std_logic;
			reset : in std_logic;
			--upper_limit : in std_logic_vector(3 downto 0);
			seg_out : out  STD_LOGIC_VECTOR (7 downto 0);
         seg_sel : out  STD_LOGIC_VECTOR (7 downto 0);
			ignore : out std_logic
			);
			
end top;

architecture Behavioral of top is
	COMPONENT clock_divider_one_hz
		PORT(
			clk : IN std_logic;          
			clock_out : OUT std_logic
			);
		END COMPONENT;
		
	COMPONENT counter
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		up_down : IN std_logic;
		enable : IN std_logic;
		u_limit : IN std_logic_vector(3 downto 0);          
		result : OUT std_logic_vector(3 downto 0);
		en_out : OUT std_logic
		);
	END COMPONENT;
	COMPONENT seven_four
	PORT( 
		in1 : in  STD_LOGIC_VECTOR (3 downto 0);
		in2 : in  STD_LOGIC_VECTOR (3 downto 0);
		in3 : in  STD_LOGIC_VECTOR (3 downto 0);
		in4 : in  STD_LOGIC_VECTOR (3 downto 0);
		clk : in  STD_LOGIC;
	   dp  : out  STD_LOGIC;
		sel : out  STD_LOGIC_VECTOR (3 downto 0);
		segment : out  STD_LOGIC_VECTOR (6 downto 0)
		);
	end component;
signal the_clock, w_sec1_to_sec10,  w_sec10_to_min1,  w_min1_to_min10, spill, w4 : std_logic;
signal res_sec1, res_sec10, res_min1, res_min10 : std_logic_vector(3 downto 0);
signal w5 : STD_LOGIC_VECTOR (6 downto 0);
signal seg_sel_4 : STD_LOGIC_VECTOR (3 downto 0);
begin
-- instantsiate the one hz clock
	one_hz_clock : clock_divider_one_hz PORT MAP(clk,the_clock);

-- sec1 sec10 min1 min10
	sec1: counter PORT MAP(the_clock,reset,up_down,enable,"1001",res_sec1 ,w_sec1_to_sec10);
	sec10: counter PORT MAP(the_clock,reset,up_down,w_sec1_to_sec10,"0101",res_sec10 ,w_sec10_to_min1);
	min1: counter PORT MAP(the_clock,reset,up_down,w_sec10_to_min1,"1001",res_min1 , w_min1_to_min10);
	min10: counter PORT MAP(the_clock,reset,up_down,w_min1_to_min10,"0101",res_min10 ,spill);
ignore <= spill;
-- seven segment display
	A2 : seven_four port map (res_sec1, res_sec10, res_min1, res_min10, clk, w4, seg_sel_4, w5);
	seg_out <= (w5 & w4);
	seg_sel <= "1111" & seg_sel_4;


end Behavioral;

