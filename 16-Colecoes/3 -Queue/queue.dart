import 'dart:collection';

///
/// * Queue e uma colecao ordenada entre chaves{}, sem index, que manipula o inico e o fim da lista
///

queue() {
  print('16.3.0) Queue\n');

  Queue<int> queue = Queue();

  queue.addAll([20, 30]);
  queue.add(40);
  queue.addFirst(10);
  queue.addLast(60);
  queue.removeLast();
  //queue.add(null);
  queue.forEach((e) => print(e));

  print(queue);
}

main() {
  queue();
}
