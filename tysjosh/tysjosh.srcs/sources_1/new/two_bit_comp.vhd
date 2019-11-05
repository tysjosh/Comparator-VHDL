----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/20/2017 05:34:54 PM
-- Design Name: 
-- Module Name: two_bit_comp - Behavioral
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

entity two_bit_comp is
    Port ( in1 : in STD_LOGIC_VECTOR (1 downto 0);
           in2 : in STD_LOGIC_VECTOR (1 downto 0);
           eq_0 : out STD_LOGIC;
           gr_0 : out STD_LOGIC;
           ls_0 : out STD_LOGIC);
end two_bit_comp;

architecture Behavioral of two_bit_comp is
signal p0,p1,p2,p3,p4,p5,p6,p7,p8,p9: std_logic;
begin


eq_0 <= p0 or p1 or p2 or p3;
 p0 <= ( (not in1(1)) and (not in1(0)) and (not in2(1)) and (not in2(0)) );
 p1 <= ( (not in1(1)) and in1(0) and (not in2(1)) and in2(0) );
 p2 <= ( in1(1) and (not in1(0)) and in2(1) and (not in2(0)) );
 p3 <= ( in1(1) and in1(0) and in2(1) and in2(0) );
ls_0 <= p4 or p5 or p6;
 p4 <= ( (not in1(0)) and in2(1) and in2(0) );
 p5 <= ( (not in1(1)) and (not in1(0)) and in2(0) );
 p6 <= ( (not in1(1)) and in2(1));
gr_0 <= p7 or p8 or p9;
 p7 <= ( in1(1) and in1(0) and (not in2(0)) );
 p8 <= ( in1(1) and (not in2(1)) );
 p9 <= ( in1(0) and (not in2(1)) and (not in2(0)) );


end Behavioral;
