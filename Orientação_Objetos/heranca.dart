import 'dart:io';

class Veiculo {
  String modelo;
  String marca;
  int ano;

  Veiculo({required this.modelo, required this.marca, required this.ano});
}

class Carro extends Veiculo {
  //Quando erda de uma classe mae utilizamos o extends
  int?
  qt_portas; //Quando você quer fazer um valor que não tem na classe mãe no required chama o this.qt_portas
  Carro({
    required String modelo,
    required String marca,
    required int ano,
    this.qt_portas,
  }) : super(
         modelo: modelo,
         marca: marca,
         ano: ano,
       ); //o modelo da classe mae vai receber modelo e assim para todos
}

class Moto extends Veiculo {
  bool? bau;

  Moto({
    required String modelo,
    required String marca,
    required int ano,
    this.bau,
  }) : super(modelo: modelo, marca: marca, ano: ano);
}

void main() {
  Carro Fusquinha = Carro(
    modelo: "Fusquinha",
    marca: "VW",
    ano: 1973,
    qt_portas: 4,
  );

  Moto MotoFranFran = Moto(modelo: "Twister", marca: "Honda", ano: 2018);
  Moto MotoLini = Moto(modelo: "PCX", marca: "Honda", ano: 2018, bau: true);

  print(
    "${Fusquinha.modelo}, ${Fusquinha.marca}, ${Fusquinha.ano}, ${Fusquinha.qt_portas}",
  );
  print("${MotoFranFran.modelo}, ${MotoFranFran.marca}, ${MotoFranFran.ano}");
  print(
    "${MotoLini.modelo}, ${MotoLini.marca}, ${MotoLini.ano}, ${MotoLini.bau}",
  );
}
