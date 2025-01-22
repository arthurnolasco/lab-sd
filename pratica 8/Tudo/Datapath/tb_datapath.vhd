library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity tb_Datapath is
end tb_Datapath;
architecture teste of tb_Datapath is
component Datapath is 
port( 
 Entrada : in std_logic_vector(3 downto 0);
 Fio_Load_E : in std_logic;
 Fio_Reset_MA : in std_logic;
 Fio_Descendo : in std_logic_vector(0 downto 0);
 Fio_Subindo : in std_logic_vector(0 downto 0);
 Fio_Atualizar : in std_logic;
 Fio_Clock : in std_logic;
 
 Fio_Maior : out std_logic;
 Fio_Igual : out std_logic;
 Fio_Menor : out std_logic;
 Subindo : out std_logic_vector(0 downto 0);
 Descendo : out std_logic_vector(0 downto 0);
 Media_DSP_7Seg : out std_logic_vector(6 downto 0)
 );
end component;
signal fio_Cl: std_logic :='0'; 
signal fio_Re: std_logic;
signal fio_e: std_logic_vector(3 downto 0);
signal fio_l,fio_a, fio_ma, fio_ig, fio_me: std_logic;
signal fio_di, fio_si, fio_so, fio_do: std_logic_vector(0 downto 0);
signal fio_7seg: std_logic_vector(6 downto 0);
begin
instancia_Datapath: Datapath port map(fio_e,Fio_l, fio_Re, fio_di, fio_si, fio_a, fio_cl, fio_ma, fio_ig, fio_me, fio_so, fio_do,fio_7seg);
-- Dados de entrada de 4 bits sÃ£o expressos em "hexadecimal" usando "x":
fio_Cl<= not fio_Cl after 5ns;
fio_Re<='1','0' after 20ns;
fio_l<='0','1' after 15ns;
fio_a<='0','1' after 15ns;
fio_e<=x"3",x"4" after 35ns,x"2" after 75ns;
fio_si(0)<=fio_ma;
fio_di(0)<=fio_me;

end teste;
