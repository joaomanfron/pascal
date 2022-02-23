program repita ;
uses crt ;
var 
    valor, soma : integer ;

begin
    soma := 0 ;
    repeat
        readln (valor) ;
        soma := soma + valor ;
    until valor = 0 ;
    writeln ('A soma vale ', soma) ;
end.