program produto_matrizes;
uses crt;

const
numLines = 2;
numCols = 2;
var
A, B, R: array [1..numLines,1..numCols] of integer;
line,col,k,sum : integer;

begin
    writeln;
    writeln ('Matriz A');
    writeln;
    for line:= 1 to numLines do
        for col:= 1 to numCols do   
            read (A[line,col]);
    for line:= 1 to numLines do
    begin
        for col:= 1 to numCols do   
            write (A[line,col],' ');
        writeln;
    end;
     writeln;
    writeln ('Matriz B');
    writeln;
    for line:= 1 to numLines do
        for col:= 1 to numCols do   
            read (B[line,col]);
    for line:= 1 to numLines do
    begin
        for col:= 1 to numCols do   
            write (B[line,col],' ');
        writeln;
    end;
    for line:= 1 to numLines do
        for col:= 1 to numCols do 
        begin  
            sum:= 0;
            for k := 1 to numCols do
                sum := sum + (A[line,k] * B[k,col]);
                R[line,col] := (sum);
        end;
     for line:= 1 to numLines do
    begin
        for col:= 1 to numCols do   
            write (R[line,col],' ');
        writeln;
    end;
end.