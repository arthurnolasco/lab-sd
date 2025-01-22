library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Reg_MA is
 generic (
 W : integer := 32
 );
 port (
 CLK : in std_logic;
 RESET : in std_logic;
 INPUT : in std_logic_vector(W - 1 downto 0);
 OUTPUT : out std_logic_vector(W - 1 downto 0)
 );
end Reg_MA;
architecture arch of Reg_MA is
signal var1, var2, var3, var4 : unsigned(W - 1 downto 0);
signal soma : unsigned(W+1 downto 0);
begin
process(CLK, RESET) is
begin
if (RESET = '1') then
var1 <= to_unsigned(0,W);
var2 <= to_unsigned(0,W);
var3 <= to_unsigned(0,W);
var4 <= to_unsigned(0,W);
elsif (rising_edge(CLK)) then
var1 <= unsigned(INPUT(W-1 downto 0));
var2 <= var1;
var3 <= var2;
var4 <= var3;
end if;
soma<=("00"&var1) + ("00"&var2) + ("00"&var3) + ("00"&var4);
OUTPUT <= std_logic_vector(soma(W+1 downto 2));
end process;
end arch;
