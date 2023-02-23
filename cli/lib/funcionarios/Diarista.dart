import 'package:cli/funcionarios/Funcionario.dart';

class Diarista extends Funcionario {
  int daysWorked;
  Diarista(super.wageBase, super.nome, super.award, this.daysWorked);
}