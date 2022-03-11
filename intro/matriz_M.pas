program matriz_M;
uses crt;

const
numlines = 2;
numcols = 3;

var
matriz, matrizR: array [1..2,1..3] of integer;
line,col,sum : integer;

begin
    for line:= 1 to numlines do
            for col:= 1 to numcols do   
                read (matriz[line,col]);
        for line:= 1 to numlines do
        begin
            for col:= 1 to numcols do   
                write (matriz[line,col] + matriz[line,col], ' ');
        end;
    sum := 0;
    for line:= 1 to numlines do
            for col:= 1 to numcols do   
            begin
                sum := sum + (matriz[line,col] + matriz[line,col]);
                matrizR[line,col] := (sum);
            end;
            writeln;
            writeln (matrizR[line,col]);
end.