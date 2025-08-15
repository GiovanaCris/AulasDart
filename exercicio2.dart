//Média salarial

import 'dart:io';

void main() {
  print("Digite seu nome: ");
  String? nome = stdin.readLineSync();
  String nome2 = nome!.toLowerCase();

  print("Digite um salário: ");
  String? entrada1 = stdin.readLineSync();
  double salario1 = double.parse(entrada1!);

  print("Digite um segundo salário: ");
  
  String? entrada2 = stdin.readLineSync();
  double salaria2 = double.parse(entrada2!);

  print("Digite um terceiro salário: ");
  String? entrada3 = stdin.readLineSync();
  double salaria3 = double.parse(entrada3!);

  double media = salario1 + salaria2 + salaria3 / 3;

  if (media >= 500){
    print("${nome2}, Cuidado com as contas!");
  }else if(media >= 1000 || media <= 2000){
    print ("${nome2}, Arrasou!");
  }else if(salario1 < 0 || salaria2 < 0  || salaria3 < 0){
    print ("${nome2}, Digite um valor válido!");
  }
}