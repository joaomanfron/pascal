program soma_matrizes;
uses crt;

var
A, B: array [1..3,1..3] of integer;
i,n : integer;

begin
    writeln;
    writeln ('Matriz A');
    writeln;
    for i:= 1 to 3 do
    begin
        for n:= 1 to 3 do
            write('[',i,',',n,'] ');
        writeln;
    end;
    writeln;
    writeln ('Matriz B');
    writeln;
    for i:= 1 to 3 do
    begin
        for n:= 1 to 3 do
            write('[',i,',',n,'] ');
        writeln;
    end;
    
end.