import 'dart:io';

void main() {
  List<String> nomes = ['\n1- Ana', '\n2- Bruno', '\n3- Carlos', '\n4- Diva Lu', '\n5- Diva Ka'];
  List<String> presentes = [];
  print (nomes.join(","));
  int contador = 0;

  nomes.forEach((String i) {
    print("${i} está presente? (sim/não)");
    String? presenca = stdin.readLineSync();

    if (presenca == 'sim') {
      contador += 1;
      presentes.add(i);
    }
  });
  print ("A quantidade de alunos presentes são: ${contador}");
  print("Os alunos presentes são ${presentes}");


//Tentando adicionar nomes na lista
//   List<String> nomes = ['\n1- Ana', '\n2- Bruno', '\n3- Carlos', '\n4- Diva Lu', '\n5- Diva Ka'];
//   print (nomes.join(","));

//   print("Digite o nome da pessoa que deseja adiconar: ");
//   String? nome = stdin.readLineSync(); 

//   nomes.add(nome!);
//   print(nomes);
}