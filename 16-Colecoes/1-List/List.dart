import 'dart:ffi';
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

listMap() {
  print('16.1.2) List Map\n');

  List<String> frutas = ['Mangas', 'Bananas', 'Morango', 'Pera'];
  List<String> frutasMapeadas = frutas.map((e) => '$e e uma fruta!').toList();
  print(frutasMapeadas);

  List<int> inteiros = [1, 5, 10];
  var incrementar = (int e) => ++e;
  final dobro = (int e) => e * 2;
  List<int> inteiroMapeados = inteiros.map(incrementar).map(dobro).toList();
  print(inteiroMapeados);

  List<double> doubles = [2.75, 5.5, 7.25];
  final triplo = (e) => e * 3;
  final Function moeda =
      (e) => 'RS ${e.toDouble().toStringFixed(2).replaceFirst('.', ',')}';
  Function porcentagem(desconto) => (valor) => desconto * valor;
  //List<dynamic> doublesMapeados = doubles.map(triplo).map(porcentagem(0.9) as dynamic).map(moeda).toList();

  // print(doublesMapeados);
}

//* Every
//    -Faz o teste em todos elementos com o operador logico '&&' retornando (true or false)

listEvery() {
  print('\n16.1.3) List Every\n');

  List<int> inteiros = [0, 1, 2, 3, 4, 5];
  bool resultado = inteiros.every((e) => e > 0);
  print(resultado);

  List<String> textos = List.from(['Higino', 'Luiz']);
  resultado = textos.every((e) => e.contains('i'));
  print(resultado);
}

// * Where
//     -Filtra os elementos da colecao criando uma nova do mesmo tamanho ou nemor

listWhere() {
  print('\n16.1.4) List Where');

  List<int> idades = [1, 16, 26, 46, 59, 56];
  print(idades.where((e) => e is int)); // Retorno em Itareble
  print(idades.whereType<int>());

  List<int> adultos = idades.where((e) => e > 16).toList();
  var crianca = idades.singleWhere((e) => e <= 16, orElse: () => 0);
  int menor = idades.lastWhere((e) => e.toString().startsWith('0'), orElse: () => null);
  print('Adulto : $adultos Crianca: $crianca');
} 

void main() {
  //listForEach();
  //listExand();
  listMap();
  listEvery();
  listWhere();
}
