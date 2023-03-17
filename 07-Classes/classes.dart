import 'conta.dart';
import 'pessoa.dart';
import 'usuario.dart';

///
///Classes => Objectos
///Variaveis => atributos
///Funcoes => metodoa
///

void main() {
  
  Pessoa pessoa1 = Pessoa();
  pessoa1.nome = 'Higino';
  pessoa1.idade = 67;

  print('Nome: ${pessoa1.nome} idade: ${pessoa1.idade}');

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'Lidia';
  pessoa2.idade = 30;

  print('Nome: ${pessoa2.nome} idade: ${pessoa2.idade}');

 //Operador em cascata permite emitir varias chamadas por meio de um objeto
  var pessoa3 = Pessoa();
  pessoa3
    ..nome = 'Katia'
    ..idade = 13
    ..info();

  //Dados inserido pelo usuario
  Usuario usuario = Usuario();
  usuario.usuario = 'hino@user.com';
  usuario.senha = '12356';
  usuario.autenticar();

  Conta conta = Conta();
  print('Nome: ${conta.nome} Nº Conta: ${conta.numeroConta} Saldo: ${conta.consultarSaldo()}');

  conta.calcularSalario(4000, 130, 2);
  conta.depositar(200);
  conta.sacar(2000);

}
