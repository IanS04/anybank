import 'package:anybank/conta.dart';

void main() {
  ContaCorrente contaWelder = ContaCorrente("Welder", 5000);
  ContaPoupanca contaIan = ContaPoupanca("Ian", 5000);
  ContaEmpresa contaMichael = ContaEmpresa("Michael", 2500);
  ContaInvestimento contaYuji = ContaInvestimento("Yuji", 4000);

  contaWelder.valorSaldo();
  contaWelder.enviar(6000);

  contaIan.valorSaldo();
  contaIan.calculaRendimento();
  contaIan.enviar(100);

  contaMichael.enviar(500);
  contaYuji.receber(2000);

}
