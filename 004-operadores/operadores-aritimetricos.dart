void main() {
  print(
      '02.2) Operadores aritimeticos ( + - * / ~/ %), incremento(+= ++), e assignacao( = ??)');

  var peso = 10;
  peso = peso * 5;
  peso++;
  print(peso);

  var a, b, c, d, e, f;
  a = 3;
  b = ++a; //incrementar (a) antes que (b) receba valor
  print('a: $a b: $b');

  c = ++a / --b;
  print('a: $a b: $b');
  print(c);

  d = a ~/ b;
  print('c: $c d: $d');

  e = 1;
  f = e;
  f = null;

  f ??= ++e;
  print('e: $e f: $f');

  var numero = 12;
  var par = numero % 2 == 0;
  var impar = numero % 2 != 0;
  var positivo = numero >= 0;
  var negativo = numero < 0;
  print('numero: $numero par: $par impar: $impar positivo: $positivo negativo: $negativo');

  var multiplo = 3;
  print('numero: $numero multiplo de $multiplo? ${numero % multiplo == 0}');

  int dividendo = 19, divisor = 4;
  double quociente = dividendo / divisor;
  int resto = dividendo % divisor;
  bool exata = resto == 0;
  print('Qouciente: $quociente Exata: $exata Resto: $resto');
}
