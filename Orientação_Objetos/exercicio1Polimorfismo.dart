import 'dart:io';

class Animal {
  String nome;
  String genero;
  int idade;

  Animal({required this.nome, required this.genero, required this.idade});

  void falar() {
    print("O animal está fazendo um som...");
  }
}

class Cachorro extends Animal {
  int? qtPatas;

  Cachorro({
    required String nome,
    required String genero,
    required int idade,
    this.qtPatas,
  }) : super(nome: nome, genero: genero, idade: idade);

  @override
  void falar() {
    print("$nome: Au Au! 🐕");
  }
}

class Gato extends Animal {
  int? qtPatas;

  Gato({
    required String nome,
    required String genero,
    required int idade,
    this.qtPatas,
  }) : super(nome: nome, genero: genero, idade: idade);

  @override
  void falar() {
    print("$nome: Miauuuu! 🐈");
  }
}

class Papagaio extends Animal {
  Papagaio({required String nome, required String genero, required int idade})
    : super(nome: nome, genero: genero, idade: idade);
  @override
  void falar() {
    print("$nome: piupiu! 🦜");
  }
}

void main() {
  // Criando uma lista de animais
  List<Animal> animais = [
    Cachorro(nome: "Rex", genero: "Macho", idade: 5, qtPatas: 4),
    Gato(nome: "Mimi", genero: "Fêmea", idade: 3, qtPatas: 4),
    Papagaio(nome: "LangChain", genero: "Macho", idade: 2),
  ];

  // Percorrendo com forEach
  animais.forEach((animal) {
    animal.falar();
  });
}
