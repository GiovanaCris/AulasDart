//Classe -> Molde para objetos. Ela define características e métodos
//EX: Classe chamada humano, a classe vai ser as características de um humano

import 'dart:io';
import '../classecahorro.dart';

void main() {
  //Criando o objeto
  Humano Vinicius = Humano("Azul", "Vini", 20, "Topete");
  Humano Gigizinha = Humano("Verde", "Joaozin dos santos", 30, "Careca");
  Humano Clebin = Humano("Castanho", "Clebin Pain", 30, "Grisalho");
  Cachorro Spike = Cachorro("Spike Sebastian");

  //Passando as informações
  print("${Vinicius.nome}, ${Vinicius.cor_olho}, ${Vinicius.idade}, ${Vinicius.cabelo}");
  print("${Gigizinha.cor_olho}, ${Gigizinha.nome}, ${Gigizinha.idade}, ${Gigizinha.cabelo}");
  print("${Clebin.cor_olho}, ${Clebin.nome}, ${Clebin.idade}, ${Clebin.cabelo}");
  print("${Spike.nome}");
}

class Humano{ //Classe sempre com a primeira letra maiúscula
  String cor_olho = "";
  String nome = "";
  int idade = 0;
  String cabelo = "";
  Humano(this.cor_olho, this.nome, this.idade, this.cabelo);
}