----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/20/2017 06:50:35 PM
-- Design Name: 
-- Module Name: two_bit_comp2 - Behavioral
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

entity two_bit_comp2 is
    Port ( in1 : in STD_LOGIC_VECTOR (1 downto 0);
           in2 : in STD_LOGIC_VECTOR (1 downto 0);
           eq_0 : out STD_LOGIC;
           gr_0 : out STD_LOGIC;
           ls_0 : out STD_LOGIC);
end two_bit_comp2;

architecture Behavioral of two_bit_comp2 is

begin


eq_0<= '1' when (in1=in2) else
             '0';
           
gr_0<= '1' when (in1>in2) else
             '0';
   
ls_0<= '1' when (in1<in2) else
             '0';


end Behavioral;
