

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

  receber(contaMatheus, 1500);

  print(contaMatheus.titular);
  print(contaMatheus.saldo);

  enviar(contaMatheus, 6500);
  print(contaMatheus.titular);
  print(contaMatheus.saldo);
}

void receber(Conta conta, double valor) {
  conta.saldo += valor;
}

void enviar(Conta conta, double valor) {
  if(conta.saldo >= valor) {
    conta.saldo -= valor;
    }else{
      print("saldo insuficiente");
    }
}

class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);
}

