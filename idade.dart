import 'dart:io';

void main(){
  print("Digite sua idade campeã (o): ");
  String? entrada = stdin.readLineSync();
  int idade = int.parse(entrada!); //Converte o valor do input apenas se houver dados

  if(idade >= 18) {
    print("Você pode dirigir 🚗");
  }
  else{
    print("Você deve beber toddynho e pegar um Uber ✨");
  }

  // print("Digite sua idade atual: ");
  // String? entrada = stdin.readLineSync();
  // int idade = int.parse(entrada!);
  // int idade_maior = idade + 1;

  // print("Sua idade é $idade e sua idade ano que vem é $idade_maior");
}