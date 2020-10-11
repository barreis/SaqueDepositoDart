class Conta{
  String cliente;
  int numConta;
  double saldo;
  
  
 Conta(this.saldo, this.cliente, this.numConta);
  
  void sacar(){
  
  double paraSacar = 30.00;
  print("Valor sacado  ${paraSacar}");
}

void depositar (){
  
  double depositado = 40.00;
  
  print("Valor depositado ${depositado}");
}
}

class ContaPoupanca extends Conta{
  
 int diaderendimento;
  
ContaPoupanca(double saldo,String cliente, int numConta, this.diaderendimento) : super (saldo, cliente, numConta);
  
  void calcularnovosaldo (){
    print("Saldo da poupança com novo valor");
    
  }
  
}

class ContaCorrente extends Conta {
  
  double limite;
  
  ContaCorrente(double saldo,String cliente, int numConta, this.limite) : super (saldo, cliente, numConta);
  
@override
void sacar(){
super.sacar();
print("Pode sacar até 10.00");
}
}

void main(){
  
  
  ContaCorrente contacorrente = ContaCorrente (10.00, "Bárbara", 000909, 10000.00);
  contacorrente.depositar();
  contacorrente.sacar();
  
  print("Cliente:  ${contacorrente.cliente}");
  print("Número da conta: ${contacorrente.numConta}");
  print("Saldo: ${contacorrente.saldo}");
  print("Limite da conta:  ${contacorrente.limite}");
}

