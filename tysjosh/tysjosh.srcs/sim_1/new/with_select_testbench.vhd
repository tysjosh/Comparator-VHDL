----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/03/2018 01:09:39 AM
-- Design Name: 
-- Module Name: with_select_testbench - Behavioral
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

entity with_select_testbench is

end with_select_testbench;

architecture Behavioral of with_select_testbench is

component two_comp3 is
Port ( in1 : in STD_LOGIC_VECTOR (1 downto 0);
           in2 : in STD_LOGIC_VECTOR (1 downto 0);
           eq_0 : out STD_LOGIC;
           gr_0 : out STD_LOGIC;
           ls_0 : out STD_LOGIC);
end component two_comp3;

signal in1, in2 : std_logic_vector (1 downto 0) :=(others => '0');
signal eq_0, gr_0, ls_0 : std_logic;

begin

UUT : two_comp3
Port map ( in1 => in1,
            in2 => in2,
            eq_0 => eq_0,
            ls_0 => ls_0,
            gr_0 => gr_0);

stimuli : process
begin


in1 <="00"; in2 <="00";
wait for 20ns;
assert (eq_0 ='1') and (ls_0='0')and (gr_0='0')report "test failed for 0000" severity error;
in1 <="00"; in2 <="01";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='1')and (gr_0='0')report "test failed for 0001" severity error;
in1 <="00"; in2 <="10";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='1')and (gr_0='0')report "test failed for 0010" severity error;
in1 <="00"; in2 <="11";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='1')and (gr_0='0')report "test failed for 0011" severity error;
in1 <="01"; in2 <="00";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='0')and (gr_0='1')report "test failed for 0100" severity error;
in1 <="01"; in2 <="01";
wait for 20ns;
assert (eq_0 ='1') and (ls_0='0')and (gr_0='0')report "test failed for 0101" severity error;
in1 <="01"; in2 <="10";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='1')and (gr_0='0')report "test failed for 0110" severity error;
in1 <="01"; in2 <="11";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='1')and (gr_0='0')report "test failed for 0111" severity error;
in1 <="10"; in2 <="00";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='0')and (gr_0='1')report "test failed for 1000" severity error;
in1 <="10"; in2 <="01";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='0')and (gr_0='1')report "test failed for 1001" severity error;
in1 <="10"; in2 <="10";
wait for 20ns;
assert (eq_0 ='1') and (ls_0='0')and (gr_0='0')report "test failed for 1010" severity error;
in1 <="10"; in2 <="11";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='1')and (gr_0='0')report "test failed for 1011" severity error;
in1 <="11"; in2 <="00";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='0')and (gr_0='1')report "test failed for 1100" severity error;
in1 <="11"; in2 <="01";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='0')and (gr_0='1')report "test failed for 1101" severity error;
in1 <="11"; in2 <="10";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='0')and (gr_0='1')report "test failed for 1110" severity error;
in1 <="11"; in2 <="11";
wait for 20ns;
assert (eq_0 ='1') and (ls_0='0')and (gr_0='0')report "test failed for 1111" severity error;


wait;
end process;

end Behavioral;