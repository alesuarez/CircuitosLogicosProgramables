library IEEE;
use IEEE.std_logic_1164.all;

entity negador_tb is
end; 

architecture negador_tb_arq of negador_tb is
	component negador is 
	port(
		a_i: in std_logic;
		b_o: out std_logic
	);
	end component;

	signal a_tb: std_logic := '0';
	signal b_tb: std_logic;
begin
	a_tb <= '1' after 50 ns, '0' after 150 ns; -- excitacion de la entrada
	-- DUT : Device under test
	DUT: negador
		port map(
			a_i => a_tb, -- conexion de mi componente con el componente test
			b_o => b_tb  -- 
		);
end;