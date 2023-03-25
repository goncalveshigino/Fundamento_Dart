import 'dart:math';

/**
    * Conceito
    - List e uma colecao dinamica e ordenada de elementos entre colchetes []
    - forEach: Aplica a funcao anonima a cada elemento da nossa colecao
    - Todo array e um list
 
 */

listForEach() {
  print('16.1.0) List ForEach');
  var array = [0, 2.4, 5, 7.5];
  array.forEach((element) {
    print('ForEach: $element');
  });

  List<int> inteiros = [1, 4, 5];
  List<double> doubles = [2.3, 3.4, 5.6];
  List<bool> boleans = [true, false, !true, !false];
  List<String> frutas = ['Manga', 'Abacate', 'Pera', 'Ananas'];

  print('Implementacao: ${frutas.runtimeType}');

  print('\nboleans[3]: ${(boleans[inteiros.length]) ? 'Verdadeiro' : 'Falso'}');

  frutas.insert(0, 'Abacaxi');
  frutas.add('Laranja');
  frutas.forEach((e) => print('ForEach: $e'));

  print(frutas);

  frutas.removeLast();
  frutas.removeWhere((e) => e == 'Pera');
  print(frutas);

  print(frutas.elementAt(2));

  print(frutas.contains('ananas'));

  //List.from carrega a lista desejada com elementos de outra lista
  List<num> numeros = List.from(inteiros)
    ..addAll(doubles)
    ..shuffle()
    ..sort();

  print(numeros);

  List<String> listaPreenchida = List.filled(2, 'lemento');
  List<String> listaGerada = List.generate(2, (index) => 'Nome ${index}');
  List<double> listaPrecos = List.generate(
      5,
      (i) =>
          double.parse(((i + 1) * Random().nextDouble()).toStringAsFixed(2)));
  print(
      'ListaPreenchida: $listaPreenchida \nListaGerada: $listaGerada \nListaPrecos: $listaPrecos');

  listaPrecos.forEach((e) => print('ForEach: $e'));
}

//*Expand
//  - Cria uma nova lista expandindo ou concatenando os elementos

listExand() {
  print('\n16.1.1) List Expand\n');

  var lista = [
    [1, 2],
    [3, 4]
  ];

  List<dynamic> listaFlet = lista.expand((e) => e).toList();
  List<dynamic> listaDuplicada = listaFlet.expand((e) => [e, e]).toList();
  print('ListaFlet: $listaFlet \nListaDuplicada $listaDuplicada');


}

void main() {
  // listForEach();
  listExand();
}
