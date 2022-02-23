program multiplos ;
uses crt ;
var 
    i : integer ;

begin
    i := 1 ;
    while ( i < 1000 ) do
    begin
        write (i:4) ;
        i := i * 2 ;
    end;
    writeln();
end.