import 'dart:io';

class Animal {
  String nome = "";
  int idade = 0;

  Animal({required this.nome, required this.idade});

  void fazerSom() {
    print("");
  }
}

class Cachorro extends Animal {
  String? raca;
  Cachorro({required String nome, required int idade, this.raca})
    : super(nome: nome, idade: idade);

  void fazerSom() {
    print("Au au");
  }
}

class Gato extends Animal {
  String? cor;
  Gato({required String nome, required int idade, this.cor})
    : super(nome: nome, idade: idade);

  void fazerSom() {
    print("Miau Miau");
  }
}

void main() {
  var gato = Gato(nome: "Garfield", idade: 5, cor: "Ruivinho");
  var cachorro = Cachorro(nome: "Neguinha", idade: 4, raca: "Rotwailer");

  print(
    "Nome do gatinho: ${gato.nome}, Idade dele: ${gato.idade}, Cor: ${gato.cor}",
  );
  gato.fazerSom();

  print(
    "Nome doguinho: ${cachorro.nome}, Idade dele: ${cachorro.idade}, Raça: ${cachorro.raca}",
  );
  cachorro.fazerSom();
}
