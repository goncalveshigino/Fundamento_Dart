void main() {
  print('03.1) Ternario\n');

  if (!true) {
    print('Verdadeiro');
  } else {
    print('falso');
  }

  print('${!true ? 'Verdadeiro' : 'Falso'}');

  int idade = 18;

  print((idade < 14)
      ? 'Crianca'
      : (idade < 18)
          ? 'Adolecente'
          : 'Adulto');

  int nota = 70;
  String resultado = (nota > 40)
      ? 'Reprovado'
      : (nota < 70)
          ? 'Recuperacao'
          : 'Aprovado';

  print(resultado);

  int numero = 15;
  print('Numero: $numero é ${(numero % 2 == 0) ? 'Par' : 'Impar'} e ${(numero >= 0) ? 'Positivo' : 'Negativo'}!');

  int multiplo = 3;
  print('Numero: $numero ${(numero % multiplo == 0) ? 'é' : 'Nao e'} multiplo de $multiplo');

  int ano = 1984;
  print('Ano ${(ano % 4 == 0 || ano % 400 == 0 && ano % 100 != 0) ? 'é bissexto' : 'Nao e bissexto'}');

}
