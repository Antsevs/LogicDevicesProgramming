library ieee;
use ieee.std_logic_1164.all;

entity combfcnVDHL is   --defines inputs and outputs
port (
a, b, c : in std_logic; 
x, y : out std_logic 
);
end combfcnVDHL; 

architecture dataflow of combfcnVDHL is	--architecture *name in *VHDL filename
begin													--logic within entity
x <= (not a and not b and c) or (not a and b and not c) or
(a and b and not c) or (a and b and c);--add not after first and
y <= (not a and not b and not c) or (a and not b and c) or
(a and b and not c);
end dataflow;