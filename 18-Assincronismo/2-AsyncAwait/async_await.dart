/*
  * Sincrona:
  - Operacoes sincronas: Bloqueia a execucao ate que seja concluida!
  - Funcoes sincronas: Executa somente operacoes sincronas.

  * Assincronas:
  - Operacoes assincronas: Permite executar outras operacoes enquanto sao processadas.
  - Funcoes assincronas: Executam ao menos uma opercao assincronae e operacoes sincronas.
  
  * Await:
  - Indica a espera uma operacao assincrona, conclusao de uma future!

  * Async:
  - Deve ser usado em toda funcao que tenha operacoes assincronas, Await!
 */

// * Funcoes Assincronas
Future<String> tarefa({int tempo = 1}) async {
  var msg = await status(tempo);
  return 'Status: $msg';
}

Future<String>? status([int? tempo]) {
  try {
    if (tempo! < 4) throw Exception('Tempo insuficiente para o Load programado!');
   //Future.error('Tempo insuficiente para o Load programado!');
    return Future.delayed(
        Duration(seconds: tempo), () => 'Primeira Tarefa finalizada!\n');
  } catch (e) {
    print('catch: $e');
    return null;
  }
}

// * Funcao Sincrona

void contagem({int segundos = 3}) {
  print('Carregando...\n');

  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('\nConcluido!');
    });
  }
}

main() async {
  print('18.2.0) Async Await');

  contagem(segundos: 3); // Funcao Sincrona

  print(await tarefa(tempo: 3)); // Funcao Assincrona
}
