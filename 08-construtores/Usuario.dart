
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
