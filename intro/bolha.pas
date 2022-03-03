program bolha;
uses crt;

type
vetoreal = array [1..1000] of real;

var
V : vetoreal;
i, n : integer;
auxiliar : real;
houvetroca : boolean;

begin
    readln (n);
    for i := 1 to n do
        readln (V[i]);

    repeat
        houvetroca := false;
        for i := 1 to n-1 do
            if V[i] > V[i+1] then
                begin
                    auxiliar := V[i];
                    V[i] := V[i+1];
                    V[i+1] := auxiliar;
                    houvetroca := true;
                end;
    until not houvetroca;

    writeln ('vetor ordenado');
    for i := 1 to n do 
        writeln (V[i]:10:4);
end.