///
///Os construtores evem ter o mesmo nome da classe
/// Eles sao iniciados quando onstanciamos as classes, podenedo fazer configuracoes inicias

void main() {
  print('08.0) Construtores\n');

  Objeto objeto = Objeto();
  objeto.nome = 'Mesa';
  print('Nome: ${objeto.nome}\n');

  Animal animal = Animal('Luis', 'Pug');
  print('Nome: ${animal.nome} raca: ${animal.raca} idade: ${animal.idade}\n');

  Pessoa pessoa = Pessoa('Higino', 25, altura: 1.72);
  print('nome: ${pessoa.nome} idade: ${pessoa.idade} cor: ${pessoa.cor} altura: ${pessoa.altura}');

  Usuario usuario = Usuario('higino@user', '123456', nome: 'Higino');
  print('usuario: ${usuario.user} senha: ${usuario.senha} nome: ${usuario.nome} cargo: ${usuario.cargo}');

  usuario.autenticar();

  //Dados inseridos pelo admin
  Usuario admin = Usuario.admin('higino@user', '123456', nome: 'Higino');
  print('admin: ${admin.user} senha: ${admin.senha} nome: ${admin.nome} cargo: ${admin.cargo}');
  admin.autenticar();
}

class Usuario {
  String? user, senha, nome, cargo;
  int? idade;

  Usuario(this.user, this.senha, {this.nome, String? cargo}) {
    this.nome = (nome == null) ? 'semnome' : nome;
    this.cargo = (cargo == null) ? 'Usuario' : cargo;
    print('Construtoe resumido com paramatros nomeados! ${this.toString()}');
  }

  Usuario.admin(this.user, this.senha, {this.nome}) {
    this.nome = (nome == null) ? 'semnome' : nome;
    this.cargo = 'Administrador';
    print('Construtoe resumido com paramatros nomeados! ${this.toString()}');
  }

  void autenticar() {
    //dados recuperados no banco de dados
    var user = 'higino@user';
    var senha = '123456';
    (this.user == user && this.senha == senha) ? print('Usuario autenticado') : print('Usuario nao autenticado');
  }
}

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

class Objeto {
  String? nome;

  Objeto() {
    print('construtor sem Parametros! ${this.toString()}');
  }
}
