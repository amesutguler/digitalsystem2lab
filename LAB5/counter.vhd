----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:22:59 12/14/2022 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
	Port(
			clk : in std_logic;
			rst : in std_logic;
			up_down : in std_logic;
			enable : in std_logic;
			u_limit : in std_logic_vector(3 downto 0);
			result : out std_logic_vector(3 downto 0);
			en_out : out std_logic
			);
end counter;

architecture Behavioral of counter is
signal cnt : unsigned (3 downto 0) := "0000";
signal upper : unsigned (3 downto 0);
signal en_tmp : std_logic := '0';
begin
	upper <= unsigned(u_limit);
	process(clk, rst, enable, up_down, u_limit, cnt, upper)
		begin
			if( clk = '1' and clk'event) then
				-- check the reset 
				if ( rst = '1' and up_down = '1') then
					cnt <= "0000";
				elsif ( rst = '1' and up_down = '0') then
					cnt <= upper;
				
				-- no reset,continue
				elsif ( enable = '1') then
					--if goin up
					if (up_down = '1') then
						if(cnt=upper) then 	
							cnt<="0000";						
						else 
							cnt <= cnt + 1; 
						end if;
					--else goin down
					else
						if(cnt="0000")then
							cnt <= upper;						
						else
							cnt <= cnt - 1;
						end if;
					end if;
				end if;
				if(cnt = upper - 1) then 
					if(up_down='1' and enable='1')then
					en_out<='1';
					else
					en_out<='0';
					end if;
				else
					if(up_down='1')then
					en_out<='0';
					elsif(cnt="0001" and up_down='0' and enable='1') then
					en_out<='1';
					else
					en_out<='0';
					end if;
				end if;
		   end if;
	end process;
	result <= std_logic_vector(cnt);
end Behavioral;

