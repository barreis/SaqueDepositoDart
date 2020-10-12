class Conta {
  String cliente;
  int numConta;
  double saldo, deposito, saque, novosaldo;

  Conta(this.saldo);

  void sacar() {
    saque = 89.00;
    print("Valor sacado: RS ");
  }

  void depositar() {
    deposito = 0;
    print("Valor depositado: RS ");
  }
}

class ContaPoupanca extends Conta {
  int diaderendimento;

  ContaPoupanca(double saldo, this.diaderendimento) : super(saldo);

  void calcularnovosaldo() {
    novosaldo = saldo + (deposito - saque);
    print("Saldo da poupança com novo valor: RS $novosaldo");
  }

  @override
  void sacar() {
    super.sacar();
    print("$saque");
  }

  @override
  void depositar() {
    super.depositar();
    print("$deposito");
  }
}

class ContaCorrente extends Conta {
  double limite;

  ContaCorrente(double saldo, this.limite) : super(saldo);

  @override
  void sacar() {
    super.sacar();
    print("Sem Saque.");
  }

  @override
  void depositar() {
    super.depositar();
    print("Sem Deposito.");
  }
}

void main() {
  print("* Conta C. Poupança");
  ContaPoupanca diaderendimento = ContaPoupanca(1000, 30);
  diaderendimento.sacar();
  diaderendimento.depositar();
  diaderendimento.calcularnovosaldo();
  print("Valor C. Poupança: RS ${diaderendimento.saldo}\n");

  print("* Conta C. Corrente");
  ContaCorrente limite = ContaCorrente(6000.00, 90);
  limite.sacar();
  limite.depositar();
  print("Valor C. Corrente: RS ${limite.saldo}");
}
