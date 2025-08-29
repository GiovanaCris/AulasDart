import 'dart:io';

class Products {
  String name; //Atributo obrigatório
  double price;
  String? description; //Atributo opicional

  Products({required this.name, required this.price, this.description}); //Construtor
  //Para atributos obrigatórios usar chaves e colocar required para dizer q são obrigatórios
}

void main() {
  Products Coquinha = Products(name: "Coquinha gelada", price: 14.00);
  Products Pepsi = Products(name: "Pepsinha Geladinha", price: 14.00, description: "É bão dimaiii 🎇🎇");
}