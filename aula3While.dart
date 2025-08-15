//Do while -> Menu(Faça enquanto)
//While -> autenticação(verificar antes de fazer ações)


// import 'dart:io';

// void main(){
//   int number = 0;

//   do{
//     print("Hello");
//   }while(number > 1);
// }

import 'dart:io'; //Importar bibliotecas e funções do Dart
//Do while
// void main() {
//   String continuar = "";
//   do{
//     print("Bem vindo a floricultura da Giiii 🌹!");
//     print("1 - Comprar tulipas");
//     print("2 - Comprar rosas");
//     print("3 - Comprar orquídeas");

//     print("Deseja continuar comprando na floricultura da gigi?");
//     continuar = stdin.readLineSync()!;
//   } while(continuar == "sim");
// }

//While
// void main() {
//   stdout.write("Digite a senha: "); //stdout deixa do lado o input
//   String? senha = stdin.readLineSync();

//   while(senha != "1234"){
//     print("Tente novamente");
//     senha = stdin.readLineSync()!;
//   }
//   //Informações sensíveis
//   print("Acesso liberadooo");
//   print("Seu nome é israer do grau");
//   print("Olá rapaiz 🤨");
// }

  void main() {
    String escolha = "";
    do{
      print("Menu");
      print("Credito");
      print("Pix");
      print("Dinheiro");
      print("Debito");

      stdout.write("Digite uma forma de pagamento: ");
      escolha = stdin.readLineSync()!;
    } while (escolha != "Credito" && escolha != "Pix" && escolha != "Dinheiro" && escolha != "Debito");
  }