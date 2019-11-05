----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/13/2017 05:09:52 PM
-- Design Name: 
-- Module Name: comparator - Behavioral
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

entity comparator is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           eq_0 : out STD_LOGIC;
           gr_0 : out STD_LOGIC;
           ls_0 : out STD_LOGIC);
end comparator;

architecture Behavioral of comparator is

begin
eq_0 <= in1 xnor in2;
gr_0 <= in1 and not in2;
ls_0 <= in2 and not in1;

end Behavioral;
