program vetores;
uses crt;

const
RSIZE= 2;
SSIZE= 4;
var

R : array [1..RSIZE] of integer;
S : array [1..SSIZE] of integer;
U : array of integer;
i,n : integer;

begin
    for i:= 1 to  2 do
        read (R[i]);
    for n:= 1 to  4 do
        read (S[n]);
    writeln;
    for U := 1 to (RSIZE + SSIZE) do;
        write (U)
    
end.