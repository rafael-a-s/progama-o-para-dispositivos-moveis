import 'dart:ffi';

abstract class Funcionario{

  String nome;
  double wageBase;
  bool award;
  var payments = <double>[];

  Funcionario(this.wageBase, this.nome, this.award);

}