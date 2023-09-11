///
///Uma funcao closures ocorre quando uma funcao é declarada dentro do corpo de outra funcao
///Podendo retornar as variaveis locais e da funcao superior
///

funcaoClosures() {
  
  print('\n06.5.1) Closures sem retorno\n');

  var saudacao = (String nome) {
    var mensagem = (complemento) => print('Ola $nome $complemento');
    mensagem('Seja bem vindo');
  };

  print(saudacao);
  saudacao('Katiavala');

  print('\n06.5.1) Closures com retorno\n');

  Function somar(int valorA) {
    print(valorA);
    return (double valorB) {
      print(valorB);
      return valorA + valorB;
    };
  }

  var somarDez = somar(10);
  print(somarDez(5.0));

  Function porcentagem(desconto) => (valor) => desconto * valor;
  var descontarDez = porcentagem(0.9);
  var descontarVinte = porcentagem(0.8);
  print(descontarDez(100));
  print(descontarVinte(100));

  print('\n06.5.1) Closures com Objectos\n');

  var novoObjecto = () {
    var id = 0;
    var objectoCriado = (String nome, descricao) {
      //return 'id: ${(++id).toString().padLeft(2, '0')} nome:, $nome, descricao: $descricao';
      //return {'id': (++id).toString().padLeft(2, '0'), 'nome': nome, 'descricao': descricao};
      return Objeto.fromMap({'id': (++id).toString().padLeft(2, '0'), 'nome': nome, 'descricao': descricao});
    };
    return objectoCriado;
  };

  var objecto = novoObjecto();
  print(objecto);

  var listaObjectos = [objecto('Higino', 1.72)];
  listaObjectos.add(objecto('Iphome', 3000.00));
  listaObjectos.add(objecto('Macboock', 2000.00));

  for (var objecto in listaObjectos) {
    //print(objecto.substring(2));
    //print(objecto.map((c, v) => MapEntry(c, (v is double) ? '${descontarDez(v)}' : v)));
    print((objecto.descricao is num) ? descontarVinte(objecto.descricao) : objecto.descricao);
  }
}

class Objeto {
  String? id, nome;
  dynamic descricao;
  Objeto({
    this.id,
    this.nome,
    this.descricao,
  });

  factory Objeto.fromMap(Map<String, dynamic> map) {
    return Objeto(
      id: map['id'].toString(),
      nome: map['nome'],
      descricao: map['descricao'],
    );
  }
}

void main() {
  funcaoClosures();
}
