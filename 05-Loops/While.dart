void main() {

  print('05.0) Loops (While e doWhile)\n');

  var numero = 5;
  while (numero > 0) {
    print('while: $numero');
    numero--;
  }

  print('');

  //do while -- faz execucao e testa depois

  var contagem = 1;
  do {
    print('doWhile: $contagem');
  } while (contagem <= 3);

  int multiplo = 4;
  int min = 10;
  int max = 10;
  int resultado = min;

  while (resultado <= max) {

    if (resultado % multiplo == 0) {
      print('Primeiro multiplo de $multiplo entre $min e $max é: $resultado ');
      break;
    }

    resultado ++;
    
  }
}
