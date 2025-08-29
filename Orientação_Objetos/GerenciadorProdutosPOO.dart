import 'dart:ffi';
import 'dart:io';

class Produto {
  String nome = "";
  double preco = 0;
  int estoque = 0;
  Produto(this.nome, this.preco, this.estoque);

  void subtrair_estoque() {
    if (estoque > 0) {
      estoque -= 1;
    } else if (estoque <= 0) {
      print("Estoque esgotado para o produto ${nome}");
    }
  }
}

void main() {
  Produto Massa = Produto("Macarrão", 22, 10);
  print(
    "Produto: ${Massa.nome} | Preço: ${Massa.preco} | Estoque antes: ${Massa.estoque}",
  );

  Massa.subtrair_estoque();

  print(
    "Produto: ${Massa.nome} | Preço: ${Massa.preco} | Estoque depois: ${Massa.estoque}",
  );
}
