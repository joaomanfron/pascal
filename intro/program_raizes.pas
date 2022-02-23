program raizes ;
uses crt ;
var
    a, b ,c , x1, x2, det : real ;

begin
    readln (a,b,c) ;
    det := sqr(b) - 4*a*c ;
    if det >= 0  then
        begin
            { calcula e escrece as raízea reais }
            x1 := (-b + sqrt(det)) / (2*a) ;
            x2 := (-b - sqrt(det)) / (2*a) ;
            writeln ('As raizes são ', x1,' e ', x2) ;
        end
    else
        { erro: somente raízes complexas }
        writeln ('A equacao nao possui raizes reais') 
end.