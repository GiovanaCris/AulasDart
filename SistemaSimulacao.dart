import 'dart:io';

void main() {
    print("Digite o valor: ");
    double valor = double.parse(stdin.readLineSync()!);
    
    print ("Digite a quantidade de parcelas que deseja: ");
    int parcelas = int.parse(stdin.readLineSync()!);

    for (int i=0; i < parcelas; i++) {
      double valor_parcelado = valor / parcelas;

      // print ("O valor da sua compra é ${valor} as parcelas são ${parcelas} e o valor das parcelas é ${valor_parcelado}");
      print("Parcela n° ${i+1} : ${valor_parcelado}");
    }

}