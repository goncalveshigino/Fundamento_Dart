import 'candidato.dart';

/**
   * Conceito
   -Interfaces  sao modelos para implementar metodos e atributos em nossas classes

   * Regras
   -Ao implemnetar uma interface devemos utilizar todos os metodos e atributos
   -No dart nao tem sintaxe para interfaces, pode ser uma classe concreta ou abstrata
   -Pode implementar mais de uma interface e deve sobreescrever todos metodos e atributos
 */

void main() {
  print('15.0) Interfaces');

  var bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL');
  bolsonaro
    ..objetivos = 'Ganhar eleicao'
    ..objectivodPessoais()
    ..postagem = 'Vou acabar com a corrupcao no brazil'
    ..escreverPostagem()
    ..idiologiaPolitica();
}
