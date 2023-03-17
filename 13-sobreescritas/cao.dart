import 'mamiferos.dart';

class Cao extends Mamiferos {
  
  String? nome;
  String? raca;

  Cao.domestico(this.nome, this.raca, String? sexo,
      {String idade = 'Indefinida', bool docil = true})
      : super.placentarios(sexo, idade, docil: docil);

  Cao.selvagens(this.nome, this.raca, sexo,
      {idade = 'Indefinida', docil = false})
      : super.placentarios(sexo, idade, docil: docil);

  @override
  void dormir() {
    print('Dormi como um cao! :)');
  }

  void alimentar() {
    super.alimentar(); //Implementa o escopo do metodo herdado(Super)
    print('Cao');
  }

  //Metodos sem escopos em classes abstratas devem ser sobreescritos
  void reproduzir() {
    print('Reproduz como um cao');
  }

  void acao() {
    print('Late como um cao');
  }

  //Toda classe extends de Objects, ao usar a funcao toString retorna (Instance of 'Object')
  String toString() {
    return "Instance of '${this.runtimeType}' nome: $nome raca: $raca sexo: $sexo ";
  }
}