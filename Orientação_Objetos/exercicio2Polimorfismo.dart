import 'dart:io';

class Pagamento {
  double valorInicial;
  double valorPago;
  String formaPagamento;

  Pagamento({
    required this.valorInicial,
    required this.valorPago,
    required this.formaPagamento,
  });

  void processar() {
    print("Processar pagamento...");
  }
}

class Pix extends Pagamento {
  Pix({
    required double valorInicial,
    required double valorPago,
    required String formaPagamento,
  }) : super(
          valorInicial: valorInicial,
          valorPago: valorPago,
          formaPagamento: formaPagamento,
        );

  @override
  void processar() {
    print("Copie o código Pix");
    print("Cole no seu banco");
    print("Pagamento realizado com sucesso!");
  }
}

class CartaoCredito extends Pagamento {
  CartaoCredito({
    required double valorInicial,
    required double valorPago,
    required String formaPagamento,
  }) : super(
          valorInicial: valorInicial,
          valorPago: valorPago,
          formaPagamento: formaPagamento,
        );

  @override
  void processar() {
    print("Insira ou aproxime o cartão");
    print("Pagamento realizado com sucesso");
  }
}

class Boleto extends Pagamento {
  Boleto({
    required double valorInicial,
    required double valorPago,
    required String formaPagamento,
  }) : super(
          valorInicial: valorInicial,
          valorPago: valorPago,
          formaPagamento: formaPagamento,
        );

  @override
  void processar() {
    print("Inicie a função de pagamento");
    print("Selecione boleto");
    print("Leia o código");
    print("Pagamento realizado com sucesso");
  }
}

void main() {
  print("Selecione a forma de pagamento: \n1- Pix \n2- Cartão de Crédito \n3- Boleto");
  int escolha = int.parse(stdin.readLineSync()!);

  if (escolha == 1) {
    var pagamento = Pix(valorInicial: 200, valorPago: 200, formaPagamento: "Pix");
    pagamento.processar();
  } else if (escolha == 2) {
    var pagamento = CartaoCredito(valorInicial: 500, valorPago: 200, formaPagamento: "Cartão de Crédito");
    pagamento.processar();
  } else if (escolha == 3) {
    var pagamento = Boleto(valorInicial: 300, valorPago: 200, formaPagamento: "Boleto");
    pagamento.processar();
  } else {
    print("Opção inválida");
  }
}