 /**
  * Conceito
  -Mixin permite implementar metodos e atributos de outras classes

  *Regras
  -Devem ser implementados antes das interfaces
  -Podem ser implementados a partir de uma classe concreta ou abstrata
  -Nao pode implementar uma classe que estenda e exnteder de uma class mixin
  -Pode implementar mais de um mixin,  e nao e obrigatorio usar todos metodos e atributos
  As classes que possuem metodos iguais serao sobreescritas em ordem ate a classe herdeira

  *ON
  -E obrigatorio declarar sua classe como mixin.
  -Restring o uso de mixin as classes que estendem ou implementam a class declarada.
  */


abstract class Cidadao {
  String? nome;
  Cidadao(this.nome);

  void objectivodPessoais();

  void directosDeveres() {
    print('Todo cidadao tem direitos e deveres');
  }
}

abstract class Presidenciavel {
  String? partido;
  String? ideologia;

  void idiologiaPolitica();
}

class Postagem {
  String? postagem;

  void escreverPostagem() {
    print('');
  }
}



class Candidato extends Cidadao implements Postagem, Presidenciavel {
  String? objetivos;

  Candidato(String nome, {this.ideologia, this.partido}) : super(nome) {
    directosDeveres();
  }

  @override
  void objectivodPessoais() {
    print('$nome tem o objetivo de $objetivos');
  }

  @override
  String? postagem;

  @override
  void escreverPostagem() {
    print('Postagem de $nome no facebook: $postagem');
  }

  @override
  String? ideologia;

  @override
  String? partido;

  @override
  void idiologiaPolitica() {
    print(
        '$nome e candidato com ideologia de $ideologia pelo partido $partido');
  }
}


void main() {
  print('15.0) Mixin');

  var bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL');
  bolsonaro
    ..objetivos = 'Ganhar eleicao'
    ..objectivodPessoais()
    ..postagem = 'Vou acabar com a corrupcao no brazil'
    ..escreverPostagem()
    ..idiologiaPolitica();
}