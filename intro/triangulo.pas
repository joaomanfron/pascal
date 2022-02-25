program triangulo;
uses crt;
var linha, coluna : integer; 
begin
    for linha := 0 to 4 do
    begin
        for coluna := 0 to 4 do
            if coluna <= linha then
                write ('x');
        writeln ( );
    end;
end.