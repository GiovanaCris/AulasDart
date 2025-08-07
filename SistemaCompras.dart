import 'dart:io';

//Mercadinho da Gi

void main(){
    while(true) {
    print("Olá, seja bem vindo ao mercadinho da Gi 🦋");
    List<String> produtos = ['\n1- Arroz 20.0', '\n2- Feijão 25.0', '\n3- Batata 11.2', '\n4- Macarrão 17.8', '\n5- Veja 10.5'];
    List<String> meus_itens = [];
    List<double> meus_valores = [];      
    String cpf = '';
    double total = 0.0;

    print("Produtos disponíveis ${produtos}");

    print("\nDigite seu CPF");
    cpf = stdin.readLineSync()!;

    while(cpf.length != 11){
          print("\nDigite um CPF valido");
          cpf = stdin.readLineSync()!;
          break;
    }

    String continuar = '';
    do {
      print("\nDigite o nome do produto que deseja:");
      String? produto = stdin.readLineSync();
      String nomeProduto = produto!.toLowerCase();
      meus_itens.add(produto);

      print("\nDigite o valor do produto: ");
      String? valorProduto = stdin.readLineSync();
      double valor = double.parse(valorProduto!);
      meus_valores.add(valor);
      total += valor; 

      print("\nDeseja incluir mais itens? ");
      continuar = stdin.readLineSync()!;
    } while (continuar == "sim");

      print("Seus itens comprados $meus_itens");
      print("valores $meus_valores");
      print("total $total");

      int opcao_pagamento = 0;
      do{
        print("\nDigite a forma e pagamento: ");
        print("1 - A VISTA");
        print("2 - Parcelado no Cartão");
        print("3 - Fiado");
        opcao_pagamento = int.parse(stdin.readLineSync()!);

        switch(opcao_pagamento){
          case 1:
            double desconto = total * 0.10;
            total = total - desconto;
            print("O valor a pagar a vista será $total");
            break;


          case 2: 
            double juros = total * 0.10;
            total = total + juros;
            double parcelas = total /2;
            print("O valor a pagar em 2 vezes será $total em 2X de $parcelas ");
            break;

          case 3: 
            double juros = total * 0.15;
            print("Caso 3 , será adicionado 15% de juros para a proxima conta, o valor sera  acrescentado será $juros  ");
            break;



          default:
            print("opcao invalida tente novamente");
            
        }

      }while( opcao_pagamento < 0 ||opcao_pagamento > 3);

  }
}

