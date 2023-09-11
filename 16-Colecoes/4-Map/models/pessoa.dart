class Pessoa {
  static final Map<String, Pessoa> _pessoas = Map();
  final String nome;
  int? idade;
  double? peso;

  factory Pessoa(String nome, {int? idade, double? peso}) {
    if (_pessoas.containsKey(nome)) return _pessoas[nome]!;
    final novaPessoa = Pessoa._consttrutorPrivado(nome, idade, peso);
    _pessoas[nome] = novaPessoa;
    return novaPessoa;
  }

  Pessoa._consttrutorPrivado(this.nome, this.idade, this.peso) {}

  static void mostrarDetalhes(String nome) {
    if (_pessoas.containsKey(nome)) {
      print('Detalhes: nome $nome idade: ${_pessoas[nome]!.idade} peso: ${_pessoas[nome]!.peso}');
    } else {
      print('"${nome}" nao existe no map de Pessoas');
    }
  }

  static void alterDetalhes(String nome, {int? idade, double? peso}) {
    if (_pessoas.containsKey(nome)) {
      _pessoas[nome]?.idade = idade;
      _pessoas[nome]?.peso = peso;
      print('Alterecao: nome: $nome idade: ${_pessoas[nome]!.idade} peso: ${_pessoas[nome]!.peso}');
    } else {
      print('"${nome}" nao existe no map de Pessoas');
    }
  }

  static void mostrarPessoas() {
    print("pessoas: $_pessoas");
    _pessoas.forEach((key, value) => print('forEach: $key: ${value.idade}, ${value.peso}'));
  }

  @override
  String toString() {
    return '$nome: $idade';
  }
}