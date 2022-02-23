program quadrados ;
uses crt ;
var 
    soma, somaQuadrados,i : integer ;

begin
    soma := 0 ;
    somaQuadrados := 0 ;
    for i := 1 to 20 do
        begin
            soma := soma + i ;
            somaQuadrados := somaQuadrados + sqr(i) ;
        end;
    writeln ('A soma dos numeros vale ', soma) ;
    writeln ('A soma dos quadrados vale ', somaQuadrados) ;
end.