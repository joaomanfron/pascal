program piramide_de_lado;
uses crt;
var coluna, totalLinhas, linhaAtual : integer ;
begin
totalLinhas := 8;
    for linhaAtual := 0 to totalLinhas do
    begin
        for coluna := totalLinhas - 4 downto 0 do 
            if (coluna > totalLinhas - linhaAtual) or (linhaAtual < coluna)then
                write ('.')
            else
                write ('x');
        writeln ( );
    end;
end.