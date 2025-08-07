import 'dart:io';

void main() {
  print("-------------------Seja bem vindoooo-------------------");
  print ("Digite o nome do motorista: ");
  String? nome = stdin.readLineSync();
  String nomeMotorista = nome!.toLowerCase();

  print ("Digite a velocidade que ele estava: ");
  String? velocidade = stdin.readLineSync();
  double velocidadeMotorista = double.parse(velocidade!);

  int infracao_leve = 200;
  int infracao_media = 400;
  int infracao_grave = 600;
  double multaAtual = 0;

  if (velocidadeMotorista <= 60) {
    print("Sem infração!");
  }
  
  else{
    if (velocidadeMotorista >= 62 && velocidadeMotorista <= 80) {
      print("Infração leve: ${infracao_leve}");
      multaAtual += infracao_leve;
    }
    else if (velocidadeMotorista >= 81 && velocidadeMotorista <= 100) {
      print ("Infração média: ${infracao_media}");
      multaAtual += infracao_media;
    }
    else if (velocidadeMotorista > 100) {
      print ("Infração gravíssima: ${infracao_grave}");
      multaAtual += infracao_grave;
    }

      print("\nMenu");
      print("1- Pagar á vista");
      print("2- Parcelar em 2x");
      print("3- Parcelar em 3x");

      print("Digite a opção que deseja: ");
      int menu = int.parse(stdin.readLineSync()!);

      switch(menu){
        case 1:
          double valorDesconto = multaAtual * 0.90;
          print("Desconto: ${valorDesconto}");
          break;
        case 2:
        double parcela = multaAtual / 2;
          print("Sem juros parcelado ${parcela}");
        case 3:
          double valorJuros = multaAtual * 1.10;
          double parcela = valorJuros / 3;
          print("Multa: ${valorJuros}");
          print("Valor parcelado ${parcela}");
          break;
        default:
          print("Opção inválida");
      }
      print ("${nomeMotorista}");
    }
  }
