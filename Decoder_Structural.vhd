----------------------------------------------------------------------------------
-- Company: Ultra Llama-Lords of Science
-- Engineer: C3C Jamey Combs
-- 
-- Create Date:    18:52:12 02/04/2014 
-- Design Name: 
-- Module Name:    Decoder_Structural - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder_Structural is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end Decoder_Structural;

architecture Structural of Decoder_Structural is
COMPONENT And3
PORT(
I0 : IN std_logic;
I1 : IN std_logic;
I2 : IN std_logic;
O : OUT std_logic);
END COMPONENT;
COMPONENT Inverter
PORT(
I : IN std_logic;
O : OUT std_logic);
END COMPONENT;
SIGNAL I0_NOT, I1_NOT : std_logic;
begin
Y0_And3: And3 PORT MAP(
I0 => I0_Not,
I1 => I1_Not,
I2 => EN,
O => Y0);
Y1_And3: And3 PORT MAP(
I0 => I0,
I1 => I1_Not,
I2 => EN,
O => Y1);
Y2_And3: And3 PORT MAP(
I0 => I0_Not,
I1 => I1,
I2 => EN,
O => Y2);
Y3_And3: And3 PORT MAP(
I0 => I0,
I1 => I1,
I2 => EN,
O => Y3);
I0_Inverter: Inverter PORT MAP(
I => I0,
O => I0_Not);
I1_Inverter: Inverter PORT MAP(
I => I1,
O => I1_Not);

end Structural;

