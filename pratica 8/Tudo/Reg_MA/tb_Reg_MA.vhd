library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
entity tb_Reg_MA is
end tb_Reg_MA;
architecture teste of tb_Reg_MA is
component Reg_MA is
generic (
 W : natural := 32
 );
 port (
 CLK : in std_logic;
 RESET : in std_logic;
 INPUT : in std_logic_vector(W - 1 downto 0);
 OUTPUT : out std_logic_vector(W - 1 downto 0)
 );
end component;
signal fio_clk: std_logic:='0';
signal fio_R: std_logic; 
signal fio_I, fio_O: std_logic_vector(3 downto 0);
begin
instancia_Reg_MA: Reg_MA generic map (W=>4) port
map(CLK=>fio_clk, RESET=>fio_R, INPUT=>fio_I, OUTPUT=>fio_O); 
-- x nas próximas linhas: os vetores de bits estão expressos em base hexadecimal
fio_clk <=not fio_clk after 25ns;
fio_R <= '1', '0' after 5ns;
fio_I <= x"1", x"f" after 300ns;
end teste;
