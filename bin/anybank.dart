import 'package:anybank/conta.dart';

void main() {
  Conta contaMatheus = Conta("Matheus", 5000);
  Conta contaRoberta = Conta("Roberta", 10000);
  ContaCorrente contaWelder = ContaCorrente("Welder", 5000);
  ContaPoupanca contaIan = ContaPoupanca("Ian", 5000);

  List<Conta> contas = <Conta> [contaMatheus, contaRoberta];
  for (Conta conta in contas) {
    print(conta.titular);
    print(conta.valorSaldo);
  }
  
  contaRoberta.receber(5000);
  contaMatheus.receber(1500);
  contaMatheus.enviar(7000);

  contaWelder.valorSaldo();
  contaWelder.enviar(6000);

  contaIan.valorSaldo();
  contaIan.calculaRendimento();
  contaIan.enviar(100);

}
