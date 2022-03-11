program cidades;
uses crt;
//ir do ponto atual até o final da matriz (coluna +1)
const
numCols = 2;
numLines = 2;
var
Matriz : array [1..numLines,1..numCols] of integer;
line,col,line2,col2 : integer;

begin
    writeln;
    writeln ('Matriz');
    writeln;
    for line:= 1 to numLines do
        for col:= 1 to numCols do   
            read (Matriz[line,col]);
    for line:= 1 to numLines do
    begin
        for col:= 1 to numCols do   
            write (Matriz[line,col],' ');
        writeln;
    end;
    for line:= 1 to numLines do
            for col:= 1 to numCols do 
            begin
                for line2:= line to numLines do
                begin
                    for col2:= col to numCols do
                        write (Matriz[line2,col2],' ');
                    writeln;
                end;
            end;
end.