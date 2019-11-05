----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/02/2018 02:41:13 PM
-- Design Name: 
-- Module Name: two_comp3 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity two_comp3 is
    Port ( in1 : in STD_LOGIC_VECTOR (1 downto 0);
           in2 : in STD_LOGIC_VECTOR (1 downto 0);
           eq_0 : out STD_LOGIC;
           gr_0 : out STD_LOGIC;
           ls_0 : out STD_LOGIC);
end two_comp3;

architecture Behavioral of two_comp3 is
begin

with in1=in2 select 
eq_0<= '1' when true,
        '0' when others;
    
with in1>in2 select
    gr_0<='1' when true,
    '0' when others;

with in1<in2 select 
    ls_0<='1' when true,
    '0' when others;

end Behavioral;
