class Conta {
  String nomeTitular;
  double saldoInicial;
  double? investimento;

  Conta({
    required this.nomeTitular,
    required this.saldoInicial,
    this.investimento,
  });

  void mostrarDados() {
    print(
      "Titular: $nomeTitular, Saldo: $saldoInicial, Investimento: ${investimento ?? 0}",
    );
  }
}

class ContaCorrente extends Conta {
  double? limiteChequeEspecial;

  ContaCorrente({
    required String nomeTitular,
    required double saldoInicial,
    double? investimento,
    this.limiteChequeEspecial,
  }) : super(
         nomeTitular: nomeTitular,
         saldoInicial: saldoInicial,
         investimento: investimento,
       );

  void mostrarDados() {
    print(
      "Conta Corrente => Titular: $nomeTitular, Saldo: $saldoInicial, "
      "Investimento: ${investimento ?? 0}, "
      "Limite Cheque Especial: ${limiteChequeEspecial ?? 0}",
    );
  }
}

class ContaPoupanca extends Conta {
  double taxaRendimento;

  ContaPoupanca({
    required String nomeTitular,
    required double saldoInicial,
    double? investimento,
    required this.taxaRendimento,
  }) : super(
         nomeTitular: nomeTitular,
         saldoInicial: saldoInicial,
         investimento: investimento,
       );

  void valorAtual() {
    double valor = saldoInicial + (investimento ?? 0) * taxaRendimento;
    print("Conta Poupança => Titular: $nomeTitular, Saldo atualizado: $valor");
  }
}

void main() {
  var contaCorrente = ContaCorrente(
    nomeTitular: "Isra",
    saldoInicial: 500,
    investimento: 200,
    limiteChequeEspecial: 1000,
  );

  var contaPoupanca = ContaPoupanca(
    nomeTitular: "Gigi",
    saldoInicial: 1000,
    investimento: 500,
    taxaRendimento: 0.05, 
  );

  contaCorrente.mostrarDados();
  contaPoupanca.valorAtual();
}
