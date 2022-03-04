program soma_matrizes;
uses crt;

var
A, B: array [1..3,1..3] of integer;
line,col : integer;

begin
    writeln;
    writeln ('Matriz A');
    writeln;
    for line:= 1 to 3 do
        for col:= 1 to 3 do   
            read (A[line,col]);
    for line:= 1 to 3 do
    begin
        for col:= 1 to 3 do   
            write (A[line,col],' ');
        writeln;
    end;
     writeln;
    writeln ('Matriz B');
    writeln;
    for line:= 1 to 3 do
        for col:= 1 to 3 do   
            read (B[line,col]);
    for line:= 1 to 3 do
    begin
        for col:= 1 to 3 do   
            write (B[line,col],' ');
        writeln;
    end;
    for line:= 1 to 3 do
    begin
        for col:= 1 to 3 do   
            write (A[line,col] * B[line,col], ' ');
        writeln;
    end;
    
end.