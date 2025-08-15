import 'dart:io';

void main() {
  print("Digite sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  bool maiorDeIdade = ehMaiorIdade(idade);

  if (maiorDeIdade) {
    print("Você é maior de idade.");
  } else {
    print("Você é menor de idade.");
  }
}

bool ehMaiorIdade(int idade) {
  if (idade >= 18) {
    return true;
  } else {
    return false;
  }
}