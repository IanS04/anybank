

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

  contaMatheus.receber(1500);
  print(contaMatheus.titular);
  print(contaMatheus.saldo);

  contaMatheus.enviar(6500);
  print(contaMatheus.titular);
  print(contaMatheus.saldo);
}

class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);

  void receber(double valor) {
  saldo += valor;
}

  void enviar(double valor) {
  if(saldo >= valor) {
    saldo -= valor;
    }else{
      print("saldo insuficiente");
    }
}
}

