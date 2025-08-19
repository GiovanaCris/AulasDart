import 'dart:ffi';
import 'dart:io';

List<String> flores = [
  '1- Nome: Orquidea, Valor: 20.0, Quantidade: 50.0', 
  '2- Nome: Zamioculca, Valor: 25.0, Quantidade: 15.0',
  '3- Nome: Samambaia, Valor: 11.2, Quantidade: 10.0',
  '4- Nome: Rosa, Valor: 17.8, Quantidade: 20.0',
  '5- Nome: Kalanchoe, Valor: 10.5, Quantidade: 18.0',
];

List<String> carrinho = [];

void main() {
  while (true) {
    print(
      "\nOlá, seja bem vindo ao GiFlower a floricultura que floresce sua vida! 🌷",
    );

    stdout.write(
      "0- Sair \n1- Admin \n2- Cliente \nDigite sua funcionalidade: ",
    );
    String? funcionalidade = stdin.readLineSync();

    if (funcionalidade == null) continue;

    int escolha;
    try {
      escolha = int.parse(funcionalidade);
    } catch (e) {
      print("Digite uma opção válida!");
      continue;
    }

    if (escolha == 0) {
      print("Saindo do sistema. Até logo!");
      break;
    } else if (escolha == 1) {
      admin();
    } else if (escolha == 2) {
      cliente();
    } else {
      print("Opção inválida!");
    }
  }
}

void admin() {
  const senhaCorreta = "admin1@3"; //----SENHA ADMIN----
  print("\nDigite sua senha: ");
  String? senhaUser = stdin.readLineSync();

  while (senhaUser != senhaCorreta) {
    print("Senha incorreta. Tente novamente: ");
    senhaUser = stdin.readLineSync();
  }

  print("Login admin realizado com sucesso!");
  menuAdmin();
}

void cliente() {
  print("Olá usuário querido! Seja bem vindo á área do cliente!");
  menuCliente();
}

void menuAdmin() {
  bool sair = false;

  while (!sair) {
    print("\nO que deseja realizar: ");
    print("1 - Cadastrar produto");
    print("2 - Ver estoque");
    print("3 - Sair");
    stdout.write("Escolha uma opção: ");
    String? opc = stdin.readLineSync();

    switch (opc) {
      case '1':
        print("\nDigite o nome da flor: ");
        String? nomeFlor = stdin.readLineSync();

        print("Digite o valor da flor: ");
        double valor = double.parse(stdin.readLineSync()!);

        print("Digite a quantidade da flor: ");
        int quantidade = int.parse(stdin.readLineSync()!);

        String novaFlor =
            '\n${flores.length + 1}- Nome: $nomeFlor, Valor: $valor, Quantidade: $quantidade';
        flores.add(novaFlor);
        print("Produto cadastrado com sucesso!");
        break;

      case '2':
        print("Estoque atual:");
        for (var flor in flores) {
          print(flor);
        }
        break;

      case '3':
        print("Saindo do sistema admin...");
        sair = true;
        break;

      default:
        print("Opção inválida.");
    }
  }
}

String cpf = '';
void menuCliente() {
  print("\nDigite seu nome: ");
  String? nome = stdin.readLineSync();

  // CPF com validação de tamanho
  do {
    print("\nDigite seu CPF:");
    cpf = stdin.readLineSync()!;
    if (cpf.length != 11) {
      print("CPF inválido. Tente novamente.");
    }
  } while (cpf.length != 11);

  bool sair = false;

  while (!sair) {
    print("\nO que deseja realizar:");
    print("1 - Ver catálogo");
    print("2 - Fazer pedido");
    print("0 - Sair");

    stdout.write("Escolha uma opção: ");
    String? opc = stdin.readLineSync();

    switch (opc) {
      case '1':
        print("\nCatálogo atual:");
        for (var flor in flores) {
          print(flor);
        }
        break;
      case '2':
        print("Digite o nome da flor que deseja: ");
        String? nomeFlor = stdin.readLineSync();

        bool encontrado = false;

        for (String flor in flores) {
          if (flor.toLowerCase().contains(nomeFlor!.toLowerCase())) {
            print("\nCarrinho atual:");
            for (var car in carrinho) {
              print(car);
            }
            encontrado = true;

            RegExp regexQuantidade = RegExp(
              r'Quantidade: (\d+)',
            );
            final match = regexQuantidade.firstMatch(flor);
            int quantidadeDisponivel = 0;

            if (match != null) {
              quantidadeDisponivel = int.parse(match.group(1)!);
            }

            print("Digite a quantidade que deseja: ");
            int qtd = int.parse(stdin.readLineSync()!);

            if (qtd <= quantidadeDisponivel) {
              carrinho.add(flor);
              print("Deseja adicionar mais items? (s/n)");
              String? adicionarItem = stdin.readLineSync();
              if (adicionarItem == 's') {
                continue;
              } else if (adicionarItem == 'n') {
                print(
                  "1- Crédito \n2- Pix \n3- Débito \n4- Dinheiro\n Digite a forma de pagamento:",
                );
                String? formaPagamento = stdin.readLineSync();

                switch (formaPagamento) {
                  case '1':
                  case '2':
                  case '3':
                  case '4':
                    RegExp regexValor = RegExp(r'Valor: ([\d.]+)');
                    final matchValor = regexValor.firstMatch(flor);
                    double valorProduto = 0;

                    if (matchValor != null) {
                      valorProduto = double.parse(matchValor.group(1)!);
                    }

                    double valorFinal = qtd * valorProduto;

                    print("Digite o valor que irá pagar: ");
                    double valorPago = double.parse(stdin.readLineSync()!);

                    if (valorPago > valorFinal) {
                      print("Troco: ${valorPago - valorFinal}");
                      print("Compra finalizada com sucessao!");
                    } else if (valorPago < valorFinal) {
                      print("Valor pago inválido! Tente novamente");
                      continue;
                    } else if (valorPago == valorFinal) {
                      print("Compra finalizada com sucesso! ");
                    }
                    break;
                  default:
                    print("Forma de pagamento inválida.");
                }
              }
            } else {
              print("Quantidade indisponível :/");
              continue;
            }
            break;
          }
        }

        if (!encontrado) {
          print("Produto não encontrado no catálogo.");
        }
        break;
      case '0':
        print("Saindo da área do cliente...");
        sair = true;
        break;
      default:
        print("Opção inválida.");
    }
  }
}
