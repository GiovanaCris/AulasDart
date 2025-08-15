import 'dart:io';

void main() {
  print("Digite uma temperatura em Celsius: ");
  double temperatura = double.parse(stdin.readLineSync()!);

  double temperaturaConvertida = celsiusParaFahrenheit(temperatura);

  print("Temperatura convertida: $temperaturaConvertida °F");
}

double celsiusParaFahrenheit(double celsius) {
  double conversao = celsius * 9 / 5 + 32;
  return conversao;
}
