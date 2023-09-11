///
///*conteito
/// - Map e uma colecao dinamica e custumizavel de chaves e valores entre {}, As chaves sao unicas, e os valores nao se repetem!
///

linkedHashMap() {
  print('16.4.0) LinkedHashMap == Map');

  List<String> names = ['Higino', 'Luiz'];
  Map<int, String> namesMap = names.asMap();

  print('\n$namesMap');

  namesMap.forEach((key, value) => print('$key: $value'));

  final fruits = Map<String, dynamic>();

  fruits['banana'] = 'Amarelas';
  fruits['banana'] = 'Verde';
  fruits['goiaba'] = 'Amarelas';
  fruits['maca'] = 'Vermelha';

  print('\n$fruits');

  print(fruits.containsKey('banana'));
  print(fruits.containsValue('Branca'));

  print(fruits['banana']);
  fruits.clear();

  //fruits[null()] = null; // Nao aceita valor null

  Map<String, dynamic> user =
      Map.from({'name': 'Higino', 'age': 25, 'weight': 70.5});

  user.update('name', (value) => '$value Katiavala');
  user.update('age', (value) => ++value);
  user.update('weight', (value) => 74, ifAbsent: () => 'indifinido');

  print(user);

  user.removeWhere((key, value) => key == 'weight' && value == 74);
  user.update('weight', (value) => 74, ifAbsent: () => 'indifinido');
  user.putIfAbsent('height', () => 1.73);
  user.addAll({'gender': 'Man', 'marred': true});
  print('\n$user');
  print('Chaves: ${user.keys} \n ${user.values}\n');

  Map<int, dynamic> numbers = {0: 'zero', 1: 'Um', 2: 'dois'};
  print(numbers);
  print(numbers.map((key, value) => MapEntry(key, '${value.toUpperCase()}')));

  for (var key in numbers.keys) {
    print('ForIn: $key');
  }
  for (var value in numbers.values) {
    print('ForIn: $value');
  }

  for (var key in numbers.keys) {
    final value = numbers[key];
    print('ForIn: key $key value ${value.toUpperCase()}');
  }
}

mapMap() {
  ///
  ///* Map transforma/seleciona os elementos de uma colecao criando uma nova colecao com o mesmo tamanho
  ///

  List<Map<String, dynamic>> carrinho = [
    {'name': 'Borracha', 'price': 3.00},
    {'name': 'Caderno', 'price': 4.00},
    {'name': 'KitLapis', 'price': 2.00},
    {'name': 'Caneta', 'price': 2.00},
  ];

  Function porcentagem(desconto) => (valor) => desconto * valor['price'];
  final moeda =
      (e) => 'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';

  List<String> prices1 =
      carrinho.map(porcentagem(.9) as dynamic).map(moeda).toList();
  List<String> prices2 =
      carrinho.map((e) => e.update('price', (e) => e * .9)).map(moeda).toList();

  String precoMedio = (carrinho.map((e) => e['price']).reduce((p, c) => p + c) /
          carrinho.length)
      .toStringAsFixed(2);
  print(
      'Lista preco1: $prices1\nLista preco2: $prices2\nPreco Media: $precoMedio');

  List<Map<String, Object>> escola = [
    {
      'nome': 'Turma T1',
      'alunos': [
        {'nome': 'Higino', 'nota': 17.4},
        {'nome': 'Lidia', 'nota': 18.5}
      ]
    },
    {
      'nome': 'Turma T2',
      'alunos': [
        {'nome': 'Katiavala', 'nota': 12.4},
        {'nome': 'Isabel', 'nota': 10.5}
      ]
    }
  ];

  // List<dynamic> alunosEscola = escola.map((e) => e['alunos']).expand((a) => a as Iterable ).map((e) => e['nota']).toList();
  List<dynamic> alunosEscola =
      escola.map((e) => e['alunos']).expand((a) => a as Iterable).toList();
  print('Lista Ordenada: $alunosEscola');

  alunosEscola.sort((b, a) => a['nota'].compareTo(b['nota']));
  print('Lista Ordenada: $alunosEscola');

  double mediaNotas =
      alunosEscola.map((e) => e['nota']).reduce((p, c) => p + c) /
          alunosEscola.length;
  print('Media alunos: $mediaNotas');

  alunosEscola.forEach((e) => print('${e['nome']} ${e['nota']}'));
}

///
/// * Conceitos
///  - Every faz o teste em todos elementos com o operador logico && retornando (true ou false)

everyMap() {
  print('\n16.4.2) Map Every\n');

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Lucio', 'idade': 60},
    {'nome': 'Leila', 'idade': 31},
    {'nome': 'Luiz', 'idade': 26},
  ];

  print(pessoas.every((e) => e.containsKey('nome')));
  print(pessoas.every((e) => e['idade'] <= 17));

  bool maiores = pessoas.every((e) => e['nome'].startsWith('G'));
  print(maiores);
}

