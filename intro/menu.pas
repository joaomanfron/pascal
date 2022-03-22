program menu;
uses crt;

type
    Livro = record
        codigo, numeroDePaginas : integer;
        nome, autor, editora: string;
        doado : boolean;
    end;

var 

    insere : boolean;
    l : Livro;
    livroDoado, insereLivro, qtdLivros, escolha, voltar: integer;
    cienciasHumanas : array [1..2] of Livro;
    cienciasExatas : array [1..2] of Livro;
    cienciasBiomedicas : array [1..2] of Livro;

function InserirLivros :integer;

begin
    clrscr;
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
    repeat
        readln (voltar);
        if voltar =0 then
        clrscr;
    until voltar =0;
    InserirLivros := 0
end;

function ImprimirLivros : integer;
begin
    clrscr;
    writeln ('nome do livro: ', l.nome);
    writeln ('nome do autor: ', l.autor);
    writeln ('nome da editora: ', l.editora);
    writeln ('codigo do livro: ', l.codigo);
    writeln ('numero de paginas do livro: ', l.numeroDePaginas);
    writeln ('doado?: ', l.doado);
    writeln ('0 - voltar');
    repeat
        readln (voltar);
        if voltar =0 then
        clrscr;
    until voltar =0;
    ImprimirLivros := 1
    end;


begin
    clrscr;
    repeat
        writeln ('MENU');
        writeln ('Escolha uma das tres opçoes');
        writeln ('1 - Inserir livros');
        writeln ('2 - Imprimir livros');
        writeln ('3 - Sair');
        readln (escolha);
        case escolha of
            1 : InserirLivros;
            2 : ImprimirLivros;
            3 : writeln ('sair');
        end;
    until escolha = 3;
    clrscr
end.