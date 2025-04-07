library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_code is
    Port ( 
				sel : in STD_LOGIC_VECTOR (2 downto 0);
            enable : in STD_LOGIC;  
            output : out STD_LOGIC_VECTOR (7 downto 0);
			   hex0 : out STD_LOGIC_VECTOR (6 downto 0) 
			 );
end test_code;

architecture dataflow of test_code is 

signal tmp : std_logic_vector(3 DOWNTO 0);

begin
	
	tmp <= (sel & enable);
	--SECTION A: What does this do?  and how?
	--this rotates a 1 bit value through an 8 bit binary value, serves as a 3-to-8 encoder
		with tmp select 
			output <= "00000001" when "0001", 
						 "00000010" when "0011", 
						 "00000100" when "0101", 
						 "00001000" when "0111", 
						 "00010000" when "1001", 
						 "00100000" when "1011", 
						 "01000000" when "1101", 
						 "10000000" when "1111", 
						 "00000001" when others;
		  
		 --SECTION B: what does this do? and how?
		 --this sends a bit value to hex display to show decimal value
		 hex0 <=  "1000000" when sel = "000" and enable = '1' else   
					 "1111001" when sel = "001" and enable = '1' else   
					 "0100100" when sel = "010" and enable = '1' else  
					 "0110000" when sel = "011" and enable = '1' else  
					 "0011001" when sel = "100" and enable = '1' else  
					 "0010010" when sel = "101" and enable = '1' else   
					 "0000010" when sel = "110" and enable = '1' else     
					 "1111000" when sel = "111" and enable = '1'      
					 else "1111111"; 
	 
	 
end dataflow;
