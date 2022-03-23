program menu;
uses crt;

type
    Livro = record
        codigo, numeroDePaginas : integer;
        nome, autor, editora: string;
        doado : boolean;
    end;

var 

insere: boolean;
l, newBook: Livro;
livroDoado, inserirLivro, qtdLivros, escolha, voltar, areaLivro: integer;
cienciasHumanas : array [1..2] of Livro;
cienciasExatas : array [1..2] of Livro;
cienciasBiomedicas : array [1..2] of Livro;

function imprimeListaAreas : boolean;
begin
    writeln ('1 - Ciencias exatas');
    writeln ('2 - Ciencias humanas');
    writeln ('3 - Ciencias biomedicas');
end;

function imprimeAreas :integer;
begin
        writeln ('Deseja inserir livro de qual area?');
        imprimeListaAreas();
        readln (areaLivro);
end;

function criaLivro : Livro;
var 
    novoLivro : Livro;
begin
    // repeat;
    clrscr;
    
    writeln ('Insira o nome do livro');
    readln (novoLivro.nome);
    writeln ('Insira o nome do autor');
    readln (novoLivro.autor);
    writeln ('Insira o nome da editora');
    readln (novoLivro.editora);
    writeln ('Insira o codigo do livro');
    readln (novoLivro.codigo);
    writeln ('Insira o numero de paginas');
    readln (novoLivro.numeroDePaginas);
    writeln ('o livro foi doado?');
    writeln ('1 - sim');
    writeln ('2 - nao');
    readln (livroDoado);
    if livroDoado = 1 then
        novoLivro.doado := true 
    else
        novoLivro.doado := false;
    
    Exit (novoLivro)

    // until insereLivro = 2
end;

function insereLivro(novoLivro : Livro) : boolean;
begin    
    qtdLivros := qtdLivros + 1;
    cienciasHumanas[qtdLivros] := novoLivro;
    writeln ('Deseja inserir novo livro?');
    writeln ('1 - sim');
    writeln ('2 - nao');
    readln (inserirLivro);
    if inserirLivro = 1 then 
        insere := true 
    else
        insere := false;
    clrscr;
end;

function areaImprimir :integer;
begin
    writeln ('Deseja imprimir livro de qual area?');
    imprimeListaAreas();
    readln (areaLivro);
end;

function ImprimeLivro(ln : Livro) : boolean;
begin
    clrscr;
    writeln ('Imprimindo...');
    writeln ('nome do livro: ', ln.nome);
    writeln ('nome do autor: ', ln.autor);
    writeln ('nome da editora: ', ln.editora);
    writeln ('codigo do livro: ', ln.codigo);
    writeln ('numero de paginas do livro: ', ln.numeroDePaginas);
    writeln ('doado?: ', ln.doado);
    writeln;
    // writeln ('0 - voltar');
    // repeat
    //     readln (voltar);
    //     if voltar =0 then
    //     clrscr;
    // until voltar =0;
end;

begin
    clrscr;
    repeat
        writeln ('MENU');
        writeln;
        writeln ('Escolha uma das tres opçoes');
        writeln ('1 - Inserir livros');
        writeln ('2 - Imprimir livros');
        writeln ('3 - Sair');
        readln (escolha);
        case escolha of
            1 : begin
                    imprimeAreas();
                    newbook := criaLivro();
                    ImprimeLivro(newBook);
                end;
            2 : begin
                    areaImprimir();
                    // ImprimeLivro();
                end;
            3 : writeln ('sair');
        end;
    until escolha = 3;
    clrscr
end.