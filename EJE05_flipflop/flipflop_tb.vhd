library IEEE;
use IEEE.std_logic_1164.all;

entity negador_tb is
end; 

architecture negador_tb_arq of negador_tb is
	component flipflop is 
		port(
			D: in std_logic;
			ena: in std_logic;
			rst: in std_logic;
			clk: in std_logic;
			Q: out std_logic
		);
	end component;

	signal D_tb:   std_logic := '0';
	signal ena_tb: std_logic := '1';
	signal rst_tb: std_logic := '0';
	signal clk_tb: std_logic := '0';
	signal Q_tb: std_logic;
begin
	a_tb <= '1' after 50 ns, '0' after 150 ns; -- excitacion de la entrada
	-- DUT : Device under test
	DUT: flipflop
		port(
			D => D_tb,
			ena => ena_tb,
			rst => rst_tb,
			clk => clk_tb,
			Q => Q_tb
		);
end;