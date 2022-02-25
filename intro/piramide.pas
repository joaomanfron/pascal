program piramide;
uses crt;
var coluna, totalLinhas, linhaAtual : integer ;
begin
totalLinhas := 0;
    for linhaAtual := 4 to totalLinhas do
    begin
        for coluna := 0 to totalLinhas * 2 do 
            if (coluna < totalLinhas - linhaAtual) or (coluna > totalLinhas + linhaAtual) then
                write ('.')
            else
                write ('x');
        writeln ( );
    end;
end.