program numeros_array;
uses crt;

var
A : array [1..5] of integer;
position: integer;

begin
    for position := 1 to 5 do
        read (A[position]);
    
    for position := 5 downto 1 do
        write (A[position],' ');
    writeln;
end.