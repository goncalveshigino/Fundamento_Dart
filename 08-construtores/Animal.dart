class Animal {
  String? nome;
  String? raca;
  int? idade;

  Animal(this.nome, [this.raca, this.idade = 0]) {
    nome = nome;
    raca = raca;
    idade = idade;
    print('Construtor com parametro defaul! ${this.toString()}');
  }
}
