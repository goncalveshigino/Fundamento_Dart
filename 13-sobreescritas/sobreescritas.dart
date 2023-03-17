/*
  *Metodo (override/sobreesposicao != overload/sobrecarga)
  - Overrride: Temos sobreescritas dos metodos da classe pai na classe herdeirac

  *Construtores
  -Super se refere ao construtor da classe herrdeira

  *Classes Abstratas
  -Nao podem ser instancias servem como modelo
  -Metodos sem escopo devem ser sobreescritis nas classes herdeiras
*/
import 'cao.dart';

void main() {
  print('13.0) Sobreescritas de Metodos Atributos e construtores');

  var cao = Cao.selvagens('Max', 'Pug', 'Macho');

  print(
      'Nome: ${cao.nome} Raca: ${cao.raca} Sexo: ${cao.sexo} Idade: ${cao.idade} Docil: ${cao.docil}');

  print(
      'Desenvolvimento: ${cao.desenvolvimento} Tipo: ${cao.coluna ? 'Vertebrado' : 'Invertebrado'}');
  cao
    ..dormir()
    ..alimentar()
    ..reproduzir()
    ..acao();

  print(cao);
  print('${cao.nome} ${cao.docil ? 'Esta amigavel' : 'Nao esta amigavel'}');
}
