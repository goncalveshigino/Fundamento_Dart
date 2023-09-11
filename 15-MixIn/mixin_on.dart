// abstract class Artista {
//   void acao() {
//     print('Performista...');
//   }
// }

// mixin Cantor on Artista {
//   void acao() {
//     print('canta');
//   }
// }

// class Dansarino {
//   void acao() {
//     print('danca');
//   }
// }

// abstract class Acao {
//   void executar();
// }

// class Musico extends Artista with Dansarino, Cantor implements Acao {
//   void acao() => print('Compor');

//   @override
//   void executar() {
//     super.acao();
//     acao();
//   }
// }

// class Mc with Dansarino implements Acao {
//   void acao() => print('Mixa...Barulho');

//   @override
//   void executar() {
//     super.acao();
//     acao();
//   }
// }

// void main() {
//   print('15.1) MixIn On\n');

//   Musico musico = Musico();
//   musico.executar();

//   Mc mc = Mc();
//   mc.executar();
// }
