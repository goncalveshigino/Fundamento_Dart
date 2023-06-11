import 'dart:collection';

///
/// * Set e uma colecao de elementos unicos e ordenados entre chaves {}. Nao tem acesso ao indice!
///

linkedHashSet() {
  print('16.2.0) LinkedHashSet == Set \n');

  Set<int> setInt = Set();
  print('Implementacao: ${setInt.runtimeType}');
  //setInt[0] = 0; // Nao tem acesso a indice

  setInt.add(13);
  setInt.add(13); // Nao pode conter elementos iguais
  // setInt.add(null); // Nao pode conter Null
  setInt.add(17);
  setInt.remove(13);

  for (var i = 0; i < setInt.length; i++) {
    print('For: ${setInt.elementAt(i)}');
  }

  for (var element in setInt) {
    print('For in: ${element}');
  }

  setInt.forEach((e) => print('forEach: $e'));

  Set<int> listaA = {0, 1, 2, 3, 4};
  Set<int> listaB = {3, 4, 5, 6, 7};

  print(listaA.difference(listaB));
  print(listaA.union(listaB));
  print(listaA.intersection(listaB));
  print(listaA.lookup(0));
}

///* HashSet e uma colecao de elementos unicos e desordenados

hashSet() {
  print('\n16.2.1) Hashset\n');

  HashSet<String> hashSet1 = HashSet();
  HashSet<int> hashSet2 = HashSet();
  HashSet<int> hashSet3 = HashSet();
  print('Implementacao: ${hashSet1.runtimeType}');

  hashSet1.add('A');
  hashSet1.add('B');
  hashSet1.add('C');
  hashSet1.add('D');
  hashSet1.add(null.toString());

  hashSet2.add(1);
  hashSet2.add(2);
  hashSet2.add(3);

  hashSet3.add(22);
  hashSet3.add(33);
  hashSet3.add(44);

  print(' $hashSet1 \n$hashSet2 \n$hashSet3');

  for (var i = 0; i < hashSet1.length; i++) {
    print('For hashset1: ${hashSet1.elementAt(i)}');
  }

  for (var elemento in hashSet2) {
    print('for in hashSet2: $elemento');
  }

  hashSet3.forEach((e) => print('forEach hashSet3: $e'));
}

///
/// * SplaTreeSet organiza automaticamente os elemento em ordem crescente
/// * Por ser uma arvore de comparacoes nao pode conter elementos null
splayTreeSet() {
  print('\n16.2.3) SplayTreeSet\n');

  SplayTreeSet<String> splayTreeSet = SplayTreeSet();
  print('Implentacao: ${splayTreeSet.runtimeType}');
  splayTreeSet.add('info1');
  splayTreeSet.add('info2');
  splayTreeSet.add('info');
  splayTreeSet.add('info3');
  //splayTreeSet.add(null); // Nao pode conter null

  print(splayTreeSet);

  for (var i = 0; i < splayTreeSet.length; i++) {
    print('For: ${splayTreeSet.elementAt(i)}');
  }

  for (var elemento in splayTreeSet) {
    print('for in: $elemento');
  }

  splayTreeSet.forEach((e) => print('forEach: $e'));
}

main() {
  linkedHashSet();
  hashSet();
  splayTreeSet();
}
