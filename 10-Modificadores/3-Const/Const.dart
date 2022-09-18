import 'Brasil.dart';

/**
 * - Inicializada em tempo de compilacao. deve ser declarada com valor constante
 * - Ao nivel de classes deve ser statica para ficar disponivel na classe
 * - Em colecoes const todo o conteudo deve ser constatte
 *  Ojeto imutavel
 * - O construtor deve ser constante
 * - As variaveis devem ser final ou static const
 */

void main() {
  print('10.2) Modificadores Const');

  const pi = 3.14;
  double raio = 2;

  var resultado = pi * (raio * raio);
  print('${resultado}\n');

  final numeros = [raio, 2.5];
  numeros.add(resultado);
  print(numeros);

  final dynamic listaFinal = const [0, 1];
  //listaFinal.add(2)
  print(listaFinal);

  const listaConst = [1, 2, pi];
  //listaConst.add(pi)
  print('${listaConst}\n');

  for (var i = 0; i < 3; i++) {
    final indiceFinal = i;
    const constante = 1;

    print('Contagem: ${constante + indiceFinal}');
  }

  var pais = Brasil(-15.792371, -47.882326);
  print('\n Objeto: $pais capital: ${Brasil.capital} latitude: ${pais.latitude} longitude: ${pais.longitude}');
  print('Estados: ${Brasil.estados}');
}


