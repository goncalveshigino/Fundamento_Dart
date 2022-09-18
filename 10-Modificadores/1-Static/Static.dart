import 'Calculos.dart';

///
///Static
///A vaariavel estatica fica disponivel na propria class em vez de suas instancias/objectos
///Em metodo estaticos deve usar variaveis estaticas da classe
///Variaveis estaticas podem ser acessadas em precisar instanciar classes/objectos

void main() {
  print('10.0) Modificadores');

  double raio = 5;

  var calculos1 = Calculos();
  print(calculos1.pi);
  print(calculos1.areaCirculo(raio));

  print('');

  Calculos calculos2 = Calculos();
  print(calculos2.pi);
  print(calculos2.areaCirculo(raio));

  print('\n Instancias consomem ${identical(calculos1, calculos2) ? 'MENOS' : 'MAIS'}\n');

  print(Calculos.piEstatico);
  print(Calculos.piEstatico * (raio * raio));
  print('Retornos iguais: ${Calculos.areaCirculoEstatico(raio) == Calculos().areaCirculo(raio) ? 'SIM' : 'NAO'} Metodos diferentes!');
}

