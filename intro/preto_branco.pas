program preto_branco;
uses crt,sysutils;
//ler matriz.txt e transformala em inversa
const
numCols = 3;
numLines = 3;

var
matriz : array [1..3,1..3] of integer;
line,col : integer;
f : textfile;

begin
assign (f,'matriz.txt');
    for line:= 1 to numLines do
        for col:= 1 to numCols do
            read (matriz[line,col]);
    for line:= 1 to numLines do
    begin
        for col:= 1 to numCols do   
            write (matriz[line,col],' ');
        writeln;
    end;
    for line:= 1 to numLines do
    begin
        for col:= 1 to numCols do   
            write (100 - matriz[line,col],' ');
        writeln;
    end;
end.