program livros;
uses crt;
//inserir livros imprimir livros e sair
type
    Livro = record
        codigo, numeroDePaginas : integer;
        nome, autor, editora: string;
        doado : boolean;
    end;

var
    insere : boolean;
    l : Livro;
    livroDoado, insereLivro, qtdLivros: integer;
    cienciasHumanas : array [1..2] of Livro;
    cienciasExatas : array [1..2] of Livro;
    cienciasBiomedicas : array [1..2] of Livro;
begin
    clrscr;
    writeln ('Deseja inserir livro?');
    writeln ('1 - sim');
    writeln ('2 - nao');
    readln (insereLivro);
    if insereLivro = 1 then 
        insere := true 
    else
        insere := false;
    qtdLivros := 0;
    while insere do
    begin
        qtdLivros := qtdLivros + 1;
        writeln ('Insira o nome do livro');
        readln (l.nome);
        writeln ('Insira o nome do autor');
        readln (l.autor);
        writeln ('Insira o nome da editora');
        readln (l.editora);
        writeln ('Insira o codigo do livro');
        readln (l.codigo);
        writeln ('Insira o numero de paginas');
        readln (l.numeroDePaginas);
        writeln ('o livro foi doado?');
        writeln ('1 - sim');
        writeln ('2 - nao');
        readln (livroDoado);
        if livroDoado = 1 then
            l.doado := true 
        else
            l.doado := false;

        cienciasHumanas[qtdLivros] := l;
        writeln ('Deseja inserir novo livro?');
        writeln ('1 - sim');
        writeln ('2 - nao');
        readln (insereLivro);
        if insereLivro = 1 then 
            insere := true 
        else
            insere := false;

    end;
    while  do
    begin
        writeln ('nome do livro: ', cienciasHumanas[1].nome);
        writeln ('nome do autor: ', cienciasHumanas[1].autor);
        writeln ('nome da editora: ', cienciasHumanas[1].editora);
        writeln ('codigo do livro: ', cienciasHumanas[1].codigo);
        writeln ('numero de paginas do livro: ', cienciasHumanas[1].numeroDePaginas);
        writeln ('doado?: ', cienciasHumanas[1].doado);
    end;
end.