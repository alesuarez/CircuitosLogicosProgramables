library IEEE;
use IEEE.std_logic_1164.all;

entity mux_tb is
end; 

architecture mux_tb_arq of mux_tb is
	component mux is 
		port(
			m1_i: in std_logic;
			m2_i: in std_logic;
			s_i: in std_logic;
			o_o: out std_logic
	);
	end component;

	signal m1_tb: std_logic := '0';
	signal m2_tb: std_logic := '1';
	signal s_tb: std_logic := '0';
	signal o_tb: std_logic;
begin
	m1_tb <= '1' after 100 ns, '0' after 200 ns;
	m2_tb <= '0' after 100 ns, '1' after 200 ns;
	s_tb <= '1' after 50 ns, '0' after 100 ns;
	DUT: mux
		port map(
			m1_i => m1_tb,
			m2_i => m2_tb,
			s_i => s_tb,
			o_o => o_tb
		);
end;