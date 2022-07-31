funcoesAnonimas() {
  print('06.4.0) Funcoes anonimas Conceiro\n');

  print('''SINTAXE

 (){
   print('Funcoes Anonimas!');
 }

 () => print('Funcao Anonima usando sintaxe Arrow')
''');

  print('\n06.4.1) Funcoes Anonimas como Variaveis\n');

  var variavelAnonima = () => print('Variavel Anonima');

  variavelAnonima();

  var variavelAnonimaParametro = (String msg) => print('Variavel Anonima $msg');
  variavelAnonimaParametro('com parametro');

  print('\n06.4.2) Funcoes Anonimas como Variaveis\n');

  void executarFuncao(Function funcao) => funcao();
  executarFuncao(() => print('Funcao Anonima passada com parametro!'));
}

void main() {
  funcoesAnonimas();
}
