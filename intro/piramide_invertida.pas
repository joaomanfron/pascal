program piramide;
uses crt;
var coluna, totalLinhas, linhaAtual : integer ;
begin
totalLinhas := 4;
    for linhaAtual := totalLinhas downto 0 do
    begin
        for coluna := totalLinhas * 2 downto 0 do 
            if (coluna < totalLinhas - linhaAtual) or (coluna > totalLinhas + linhaAtual) then
                write ('.')
            else
                write ('x');
        writeln ( );
    end;
end.