import 'dart:io';

void main() {
  print("Bem vindo ao menu...");
  print("1 - Para comprar arroz");
  print("2- Para comprar feijão");
  print ("3- Para comprar carne");

  print("Digite de 1 a 3");
  int opcao = int.parse(stdin.readLineSync()!);

  switch(opcao){
    case 1:
      print("Arroz adicionado a sacola");
      break;
    case 2:
      print("Feijão adicionado");
      break;
    case 3:
      print("Carne adicionada");
      break;
    default:
      print("Opção inválida");
      break;
  }

}