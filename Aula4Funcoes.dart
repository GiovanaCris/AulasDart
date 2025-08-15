//1º sem parametro / sem retorno
//2º com parametro / sem retorno
//3º com parametro / com retorno
//4º sem parametro / com retorno

import 'dart:io';

// //PRINT
// void main() { //principal
//   soma(10, 20);
// }

// void soma(int num1, int num2) {
//   int valor = num1 + num2;
//   print("$valor");
// }

//RETURN SEM PARAMETROS
void main() {
int valorFuncao = soma();
int valorFinal = valorFuncao * 2;
print("Valor final $valorFinal");
}

int soma() {
  int valor = 1 + 2;
  return valor;
}

//COM PARAMETROS
// void main() {
// int valorFuncao = soma(30,50);
// int valorFinal = valorFuncao * 2;
// print("Valor final $valorFinal");
// }

// int soma(int num1, int num2) {
//   int valor = num1 + num2;
//   return valor;
// }

// void somente_mostra(){
//   print("Bem vindo a floricultura da Gi");
//   print("Escolha as suas opções de flores, divão");
//   print("1- Orquídea");
//   print("2- Rosas");
//   print("3- Kalanchoe");
//   print("4- Suculentas");
//   print("5- Samambais");
// }

//Com parametro e sem retorno -> Precisa de informações mas não printa só mostra
//Sem parametros mas com retorno -> não manipula mas passa a função que você precisa