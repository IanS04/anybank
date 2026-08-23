

void main() {
  Conta contaMatheus = Conta("Matheus", 5000);
  Conta contaRoberta = Conta("Roberta", 10000);

  List<Conta> contas = <Conta> [contaMatheus, contaRoberta];
  for (Conta conta in contas) {
    print(conta.titular);
    print(conta.saldo);
  }
  
  contaRoberta.saldo = 15000;
  print(contaRoberta.saldo);
}

class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);
}
