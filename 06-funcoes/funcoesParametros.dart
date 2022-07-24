
///
///Funcoes com parametros posicionados devem obeder a ordem declarada
///Funcoes com parametros nomeados deve ser declarado
///OS parametros posicionados ou nomeados devem comecar pelo ultimo parametro da funcao
///

funcaoParamentros() {
  print('06.3) Funcoes com parametros posicionados e default\n');

  void exibirDados1(String nome, [int peso = 30, double? altura]) {
    print('Nome: $nome, Peso: $peso, Altura: $altura');
  }

  exibirDados1('Higino');
  exibirDados1('Higino', 70, 1.85);

  print('\n06.3.2) Funcoes  com parametros nomeados e default\n');

  exibirDados2(String nome, {int peso = 87, double? altura}) {
    print('Nome: $nome, Peso: $peso, Altura: ${ altura ?? 'Não informada!'}');
  }
  
   exibirDados1('Katia');
  exibirDados2('Katia',  peso: 87);
}

void main() {
  funcaoParamentros();
}
