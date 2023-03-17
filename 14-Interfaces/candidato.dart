import 'cidadao.dart';
import 'postagens.dart';
import 'presidenciavel.dart';

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