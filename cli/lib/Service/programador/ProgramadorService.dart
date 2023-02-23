import 'package:cli/Service/Base/PaymentBaseService.dart';
import 'package:cli/funcionarios/Programador.dart';

class ProgramadorService implements PaymentBaseService<Programador> {

  @override
  double calculatePayment(Programador employee) {
     if(employee.award){
      throw new ArgumentError("Programador não tem comissão.");
    }
    return employee.wageBase + 230;
  }

  @override
  Programador makePayment(Programador employee) {
    employee.payments.add(calculatePayment(employee));
    return employee;
  }



}