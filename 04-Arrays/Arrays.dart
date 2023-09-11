//Lista Dinamica e ordenada

void main() {
  print('04-Arrays');

  var textos = ['Fernando', 'Higino'];
  var numeros = [1, 2, 3, 5, 31, 36];

  var condicoes = [!false, true, false, null];
  print('${textos[0]} e ${textos[1]}');
  print('${textos[0]} tem ${numeros[4]} anos');

  print('${textos[1]} ${numeros[3] > 17 ? 'e maior' : 'Nao e maior'} de idade');

  print('condicoes[3] == null: ${condicoes[3] ?? (condicoes[0]! ? condicoes[1] : condicoes[2])}');

  bool verdadeiro = !false;
  var arrayDinamicos = ['texto', [], 2, 3, 4, verdadeiro];

  print(arrayDinamicos);

  arrayDinamicos[0] = textos[0];
  arrayDinamicos[1] = ['Higino', 'Luis', 'katiavala'];
  arrayDinamicos[2] = numeros[2];
  arrayDinamicos[3] = numeros[1];
  arrayDinamicos[4] = !verdadeiro;
  print(arrayDinamicos);

  print('\n04.1) Arrays Functions\n');
  //arrayDinamicos.add(condicoes[3]!);
  arrayDinamicos.insert(0, 'Rodeira');
  print(arrayDinamicos);
  arrayDinamicos.removeAt(1);
  print(arrayDinamicos);
  arrayDinamicos.removeRange(1, 4);
  print(arrayDinamicos);
  arrayDinamicos.remove('Rodeira');
  print(arrayDinamicos);

  arrayDinamicos.clear();
  print('$arrayDinamicos == null: ${arrayDinamicos}');
  print('$arrayDinamicos == empty: ${arrayDinamicos.isEmpty}');

  arrayDinamicos.length = 1;
  print('$arrayDinamicos ?? ${arrayDinamicos.contains(null)}');

  numeros = [10, 5, 3, 4, 5, 6];
  numeros.sort();
  print(numeros);

  textos = ['Higino', 'Luis', 'Katiavala'];
  textos.sort((b, a) => a.compareTo(b));
  print(textos);
}
