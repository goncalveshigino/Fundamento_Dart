/**
   * * TRATAMENTO DE EXCECAO
   * - try: Usado para testar uma logica.
   * - catch: Captura erros na logica try.
   * - on: Captura especificos/conhecidos na logica try
   * - throw Exception: Excecao criada pelo usuario e tratada no catch
   * - finaly: Executado ao final try/catch, com excecao ou nao! Utilizado liberar recursos na logica try
 */

///
///Caso1: Quando voce desconhece a excecao, use a clausula try catch

caso1() {
  print('17.0.1) Try Catch\n');

  try {
    int resultado = 1 ~/ 0;
    print("Resultado: $resultado");
  } catch (e) {
    print("Excecao: $e");
  }
}

///
/// CASO2- Quando voce conhece a excecao, use a clausula ON
///

caso2() {
  print('17.0.2) ON\n');

  try {
    int resultado = 1 ~/ 0;
    print("Resultado: $resultado");
  // ignore: deprecated_member_use
  } on IntegerDivisionByZeroException {
    print('Nao e possivel dividir por zero!');
  } catch (e) {
    print("Excecao: $e");
  }
}


///
/// CASO3: Para descobrir eventos ocorridos antes de execucao, use stack trace!
/// 


caso3() {
  print('17.0.3) Stack Trace\n');

  try {

    int resultado = 1 ~/ 0;
    print("Resultado: $resultado");

  } catch (e,s) {
    print("Excecao: $e");
    print("Stack Trace: $s");
  }
}
///
/// CASO4: Use finally para tratamento apos execucao do Try Catch, usada para liberar recuros utilizados na logica TRY CATCH
/// 

caso4() {
  print('17.0.4) finally\n');

  try {

    int resultado = 1 ~/ 0;
    print("Resultado: $resultado");

  } catch (e) {
    print("Excecao: $e");
  } finally {
    print('finally com ou sem excecao "finally" sera executado!');
  }
}



caso5() {
  print('17.0.5) throw exception\n');

  try {

    int valorA = 1;
    int valorB = 0;
    double resultado = valorA / valorB;
    
    if(resultado.isInfinite) throw Exception('A variavel valorB deve ser != 0');

    print("Resultado: $resultado");

  } catch (e) {
    print("Excecao: $e");
  } finally {
    print('finally com ou sem excecao "finally" sera executado!');
  }

}

main() {
  print('17.0.0) Tratamento de Excecoes\n');

  caso1();
  caso2();
  //caso3();
  caso4();
  caso5();
}
