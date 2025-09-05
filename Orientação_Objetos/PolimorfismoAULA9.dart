//Polimorfismo => Conseguir alterar métodos para cada tipo de classe filha
// 1 - Utilizar o mesmo método, mas alterar o conteúdo
//2 - Padronizar regras do método para evitar erros

import 'dart:io';

class Veiculos {
  String modelo;
  String cor;
  String marca;

  Veiculos({required this.modelo, required this.cor, required this.marca});

  void mover(bool cnh){
    if(cnh == true) {
      print("Movendo veículo");
    }else{
      print("Vc não tem cnh");
    }
  }

  String toString(){
    return "$modelo, $cor, $marca"; 
  }
}

class Carro extends Veiculos{
  Carro({required String modelo, required String cor, required String marca}):super(cor: cor, modelo: modelo, marca: marca);
  @override
  void mover(bool cnh){
    if(cnh == true) {
      print("Carrinho");
      print("Virando a chave");
      print("Engatar a marcha");
      print("Soltar o pé da embreagem");
      print("Acelerar");
    }else{
      print("Vc não tem cnh");
    }
  }
}

class Motinha extends Veiculos{
  Motinha({required String modelo, required String cor, required String marca}):super(cor: cor, modelo: modelo, marca: marca);
  @override
  void mover(bool cnh){
    if(cnh == true) {
      print("\nMotinha");
      print("Sobe na moto");
      print("Levantar pézinho");
      print("Liga a moto");
      print("Escolhe a marcha");
      print("E voa bb 😎😎");
    }else{
      print("Vc não tem cnh");
    }
  }
}


void main(){
  Carro Bugatti = Carro(modelo: "Veyron", cor: "Purple", marca: "Bugatti/Volks");
  Bugatti.mover(false);

  Motinha Hondinha = Motinha(modelo: "CB160", cor: "Purple", marca: "Honda");
  Hondinha.mover(true);

  print("\n $Hondinha");
  print(Bugatti);
}