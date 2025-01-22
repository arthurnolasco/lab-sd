library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Sinalizador is
 port (
 E : in std_logic_vector(3 downto 0);
 RESET : in std_logic;
 CLOCK : in std_logic;
 
 Subindo : out std_logic_vector(0 downto 0);
 Descendo : out std_logic_vector(0 downto 0);
 Media_DSP_7Seg : out std_logic_vector(6 downto 0)
 );
end Sinalizador;
architecture Arch of Sinalizador is
 component Controladora is
 port (
  CLOCK : in std_logic; -- clock input
  RESET : in std_logic; -- reset input
  MAIOR : in std_logic; -- control input
  IGUAL : in std_logic; -- data inputs
  MENOR : in std_logic;
 
  LOAD_E : out std_logic; -- data output
  RESET_MA : out std_logic;
  SUBINDO : out std_logic_vector(0 downto 0);
  DESCENDO : out std_logic_vector(0 downto 0);
  ATUALIZE : out std_logic
);
 end component;
 component Datapath is
 port (
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
 component DivisorClock is
	port 
	(
		CLOCK_50MHz : in std_logic;
		reset	      : in std_logic;
		CLOCK_1Hz   : out std_logic
	);
	end component;
 signal lo_clk : std_logic;
 signal Sai_Ma, Sai_Ig, Sai_Me, Ent_Lo, Ent_At, Ent_res_MA : std_logic;
 signal Ent_sub, Ent_des : std_logic_vector(0 downto 0); 
 begin
 --para compilação no modelsim, comentar a linha 62 e trocar o 'lo_clk' por CLOCK nas linhas 63 e 64
 clk: DivisorClock port map(CLOCK, RESET, lo_clk);
 Controle: Controladora port map(lo_clk, RESET,Sai_Ma, Sai_Ig, Sai_Me, Ent_lo,Ent_res_MA,Ent_sub,Ent_des, Ent_at);
 ViaDados: Datapath port map(E, Ent_Lo, Ent_res_MA, Ent_des, Ent_sub, Ent_at, lo_clk, Sai_Ma, Sai_Ig, Sai_Me,subindo, descendo,Media_DSP_7Seg);
 end Arch;
 
 