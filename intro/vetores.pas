program vetores;
uses crt;

const
RSIZE= 2;
SSIZE= 4;
USIZE= 6;
var

R : array [1..RSIZE] of integer;
S : array [1..SSIZE] of integer;
U : array [1..USIZE] of integer;
i,n,j: integer;

begin
    for i:= 1 to  RSIZE do
        read (R[i]);
    for n:= 1 to  SSIZE do
        read (S[n]);
    writeln;
    for j := 1 to (RSIZE + SSIZE) do
    begin
        if j < 3 then      
            U[j] := R[j]
        else
            U[j] := S[j - RSIZE]
    end;
    for j := 1 to (RSIZE + SSIZE) do
        write (U[j],' ');
    if U[j] = U[j] then
        write (U[J]);
end.