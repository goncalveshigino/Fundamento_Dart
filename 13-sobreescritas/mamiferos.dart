import 'animal.dart';

abstract class Mamiferos extends Animal {
  String? sexo;
  String? desenvolvimento;

  Mamiferos.placentarios(this.sexo, String? idade, {bool docil = false})
      : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Plancentarios';
  }

  Mamiferos.marsupiais(this.sexo, String? idade, {bool docil = false})
      : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Plancentarios + Bolsa interna';
  }

  Mamiferos.monotremados(this.sexo, String? idade, {bool docil = false})
      : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  void alimentar() {
    print('Se alimeta');
    print('Como um');
  }

  //Metodos sem escopo em classes abstratas devem ser sobre escritos em classes herdeiras
  void reproduzir();
}