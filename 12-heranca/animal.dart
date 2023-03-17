class Animal {
  String? idade;
  bool docil;

  Animal(this.idade, {this.docil = false});

  void dormir() {
    print('Dorme como um animal');
  }
}