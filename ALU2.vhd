LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY ALU2 IS
PORT (Clock : IN STD_LOGIC ;
A ,B : IN UNSIGNED(7 DOWNTO 0);
OP: IN UNSIGNED(15 DOWNTO 0);
Neg: OUT STD_LOGIC;
R1: OUT UNSIGNED(3 DOWNTO 0);--lower (LSB) 4bits of 8bits Result
R2: OUT UNSIGNED(3 DOWNTO 0));--higher (MSB) 4bits of 8bits Result
END ALU2;

ARCHITECTURE Behavior OF ALU2 IS
SIGNAL Reg1, Reg2, Result: UNSIGNED(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL Reg4: UNSIGNED(0 TO 7);

BEGIN
	Reg1 <= A;
	Reg2 <= B;
	
	PROCESS (Clock,OP,A,B)
	BEGIN
	IF (rising_edge(Clock)) THEN
		CASE OP IS
			WHEN "0000000000000001" => --funtion 1 Shift A to right by two bits, input bit = 1 (SHR) 
				neg <= '0';
				Result(0) <= Reg1(2);
				Result(1) <= Reg1(3);
				Result(2) <= Reg1(4);
				Result(3) <= Reg1(5);
				Result(4) <= Reg1(6);
				Result(5) <= Reg1(7);
				Result(6) <= '1';
				Result(7) <= '1';
			WHEN "0000000000000010"  => --function 2 Produce the difference of A and B and then increment by 4
				if ((Reg1 + "00000100") < Reg2) then
					neg <= '1';
					Result <= (Reg2 - (Reg1 + "00000100"));
				else
					neg <= '0';
					Result <= ((Reg1 + "00000100") - Reg2);
				end if;
			WHEN "0000000000000100" =>--Function 3 Find the greater value of A and B and produce the results ( Max(A,B) )
				if (Reg1 > Reg2) then
					neg <= '0';
					Result <= Reg1;
				else 
					neg <= '0';
					Result <= Reg2;
				end if;
			WHEN "0000000000001000" =>--Function 4 Swap the upper 4 bits of A by the lower 4 bits of B
				neg <= '0';
				Result(0) <= Reg1(0);
				Result(1) <= Reg1(1);
				Result(2) <= Reg1(2);
				Result(3) <= Reg1(3);
				Result(4) <= Reg2(3);
				Result(5) <= Reg2(2);
				Result(6) <= Reg2(1);
				Result(7) <= Reg2(0);
			WHEN "0000000000010000" =>--Function 5 Increment A by 1
				neg <= '0';
				Result <= Reg1 + "00000001";
			WHEN "0000000000100000" =>--Function 6 Produce the result of ANDing A and B
				neg <= '0';
				Result <= (Reg1 AND Reg2);
			WHEN "0000000001000000" =>--Function 7 Invert the upper four bits of A
				neg <= '0';
				Result(0) <= Reg1(0);
				Result(1) <= Reg1(1);
				Result(2) <= Reg1(2);
				Result(3) <= Reg1(3);
				Result(4) <= Reg1(7);
				Result(5) <= Reg1(6);
				Result(6) <= Reg1(5);
				Result(7) <= Reg1(4);
			WHEN "0000000010000000" =>--Function 8 Rotate B to left by 3 bits (ROL)
				neg <= '0';
				Result(0) <= Reg2(5);
				Result(1) <= Reg2(6);
				Result(2) <= Reg2(7);
				Result(3) <= Reg2(0);
				Result(4) <= Reg2(1);
				Result(5) <= Reg2(2);
				Result(6) <= Reg2(3);
				Result(7) <= Reg2(4);
			WHEN "0000000100000000" =>--Function 9 Show null on the output
				neg <= '0';
				Result <= "--------";
			WHEN OTHERS =>-- Don't care
			END CASE;
		END IF;
	END PROCESS;
	
	R1 <= Result(3 DOWNTO 0);
	R2 <= Result(7 DOWNTO 4);

END Behavior;
