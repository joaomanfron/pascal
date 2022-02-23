program randomico ;
uses crt ;
var numero, b : real;

begin
    randomize ;
    b := random(100);
   
    repeat
        writeln ('insira um numero de 0 a 100');
        readln (numero);
        if numero < b then
            writeln ('é menor')
        else      
            if numero > b then
                writeln ('é maior');
         
    Until numero = b;
    writeln ('parabens voce ganhou');
end.