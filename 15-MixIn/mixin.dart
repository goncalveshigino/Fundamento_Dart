// /**
//   * Conceito
//   -Mixin permite implementar metodos e atributos de outras classes

//   *Regras
//   -Devem ser implementados antes das interfaces
//   -Podem ser implementados a partir de uma classe concreta ou abstrata
//   -Nao pode implementar uma classe que estenda e exnteder de uma class mixin
//   -Pode implementar mais de um mixin,  e nao e obrigatorio usar todos metodos e atributos
//   As classes que possuem metodos iguais serao sobreescritas em ordem ate a classe herdeira

//   *ON
//   -E obrigatorio declarar sua classe como mixin.
//   -Restring o uso de mixin as classes que estendem ou implementam a class declarada.
//   */

// abstract class Cidadao {
//   String? nome;
//   Cidadao(this.nome);

//   void objectivodPessoais();

//   void directosDeveres() {
//     print('Todo cidadao tem direitos e deveres');
//   }
// }

// abstract class Presidenciavel {
//   String? partido;
//   String? ideologia;

//   void idiologiaPolitica();
// }

// class Postagem {
//   String? postagem;

//   void escreverPostagem() {
//     print('');
//   }
// }

// //MixIn

// mixin Elegivel on Cidadao {
//   bool elegivel = false;

//   void prestacaoContas();
// }

// abstract class Conta {
  
//   double? _saldo;
//   double salario = 5000;

//   get saldo => this._saldo;
//   set depositar(double valor) => this._saldo = valor;

//   bool declaracaoRenda() => _saldo! / 12 < salario;
// }

// class Candidato extends Cidadao
//     with Elegivel, Conta
//     implements Postagem, Presidenciavel {
//   String? objetivos;

//   Candidato(String nome, {this.ideologia, this.partido}) : super(nome) {
//     directosDeveres();
//   }

//   @override
//   void objectivodPessoais() {
//     print('$nome tem o objetivo de $objetivos');
//   }

//   @override
//   String? postagem;

//   @override
//   void escreverPostagem() {
//     print('Postagem de $nome no facebook: $postagem');
//   }

//   @override
//   String? ideologia;

//   @override
//   String? partido;

//   @override
//   void idiologiaPolitica() {
//     print(
//         '$nome e candidato com ideologia de $ideologia pelo partido $partido');
//   }

//   @override
//   void prestacaoContas() {
//     elegivel = super.declaracaoRenda();
//     if (elegivel) {
//       print(
//           'Candidato $nome passou na prestacao de contas!\nAutorizado a concorrer nas eleicoes 2027');
//     } else {
//       print(
//           'Candidato $nome foi barrado na prestacao de contas $saldo excode a renda declarada para Presidente');
//     }
//   }
// }

// void main() {
//   print('15.0) Mixin');

//   var bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL');

//   bolsonaro
//     ..objetivos = 'Ganhar eleicao'
//     ..objectivodPessoais()
//     ..postagem = 'Vou acabar com a corrupcao no brazil'
//     ..escreverPostagem()
//     ..idiologiaPolitica()
//     ..depositar = 77000
//     ..prestacaoContas();
// }
