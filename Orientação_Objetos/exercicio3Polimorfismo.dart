import 'dart:io';
import 'dart:math';

abstract class Forma {
  String nomeForma;

  Forma({required this.nomeForma});

  double calcularArea();
}

class Quadrado extends Forma {
  double lado;

  Quadrado({required this.lado}) : super(nomeForma: "Quadrado");

  @override
  double calcularArea() {
    return lado * lado;
  }
}

class Retangulo extends Forma {
  double largura;
  double altura;

  Retangulo({required this.largura, required this.altura})
    : super(nomeForma: "Retângulo");

  @override
  double calcularArea() {
    return largura * altura;
  }
}

class Circulo extends Forma {
  double raio;

  Circulo({required this.raio}) : super(nomeForma: "Círculo");

  @override
  double calcularArea() {
    return pi * raio * raio;
  }
}

void main() {
  List<Forma> formas = [
    Quadrado(lado: 5),
    Retangulo(largura: 4, altura: 6),
    Circulo(raio: 3),
  ];

  for (var forma in formas) {
    print("A área do ${forma.nomeForma} é: ${forma.calcularArea()}");
  }
}
