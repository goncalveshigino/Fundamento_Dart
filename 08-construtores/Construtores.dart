import '../06-funcoes/funcoesClosures.dart';
import 'Animal.dart';
import 'Pessoa.dart';
import 'Usuario.dart';

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
  Usuario admin = Usuario.admin('higino@user', '12356', nome: 'Higino');
  print('admin: ${admin.user} senha: ${admin.senha} nome: ${admin.nome} cargo: ${admin.cargo}');
  admin.autenticar();
}





