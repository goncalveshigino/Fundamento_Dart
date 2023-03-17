import 'mamiferos.dart';

class Cao extends Mamiferos {
  String name;
  String raca;

  Cao(this.name, this.raca,String? sexo, {String? idade, bool docil = false})
      : super(sexo, idade, docil) {
    this.idade = (idade == null) ? 'Indefinida' : idade;
    this.sexo = (sexo == null) ? 'Indefinido' : sexo;
  }

  void acao() {
    print('Late como um cao');
  }
}