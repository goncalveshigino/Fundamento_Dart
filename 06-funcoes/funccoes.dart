void semRetorno() {

  print('06.0) Funcoes sem retorno\n');

  void conceito() {
    print('Funcao void sem retorno');
  }

  void somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    print('Soma: $valorA + $valorB = $resultado');
  }

  void verficarMaioridade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }
    print('$nome $resposta de idade!');
  }

  void contagemRegressiva(int numero) {
    for (var i = numero; i >= 0; i--) {
      print('Contagem: ${(i == 0) ? 'Vai!!!' : i}');
    }
  }

  converterkparaMilha(dynamic array) {
    dynamic milha = 0.621271;
    for (dynamic item in array) {
      print('$item\t km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    print('\nArray convertido e arredondado!\n');
  }

  conceito();
  somarValores(5, 6);
  verficarMaioridade('Higino', 25);
  converterkparaMilha([1, 2, 3, 4, 6, 20, 10, 67, 80, 90]);
}

comRetorno() {
  print('\n06.1) Funcoes com retorno\n');

  String conceito() {
    return 'Funcao com retorno String';
  }

  String somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    return 'Soma: $valorA + $valorB = $resultado';
  }

  String verficarMaioridade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }
    return '$nome $resposta de idade!';
  }

  String contagemRegressiva(int numero) {
    var resultado;
    for (var i = numero; i >= 0; i--) {
      (i != 0) ? print('Contagem: $i') : resultado = 'Contagem vai!!';
    }

    return resultado;
  }

  converterkparaMilha(dynamic array) {
    dynamic milha = 0.621271;
    for (dynamic item in array) {
      print('$item\t km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    return '\nArray convertido e arredondado!\n';
  }

  print(conceito());
  print(somarValores(2, 8));
  print(verficarMaioridade('Higino', 25));
  print(contagemRegressiva(3));
  print(converterkparaMilha([1, 2, 3, 4, 6, 20, 10, 67, 80, 90]));
}

void main() {
  semRetorno();
  comRetorno();
}
 