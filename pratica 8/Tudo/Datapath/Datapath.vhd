library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Datapath is
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
end Datapath;
architecture Arch of Datapath is
 component Reg_MA is
  generic (
   W : integer := 32
  );
  port (
   CLK : in std_logic;
   RESET : in std_logic;
   INPUT : in std_logic_vector(W - 1 downto 0);
   OUTPUT : out std_logic_vector(W - 1 downto 0)
  );
 end component;
 component Comparador is 
  generic
  (
   DATA_WIDTH : natural := 16
  );
  port 
  (
   a : in std_logic_vector ((DATA_WIDTH-1) downto 0);
   b : in std_logic_vector ((DATA_WIDTH-1) downto 0);
   maior : out std_logic;
   menor : out std_logic;
   igual : out std_logic
  );
 end component;
 component Bcd_7seg is
  port (
   entrada: in std_logic_vector (3 downto 0);
   saida: out std_logic_vector (6 downto 0)
  );
 end component;
 component RegW is
  generic(
   W: integer:=32
  );
  port(
   Load: in std_logic;
   clock: in std_logic;
   E: in std_logic_vector(W-1 downto 0);
   Q: out std_logic_vector(W-1 downto 0)
  );
 end component;
 signal Sai_a, Sai_b : std_logic_vector(3 downto 0); 
 begin
 RegistradorE: RegW generic map (4) port map(Fio_Load_E, Fio_Clock, Entrada, Sai_a);
 RegistradorMedia: Reg_MA generic map(4) port map(Fio_Clock, Fio_Reset_MA, Sai_a, Sai_b);
 Comp: Comparador generic map(4) port map(Sai_a, Sai_b, Fio_Maior, Fio_Menor, Fio_Igual);
 Led7segmentos: BCD_7seg port map(Sai_b, Media_DSP_7Seg);
 RegistradorS: RegW generic map (1) port map(Fio_Atualizar, Fio_Clock, Fio_Subindo, Subindo);
 RegistradorD: RegW generic map (1) port map(Fio_Atualizar, Fio_Clock, Fio_Descendo, Descendo);
 end Arch;
 
 