import 'Contas.dart';
import 'Usuario.dart';

///
///Encapsuladores sao usuados para proteger os atributos e variaveis
///Get é usado para acessar e o Set é usado para alterar
///

void main() {
  print('09.0) Encapsuladores\n');

  var usuario = Usuario('Higino', 'goz23');
  usuario
    ..senha = '2345'
    ..alteracao = true
    ..senha = '2345';
  print(usuario.senha);

  var conta = Conta('Higino Luis');
  conta
    ..deposito = 1000
    ..deposito = 700
    ..saque = 500;

  print('');

  conta
    ..limite = 500
    ..alterarLimite = true
    ..limite = 1000
    ..alterarLimite = false;

  print('');

  conta
    ..saque = 900
    ..saque = 300;
  print('${conta.informacao}\n');

  Conta contaVip = Conta.vip('Deolinda Fernanda', limite: 33000);
  contaVip
    ..deposito = 3000
    ..saque = 1500
    ..limite = 15000
    ..saque = 15000;
  print(contaVip.informacao);
}

class Teste {
  String? _nome;

  String get nome => _nome!;

  set nome(String nome) {
    _nome = nome;
  }
}
