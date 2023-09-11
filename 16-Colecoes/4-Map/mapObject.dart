import 'models/models.dart';

main() {
  print('16.4.5) Map Objetos\n');

  Carro c1 = Carro('Honda', 'Civic');
  Carro c2 = Carro('Toyota', 'Corola');
  Carro c3 = Carro('Fiat', 'Palio');

  Map<String, Carro> carros = {'0': c1, '1': c2};
  carros['2'] = c3;

  for (var i = 0; i < carros.length; i++) {
    print('for: $i ${carros["${i}"]!.modelo}');
  }

  for (String chave in carros.keys) {
    final carro = carros[chave];
    print('forIn: $chave ${carro!.modelo}');
  }

  carros.forEach((key, value) => print('forEach: $key ${value.modelo}'));

  print('16.4.5) Map Objetos\n');

  Pessoa p1 = Pessoa('Higino', idade: 26, peso: 60);
  Pessoa p2 = Pessoa('Lidia', idade: 31, peso: 60);

  Pessoa('Higino', idade: 27);
  Pessoa('Lidia', idade: 13);
  Pessoa('Gloria');

  Pessoa.mostrarPessoas();
  p1.peso = 90;
  Pessoa.mostrarDetalhes('Higino');
  p2.peso = 61.1;
  Pessoa.alterDetalhes('Gloria', idade: 23, peso: 50);
  Pessoa.mostrarPessoas();
}
