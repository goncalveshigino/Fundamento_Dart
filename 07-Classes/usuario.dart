class Usuario {
  String? usuario;
  String? senha;

  void autenticar() {
    var usuario = 'hino@user.com';
    var senha = '123456';

    if (this.usuario == usuario && this.senha == senha) {
      print('Usuario autenticado\n');
    } else {
      print('Usuario não autenticado\n');
    }
  }
}
