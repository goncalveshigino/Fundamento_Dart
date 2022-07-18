void main() {
  print('03.2) Switch');

  String operacao = '*'; //+-*/
  double numberA = 12;
  double numberB = 3;

  switch (operacao) {
    case '+':
      print('Resultado ${numberA + numberB} ');
      break;

    case '-':
      print('Resultado ${numberA - numberB} ');
      break;

    case '*':
      print('Resultado ${numberA * numberB} ');
      break;

    case '/':
      print('Resultado ${numberA / numberB} ');
      break;
    default:
      print('Operacao invalida');
  }

  int dia = 1;

  switch (dia) {
    case 0:
      print('Domingo');
      break;
    case 1:
      print('Segunda');
      break;
    case 2:
      print('Terca');
      break;
    case 3:
      print('Quarta');
      break;
    case 4:
      print('Quinta');
      break;
    case 5:
      print('Sexta');
      break;
    case 6:
      print('Sabado');
      break;
    default:
      print('Dia da semana Invalido');
      break;
  }
}
