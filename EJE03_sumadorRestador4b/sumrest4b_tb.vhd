library IEEE;
use IEEE.std_logic_1164.all;

entity sumres4b_tb is
end;

architecture sumres4b_tb_arq of sumres4b_tb is 
	component sumres4b is 
		port(
			a_i: 	in std_logic_vector(3 downto 0);
			b_i: 	in std_logic_vector(3 downto 0);
			sr_i: 	in std_logic;
			s_o: 	out std_logic_vector(3 downto 0);
			co_o: 	out std_logic
		);
	end component;

	signal a_tb, b_tb: std_logic_vector(3 downto 0) := "0000";
	signal sr_tb : std_logic := '0';
	signal s_tb: std_logic_vector(3 downto 0);
	signal co_tb : std_logic;
begin
	
	a_tb <= "0111" after 100 ns, "1111" after 200 ns;
	b_tb <= "0011" after 100 ns, "0001" after 200 ns;
	sr_tb <= '1' after 100 ns;

	DUT: sumres4b 
		port map(
			a_i  => a_tb,
			b_i  => b_tb,
			sr_i => sr_tb,
			s_o  => s_tb,
			co_o => co_tb
		);
end;