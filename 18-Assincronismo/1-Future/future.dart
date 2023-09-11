///
/// * Future:
/// - Objecto que retorna um valor ou erro, resultado de uma execucao assincroba/futura
///

String tarefa({int tempo = 1}) {
  var msg = status(tempo);
  return 'Status: $msg';
}

Future<String> status([int? tempo]) {
  return Future.delayed(
      Duration(seconds: tempo!), () => 'Primeira Tarefa finalizada!\n');
}

void novaTarefa({int tempo = 1}) {
  Future.delayed(Duration(seconds: tempo),
      () => print('\nStatus: Segunda Tarefa finalizada!\n'));
}

void contagem({int segundos = 3}) {
  print('Carregando...\n');

  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('\nConcluido!');
    });
  }
}

main() {
  print('10.0.0) Futures\n');

  print(tarefa(tempo: 4));

  novaTarefa(tempo: 4);

  contagem();
}
