//Para ver os arquivos da pasta usa dir ou ls
import 'dart:io'; //importa a biblioteca com as funções da linguagem

void main(){ //Função principal para o código, sem ela NÃO funciona
  print("Digite seu nome: "); //Mensagem que aparece no input, para o programa não ter loop infinito
  String? nome = stdin.readLineSync(); //Input ? indica que a variável pode ser nula
  String nome2 = nome!.toLowerCase();

  if (nome == "gigi") { //Utilizar parênteses para a expressão
    print("Você é a(o) melior 😎");
  }
  else if(nome2 == "israer") {
    print("Ia ê $nome 🐱‍🏍");
  }
  else{
    print("sai daq moço, vc não é a(o) melior 😒😒");
  }
}