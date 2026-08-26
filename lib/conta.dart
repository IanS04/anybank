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

class ContaCorrente extends Conta{
  double emprestimo = 2000;

  ContaCorrente(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    if(_saldo + emprestimo >= valor && _saldo < valor) {
      _saldo = _saldo + emprestimo;
      _saldo -= valor;
      valorSaldo();
    } else if (_saldo >= valor && _saldo + emprestimo > valor) {
      _saldo -= valor;
      valorSaldo();
    } else {
      print("saldo insuficiente");
    }
  }
}

class ContaPoupanca extends Conta {
  double rendimento = 0.05;

  ContaPoupanca(super.titular, super._saldo);

  void calculaRendimento() {
    _saldo += _saldo * rendimento;
  }
}
