

void main() {
  Conta contaMatheus = Conta("Matheus", 5000);
  Conta contaRoberta = Conta("Roberta", 10000);

  List<Conta> contas = <Conta> [contaMatheus, contaRoberta];

  
}

class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);
}