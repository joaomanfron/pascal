Var S : String;
    C : Char;
    F : File of char;

begin
  Assign (F,'student.dat');
  Reset (F);
  C:='A';
  Writeln ('The characters before the first space in ex50.pp are : ');
  While not Eof(f) and (C<>' ') do
    Begin
    Read (F,C);
    Write (C);
    end;
 Writeln;
 Close (F);
 Writeln ('Type some words. An empty line ends the program.');
 repeat
   Readln (S);
 until S='';
end.