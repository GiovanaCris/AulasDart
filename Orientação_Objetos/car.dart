import 'dart:io';

class Carro { //Classe
  String cor = ""; //Características ou atributo
  String placa = "";
  String marca = "";
  String modelo = "";
  int velocidade = 0;
  Carro(this.cor, this.placa, this.marca, this.modelo, this.velocidade);

  void acelerar(){ //Método
    velocidade += 10;
  }
}

void main() {
  Carro Mustang = Carro("Roxinho", "JDHWIEF", "Ford", "Mustang Manual", 170);
  Carro Ferrari = Carro("Vermelinha", "AWIFUH", "Ferrari", "480 La Ferrari F80 F96 PuroSangue", 200);
  print("Velocidade antes de acelerar ${Mustang.velocidade}");
  print("Velocidade antes de acelerar ${Ferrari.velocidade}");

  Mustang.acelerar();
  Ferrari.acelerar();

  print("Velocidade depois de acelerar ${Mustang.velocidade}");
  print("Velocidade depois de acelerar ${Ferrari.velocidade}");
}