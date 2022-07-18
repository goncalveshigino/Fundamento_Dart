void main() {
  print('01.0) Variaveis');

  var valorA = 10;
  var valorB = 20;
  var valorC = 16;
  var resultado;

  resultado = valorA + valorB + valorC;
  print(resultado);

  var salario = 500, desconto = 240;
  var conta = salario - desconto;
  print(conta);

  var texto1 = '\nHigino';
  var texto2 = '\nLuis';
  var texto3 = '''\n 
  Lidia Miguel\n''';

  var nome = texto1 + texto2 + texto3;
  print(nome);

  var verdadeiro = true;
  var falso = false;

  //Interpolacao ${} operacoes
  print('verdadeiro = ${verdadeiro}');

  //$...para variavel
  print('falso = ' + "$falso");

  const pi = 3.14;

  nome = 'Higino';
  String sobrenome = 'Luis';
  int idade = 25;
  bool adulto = true;

  print('\nNome: ' + "$nome \nQtd letras: ${nome.length}" + """\nSobreNome: $sobrenome \nQtd letras ${sobrenome.length}\n""");
}
