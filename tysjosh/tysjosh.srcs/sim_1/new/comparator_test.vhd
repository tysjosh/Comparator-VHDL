----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/13/2017 05:49:19 PM
-- Design Name: 
-- Module Name: comparator_test - Behavioral
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

entity comparator_testbench is

end comparator_testbench;


architecture Behavioral of comparator_testbench is

component comparator is
Port ( in1 : in STD_LOGIC;
       in2 : in STD_LOGIC;
       eq_0 : out STD_LOGIC;
       gr_0 : out STD_LOGIC;
       ls_0 : out STD_LOGIC);
end component comparator;

signal in1, in2 : std_logic :='0';
signal eq_0, gr_0, ls_0 : std_logic;
begin

UUT : comparator
Port map ( in1 => in1,
            in2 => in2,
            eq_0 => eq_0,
            ls_0 => ls_0,
            gr_0 => gr_0);

stimuli : process
begin
in1 <='0'; in2 <='0';
wait for 20ns;
assert (eq_0 ='1') and (ls_0='0')and (gr_0='0')report "test failed for 00" severity error;
in1 <='1'; in2 <='0';
wait for 20ns;
assert (eq_0 ='0') and (ls_0='0')and (gr_0='1')report "test failed for 10" severity error;
in1 <='0'; in2 <='1';
wait for 20ns;
assert (eq_0 ='0') and (ls_0='1')and (gr_0='0')report "test failed for 01" severity error;
in1 <='1'; in2 <='1';
wait for 20ns;
assert (eq_0 ='1') and (ls_0='0')and (gr_0='0')report "test failed for 11" severity error;

end process;

end Behavioral;
