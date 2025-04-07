--------NAND GATE-------

library ieee;
use ieee.std_logic_1164.all;

entity Nand_1 is			--two local inputs, one local output
port	(
			nand_i1 : in std_logic;
			nand_i2 : in std_logic;
			nand_o1 : out std_logic
		);
end Nand_1;


architecture dataflow of Nand_1 is
begin
		
		nand_o1 <= nand_i1 NAND nand_i2;	--simple NAND logic
		
end dataflow;

--------NAND GATE-------


--------main--------

library ieee;
use ieee.std_logic_1164.all;

entity NandOnlyOrV is	--two external inputs, one external output
port	(
			A : in std_logic;
			B : in std_logic;
			X : out std_logic
		);
end NandOnlyOrV;

architecture structure of NandOnlyOrV is
	signal A_Local, B_Local : std_logic;	--local signal designation to hold internal inputs externally
	component Nand_1
		port	(
					nand_i1 : in std_logic;		--bring NAND internal ports over
					nand_i2 : in std_logic;
					nand_o1 : out std_logic
				);
	end component;
	begin
		u1: Nand_1 port map (nand_i1 => A, nand_i2 => A, nand_o1 => A_Local);	--port first NAND ports to External A and local A output
		u2: Nand_1 port map (nand_i1 => B, nand_i2 => B, nand_o1 => B_Local);	--port second NAND ports to External B and local B output
		u3: Nand_1 port map (nand_i1 => A_Local, nand_i2 => B_Local, nand_o1 => X);	--NAND the local A output, local B output, port to external X output
end structure;

--------main--------