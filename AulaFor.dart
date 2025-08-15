import 'dart:io';

void main() {
  List<int> numeros = [1,3,5];
  numeros.forEach((int i){
    i += 1;
    print(i);
  });
  print(numeros);
}
//   List<String> frutas = [];

//   for(int i = 0; i < 3; i++){
//     print("Digite sua fruta predileta");
//     String? fruta = stdin.readLineSync();
//     frutas.add(fruta!);
//   }

//   //O var recebe qualquer tipo de valor
//   for(var i in frutas) {
//     print("$i");
//   }

//   //Serve para fazer ações para cada dado da lista frutas
//   frutas.forEach((String i) => print(i));
// }
