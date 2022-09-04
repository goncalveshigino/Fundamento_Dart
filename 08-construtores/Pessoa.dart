
class Pessoa {
  String? nome;
  int? idade;
  String? cor;
  double? altura;

  Pessoa(this.nome, this.idade, {String? cor, this.altura = 0}) {
    this.cor = (cor == null) ? 'Indifinida' : cor;
    print('Construtor resumido com parametro nomeado! ${this.toString()}');
  }
}
