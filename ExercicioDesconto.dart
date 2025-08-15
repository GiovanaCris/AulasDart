import 'dart:io';

void main() {
  print("Digite o valor do produto: ");
  String? entrada1 = stdin.readLineSync();
  double preco = double.parse(entrada1!);

  print("Digite o valor do desconto (%): ");
  String? entrada2 = stdin.readLineSync();
  double desconto = double.parse(entrada2!);

  double valorDesconto = calcularDesconto(preco, desconto);

  print("O valor do desconto é: R\$ ${valorDesconto.toStringAsFixed(2)}");

  double precoFinal = preco - valorDesconto;
  print("O valor final com desconto é: R\$ ${precoFinal.toStringAsFixed(2)}");
}

double calcularDesconto(double preco, double desconto) {
  double operacao = preco * desconto / 100;
  return operacao;
}