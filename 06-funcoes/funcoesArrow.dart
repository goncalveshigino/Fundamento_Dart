///
///Funoes tem o retorno implicito
///
funcaoAroow() {
  print('06.2) Funcoes arrow\n');

  String conceito() => 'Funoes tem o retorno implicito';

  String somarValores(int valorA, int valorB) => 'Soma: $valorA + $valorB = ${valorA + valorB}';

  String verificarMaiorIdade(String nome, int idade) => (idade >= 18) ? '$nome é maior de idade' : '$nome é maior de idade';

  String calcularAreaCirculo(double raio) => 'Area do circulo: ${3.14 * raio * raio}';

  double desconto(int faltas ) => (faltas > 1) ? 0.8 : (faltas == 1) ? 0.9 : 0;

   void calcularSalario(String nome, double salario, double bonus, int faltas){
    var total =(salario * desconto(faltas) + bonus);
    print('Empregado: $nome salario: $total');
   }

  print(conceito());
  print(somarValores(3, 6));
  print(verificarMaiorIdade('Higino', 23));
  print(calcularAreaCirculo(2));
  calcularSalario('Higino', 10, 20, 2);
}

void main() {
  funcaoAroow();
}
