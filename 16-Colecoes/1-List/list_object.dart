import 'dart:math';

class Pessoa {
  String nome, sobrenome;
  late int _identidade;

  Pessoa(this.nome, this.sobrenome, {int? identidade}) {
    this._identidade =
        (identidade == null) ? Random().nextInt(999999) : identidade;
  }

  int get identidade => _identidade;
}

class Vendedor {
  String nome;
  List<Venda> vendas;

  Vendedor(this.nome, this.vendas);
}

class Venda {
  String produtos;
  double preco;

  Venda(this.produtos, this.preco);
}

class Proprietario {
  String nome, endereco;
  List<Carro> carros;

  Proprietario(this.nome, this.endereco, this.carros);
}

class Carro {
  String marca, modelo, placa;
  Caracteristicas caracteristica;
  late List<Multa> multas;

  Carro(this.marca, this.modelo, this.placa, this.caracteristica,
      {List<Multa>? multas}) {
    this.multas = multas!;
  }
}

class Caracteristicas {
  String tipo;
  int passageiros;
  int potencias;
  String combustivel;

  Caracteristicas(
      this.tipo, this.passageiros, this.potencias, this.combustivel);
}

class Multa {
  String description;
  String tipo;
  int pontos;

  Multa(this.description, this.tipo, this.pontos);
}

main() {

  print('16.1.7) List manipulando Objetos\n');

  Pessoa p1 = Pessoa('Higino', 'Luiz', identidade: 12345678);
  Pessoa p2 = Pessoa('Lidia', 'Miguel', identidade: 00533564756);

  List<Pessoa> pessoas = [p1, p2];
  pessoas.add(Pessoa('Gonza', 'Luiz'));

  for (var i = 0; i < pessoas.length; i++) {
    print('For: ${pessoas[i].nome} ${pessoas[i].sobrenome} id: ${pessoas[i]._identidade}');
  }

  print('********************************************');

  for (var pessoa in pessoas) {
    print('For in: ${pessoa.identidade} ${pessoa.sobrenome} id: ${pessoa.identidade}');
  }

  print('******************************************');
  pessoas.forEach(
      (p) => print('ForEach: ${p.nome} ${p.sobrenome} id: ${p.identidade}'));

  print('\n16.1.8) List ordenando Objetos');

  List<Vendedor> vendedores = [];

  vendedores.add(Vendedor('Luiz', [Venda('IphoneX', 40.99), Venda('Sansung S19', 40.99)]));
  vendedores.add(Vendedor('Higino', [Venda('Iphone', 40.99), Venda('Sansung S19', 40.99)]));
  vendedores.add(Vendedor('Katiavala', [Venda('Manga', 10.00), Venda('Arroz', 40.90)]));

  //Organizar Lista de vendas pela soma total
  vendedores.sort((b, a) => (a.vendas.fold(0.0, (anterior, atual) => anterior + atual.preco)
      .compareTo( b.vendas.fold(0.0, (anterior, atual) => anterior + atual.preco))));
  // Organizar as vendas de cada vendedor
  vendedores.forEach((e) => e.vendas.sort((b, a) => a.preco.compareTo(b.preco)));

  vendedores.forEach((e) => print( 'Vendedor #${e.nome} \t ${e.vendas.length} vendas \t totalizando ${e.vendas.fold(0.0, (anterior, atual) => anterior + atual.preco)} reais \t vendas: ${e.vendas.map((e) => e.preco).toList()}'));

  print('\n16.1.9) List escopo de loops em Objetos\n');

  List<Proprietario> proprietarios = [];

  proprietarios.add(
    Proprietario(
      'Goncalves',
      'Rua do ceu',
      [
        Carro('Honda', 'Civic', 'ABC123', Caracteristicas('Passageiros', 5, 130, 'Gasolina'),
            multas: [
              Multa('Excesso de velocidade', 'Gravissima', 7),
              Multa('Estacionamento proibido', 'Grave', 5),
            ]),

        Carro('Fiat', 'Palio', 'CBA123', Caracteristicas('Passageiros', 5, 103, 'Gasolina'),
          multas: [
            Multa('Excesso de velocidade', 'Gravissima', 7),
            Multa('Estacionamento proibido', 'Grave', 5),
          ]),
      ],
    ),
  );


  proprietarios.forEach((e) => e.carros.forEach((e) => e.multas.sort((a,b) => a.pontos.compareTo(b.pontos)))); //multas em ordem crescente

  for( var i =0; i < proprietarios.length; i++) {
    var carros = proprietarios[i].carros;
    for(var carro in carros ){
      carro.multas.forEach((e) {
         print('${proprietarios[i].nome} \t ${carro.modelo} ${carro.caracteristica.tipo} \t ${e.description} ${e.tipo} - ${e.pontos} pontos');
       });
    }
  }
}
