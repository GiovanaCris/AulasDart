import 'dart:io';

void main() {
  double somaNotas = 0;

  for (var i = 0; i < 5; i++) {
    stdout.write("Digite sua nota ${i + 1}: ");
    String? input = stdin.readLineSync();

    double? nota = double.tryParse(input ?? '');
    if (nota == null) {
      print("Nota inválida, tente novamente.");
      i--; // repete esta iteração
      continue;
    }

    somaNotas += nota;
  }

  double media = somaNotas / 5;

  print("\nMédia final: ${media.toStringAsFixed(2)}");

  if (media >= 5) {
    print("Você foi aprovado");
  } else if (media >= 4) {
    print("Recuperação");
  } else {
    print("Aluno reprovado!");
  }
}
