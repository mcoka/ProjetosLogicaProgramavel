LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

entity SS_controller is
generic(
    fclk : natural := 100; -- frequencia do clk (Mhz)
    f7s : natural := 100 -- frequencia de atualizacao dos displays (Hz)
);
port(
    clk : in STD_LOGIC;
    btnCpuReset : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR (15 downto 0);
    seg : out STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    an : out STD_LOGIC_VECTOR (7 downto 0) := X"00";
    dp : out STD_LOGIC
);
end SS_controller;

ARCHITECTURE rtl OF SS_controller IS
    -- Constantes que definem o valor mostrado no display
    signal SS1_valor : integer range 0 to 9 := 2;
    signal SS2_valor : integer range 0 to 9 := 1;
    signal SS3_valor : integer range 0 to 9 := 0;
    signal segmentos : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    signal anodos : STD_LOGIC_VECTOR (7 downto 0) := X"01";
    
    signal counter : integer range 0 to 100_000_000 := 0;
    signal counter_an : integer range 0 to 7 := 0;
    
   
BEGIN
    process (clk)
    begin
        if(rising_edge(clk)) then
            if (counter = 100_000_000) then
                counter <= 0;
                if (SS1_valor = 9) then
                    SS1_valor <= 0;
                else
                    SS1_valor <= SS1_valor + 1;
                end if;
            else
                counter <= counter + 1;
            end if;
            --if ((counter mod 100) = 0) then
            --    counter_an <= counter_an + 1; 
            --    if (counter_an = 8) then
            --        counter_an <= 0;                    
            --    endif;
            --endif;                          
        end if;           
    end process;

    with SS1_valor select 
        segmentos <= "0111111" when 0,
                     "0000110" when 1,
                     "1011011" when 2,
                     "1001111" when 3,
                     "1100110" when 4,
                     "1101101" when 5, 
                     "1111101" when 6,
                     "0000111" when 7,
                     "1111111" when 8,
                     "1101111" when others;
SEG <= not segmentos;
AN <= ("11111110" rol counter_an);    
    
END rtl;