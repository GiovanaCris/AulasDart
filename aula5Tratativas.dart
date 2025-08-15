//DartDev -> erro
//Comentar as diferenças entre o modelo do dart e de outras programações (comparando as diferenças
//Ideia para a prova: fazerum sistemina de Login ent quando o código rodar irá pergunrtar se o usuário é usuário comum ou administrador, se for admin irá pedir uma senha e ele terá funcionalidades específicas
//Mínimo 4 formas de pagamento
//Tem que mostrar o valor do produto, o valor que ele pagou e o valor do troco caso haja
//Tratar o erro do pagamento

import 'dart:io';

void main() {
  //Try/Catch
  try { //tenta fazer igual
    print("Digite seu numero israelbanguela: ");
    int numero = int.parse(stdin.readLineSync()!);

  } on FormatException{ //Aqui mostra respostas personalizadas para cada tipo de erro.
    print("Digite apenas números");
  } on TypeError {
    print("Conversão de dados inválida");
  }
  }

  //Fica com a mensagem de erro padrão
  // }catch(israelbanguela){ //e == erro
  //   print("Esse é seu erro $israelbanguela");

  // }finally{ //independente do que aconteça execute:
  //   print("Encerrando Programa");
  // }

  //NUll || KEmpty
  // stdout.write("Digite seu nome usuário querido: ");
  // String? nome = stdin.readLineSync();

  // while(nome == null || nome.trim().isEmpty) { //isEmpty == é vazio //trim == ignora os espaços
  //   print("Existem dados vazios ou nulos, tente novamente divo: ");
  //   nome = stdin.readLineSync();
  // }
  //   print("Logado com sucesso");
