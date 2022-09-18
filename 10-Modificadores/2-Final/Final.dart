import 'Pessoa.dart';

/**
 * Final 
 * Inicializada apenas quando acessada em tempo de execucao, deve ser declarada!
 * Em colecoes final nem todo o conteudo sera final
 */

void main() {
  print('10.1) Modificadores final\n');

  // Objecto em queda livre leva 5s para chegar ao solo! Qual é a velocidade maxima do objeto?

  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo;

  print('Velocidade maxima: $velocidade m/s\n');

  for (int i = 1; i <= 3; i++) {
    final indice = i;
    print('Contagem: $indice');
  }

  var pessoa = Pessoa('Higino', ['Nandinho', 'Gugu']);
  pessoa.nome = 'Gonçalves Higino';
  //pessoa.familares = [];
  print('Nome: ${pessoa.nome} Familiares: ${pessoa.familares}');
}

