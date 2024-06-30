LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY ALU3 IS
PORT (Clock : IN STD_LOGIC ;
A ,B : IN UNSIGNED(7 DOWNTO 0);
student_id : IN std_logic_vector(3 downto 0);
OP: IN UNSIGNED(15 DOWNTO 0);
student_output : OUT std_logic_vector(3 downto 0));
END ALU3;

ARCHITECTURE Behavior OF ALU3 IS
SIGNAL input: STD_logic_vector(3 DOWNTO 0);
BEGIN
input <= student_id(3)&student_id(2)&student_id(1)&student_id(0);
WITH input SELECT
student_output <= "0001" WHEN "0000", -- 0
"0000" WHEN "0001", -- 1
"0000" WHEN "0010", -- 2
"0001" WHEN "0011", -- 3
"0001" WHEN "0100", -- 4
"0001" WHEN "0101", -- 5
"0000" WHEN "0110", -- 6
"0000" WHEN "0111", -- 7
"0000" WHEN "1000", -- 8
"0001" WHEN "1001", -- 9
"----" WHEN OTHERS;
END Behavior;