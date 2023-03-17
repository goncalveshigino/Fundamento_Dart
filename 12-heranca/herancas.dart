/*
  * Regras 
  -Uma class pode ter somente uma heranca! 

  * Construtores 
  -Devem obedecer a ordem dos parametros
  -Parametros default devem ser nomeados ou posicionados
  -Tratamento de tipagem de parametros deve ser feito na classe herdeira!
 */

import 'cao.dart';

void main() {
  print('12.0) Heranca de atributos metodos e construtores');

  // Mamiferos mamiferos = Mamiferos('Macho', '2 anos', true);

  // print('Sexo: ${mamiferos.sexo} Idade: ${mamiferos.idade} Docil: ${mamiferos.docil}');

  Cao cao = Cao('Max', 'Pastor', 'Macho');

  print(
      'name: ${cao.name} raca: ${cao.raca} sexo: ${cao.sexo} idade: ${cao.idade} docil: ${cao.docil}');
  cao
    ..dormir()
    ..alimentar()
    ..acao();

  print('${cao.name} ${cao.docil ? 'esta amigavel' : 'Nao esta amigavel'}');
}
