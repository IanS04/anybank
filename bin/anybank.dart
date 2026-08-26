import 'package:anybank/conta.dart';

void main() {
  Conta contaMatheus = Conta("Matheus", 5000);
  Conta contaRoberta = Conta("Roberta", 10000);
  ContaCorrente contaWelder = ContaCorrente("Welder", 50000);
  ContaPoupanca contaIan = ContaPoupanca("Ian", 50000);

  List<Conta> contas = <Conta> [contaMatheus, contaRoberta];
  for (Conta conta in contas) {
    print(conta.titular);
    print(conta.valorSaldo);
  }
  
  contaRoberta.receber(5000);
  contaMatheus.receber(1500);
  contaMatheus.enviar(3000);

  contaWelder.valorSaldo();
  contaWelder.receber(500);

  contaIan.valorSaldo();
  contaIan.enviar(100);

}
