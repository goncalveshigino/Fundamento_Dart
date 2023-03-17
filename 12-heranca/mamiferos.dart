


import 'animal.dart';

class Mamiferos extends Animal {

  String? sexo;

  Mamiferos(this.sexo, String? idade,bool docil) : super(idade, docil: docil);

  void alimentar() {
    print('Se alimenta como um mamifero');
  }
}