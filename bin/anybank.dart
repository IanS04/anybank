import 'package:anybank/conta.dart';

void main() {
  Conta contaMatheus = Conta("Matheus", 5000);
  Conta contaRoberta = Conta("Roberta", 10000);

  List<Conta> contas = <Conta> [contaMatheus, contaRoberta];
  for (Conta conta in contas) {
    print(conta.titular);
    print(conta._saldo);
  }
  
  contaRoberta._saldo = 15000;
  print(contaRoberta._saldo);

  contaMatheus.receber(1500);
  print(contaMatheus.titular);
  print(contaMatheus._saldo);

  contaMatheus.enviar(6500);
  print(contaMatheus.titular);
  print(contaMatheus._saldo);
}
