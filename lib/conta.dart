class Conta {
  String titular;
  double _saldo;

  Conta(this.titular, this._saldo);

  void receber(double valor) {
  _saldo += valor;
  valorSaldo();
  }

  void enviar(double valor) {
  if(_saldo >= valor) {
    _saldo -= valor;
    valorSaldo();
    }else{
      print("saldo insuficiente");
    }
  }

  void valorSaldo() {
    print("O saldo atual de $titular, é: R\$$_saldo");
  }
}
