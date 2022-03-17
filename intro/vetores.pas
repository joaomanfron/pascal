program vetores;
uses crt;

const
RSIZE= 3;
SSIZE= 4;
var

R : array [1..RSIZE] of integer;
S : array [1..SSIZE] of integer;
U : array [1..(RSIZE+SSIZE)] of integer;
C : array [1..RSIZE] of integer;
i,n,j: integer;
Usuario: string;
elementoRepetido: boolean;

begin
    clrscr;
    writeln ('insira seu nome');
        read (Usuario);
    writeln ('Ola ',Usuario, ' bemvindo ao programa de vetores, para começar, escreva os numeros do primeiro vetor com ',RSIZE,' casas');
    for i:= 1 to  RSIZE do
        read (R[i]);
    writeln ('Muito bem ',Usuario, ' ,agora escreva o segundo vetor com ', SSIZE,' casas' );
    for n:= 1 to  SSIZE do
        read (S[n]);
    writeln;
    writeln ('A junção dos vetores é a seguinte:');
    for j := 1 to (RSIZE + SSIZE) do
    begin
        if j <= RSIZE then      
            U[j] := R[j]
        else
            U[j] := S[j - RSIZE]
    end;
    for j := 1 to (RSIZE + SSIZE) do
        write (U[j],' ');
    writeln;
    writeln ('Os numeros dos vetores em comum são:');
    elementoRepetido := false;
    for i:= 1 to  RSIZE do
        for n:= 1 to  SSIZE do
            if R[i] = S[n] then
            begin
                elementoRepetido := true;
                C[i] := S[n];

            end;        
    if elementoRepetido then
        for i:= 1 to SSIZE do
            writeln (C[i],' ')
    else
        writeln ('Não existem elementos repetidos');
            
end.