/// * Conceitos
///  - Whre filtra os elementos da colecao criando uma nova do mesmo tamando ou menor
///

whereMap() {

  print('\n16.4.3) Map Where\n');

  List<Map<dynamic, dynamic>> produtos = [
    {'nome': 'Notebook', 'preco': 1499, 'fragil': true},
    {'nome': 'Ipad', 'preco': 4499, 'fragil': true},
    {'nome': 'Iphone', 'preco': 2499, 'fragil': true},
    {'nome': 'Magic Mouse', 'preco': 299, 'fragil': false}
  ];

  final fragil = (e) => e['fragil'] == true;
  final nome = (e) => e['nome'];

  List<dynamic> resultado = produtos.where(fragil).map(nome).toList();
  print('Produtos Frageis: $resultado\n');

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Higino', 'idade': 36},
    {'nome': 'Goncalves', 'idade': 46},
    {'nome': 'Luis', 'idade': 26},
  ];

  List<Map<String, dynamic>> maiores = pessoas.where((e) => e['idade'] >= 25).toList();
  //Map<String, dynamic> comecaComL = pessoas.firstWhere((e) => e['nome'].startsWith('L'),orElse: () => null);
  Map<String, dynamic> comecaComL = pessoas.firstWhere((e) => e['nome'].startsWith('L'));
  Map<String, dynamic> menores = pessoas.singleWhere((e) => e['idade'] < 27);
  var idades = (e) => e['idade'];
  var soma = (p, c) => p + c;
  var media = (pessoas.map(idades).reduce(soma)) / pessoas.length;
  print('Menores: $menores\nMaiores: $maiores\nMedia Idades: $media\nNomes com L: $comecaComL');
}

///* Conteicos
///  - Reduce compara os elementos da colecao retornando 1 unico elemento resultante
///  - Ao interagir com os elementos o indice 0 se torna o anterior, indece 1 se torna o atual
reduceMap() {

  print('\n16.4.4) Map Reduce\n');

  List<Map<String, dynamic>> alunos = [
    {'nome': 'Higino', 'nota': 7.3, 'bolsista': false},
    {'nome': 'Goncalves', 'nota': 10.6, 'bolsista': true},
    {'nome': 'Luis', 'nota': 8.2, 'bolsista': true},
  ];

  var bolsistas = (e) => e['bolsista'] as bool;
  var nomes = (e) => e['nome'];
  var notas = (e) => e['nota'];
  var soma = (p, c) => p + c;

  List<dynamic> bolsistasNomes = alunos.where(bolsistas).map(nomes).toList();
  List<Map<String, dynamic>> medias = alunos.where(bolsistas).toList();

  var mediaNotas = medias.map(notas).reduce(soma) / medias.length;
  bool todosBolsistas = alunos.map(bolsistas).reduce((p, c) => p && c);
  bool algumBolsista = alunos.map(bolsistas).reduce((p, c) => p || c);
  print('Todos sao Bolsistas? ${todosBolsistas ? 'Sim' : 'Nao'}\nAlgum Bolsista? ${algumBolsista ? 'Sim' : 'Nao'}');
  print('Alunos Bolsistas: $bolsistasNomes Medias notas: $mediaNotas');

  List<dynamic> funcionarios = [
    {'nome': 'Goncalves', 'genero': 'H', 'pais': 'Angola', 'salario': 500.67},
    {'nome': 'Lidia', 'genero': 'M', 'pais': 'Brasil', 'salario': 300.67},
    {'nome': 'Dominguas', 'genero': 'M', 'pais': 'Brasil', 'salario': 200.67},
    {'nome': 'Gloria', 'genero': 'M', 'pais': 'Russia', 'salario': 250.67},
  ];

  var brasileiros = (e) => e['pais'] == 'Brasil';
  var mulheres = (e) => e['genero'] == 'M';
  var menorSalario = (p, c) => p['salario'] < c['salario'] ? p['salario'] : c['salario'];
  var funcMenorSalario = (p, c) => p['salario'] < c['salario'] ? p : c;

  List<dynamic> selecionados = funcionarios.where(brasileiros).where(mulheres).toList();
  print(selecionados);
  print(selecionados.where(brasileiros).reduce(menorSalario));

  Map<String, dynamic> funcionario = selecionados.reduce(funcMenorSalario);
  print('Funcionarios: ${funcionario['nome']} tem o salario: ${funcionario['salario']}');

}

main() {

  linkedHashMap();
  mapMap();
  everyMap();
  whereMap();
  reduceMap();

}
