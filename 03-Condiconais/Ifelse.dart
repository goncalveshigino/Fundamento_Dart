void main() {
  print('03.0) Condicionais (if and else)');

  if (!true) {
    print('Verdadeiro');
  } else {
    print('Bug kkkk');
  }

  int idade = 20;

  // If and else sem chaves
  if (idade >= 18)
    print('Maior');
  else
    print('Menor');

  idade = 18;

  if (idade < 13) {
    print('Crianca');
  } else if (idade < 18) {
    print('Adolecente');
  } else {
    print('Adulto');
  }

  String textoInt = '10';
  String textoDouble = '10.05859';

  int numeroInt = int.parse(textoInt);
  var numeroDouble = double.parse(textoDouble).toStringAsFixed(2);

  print('ParseInt: $numeroInt ParseDouble: $numeroDouble');
  print('ParseString: ${numeroDouble.toString()}');

  double peso = 100;
  double altura = 1.65;

  var tmp = peso / (altura * altura);
  double imc = double.parse(tmp.toStringAsFixed(2));

  if (imc < 18.5) {
    print('IMC $imc Abaixo do peso');
  } else if (imc >= 18.5 && imc < 25) {
    print('IMC $imc Peso Noraml');
  } else if (imc >= 25 && imc < 35) {
    print('IMC $imc SobrePeso');
  } else if (imc >= 30 && imc < 35) {
    print('IMC $imc Obesidade grau 1');
  } else if (imc >= 35 && imc < 40) {
    print('IMC $imc Obesidade grau 2');
  } else {
    print('IMC $imc Obesidade grau 3');
  }
}
