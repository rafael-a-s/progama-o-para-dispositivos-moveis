import 'package:cli/Service/Base/PaymentBaseService.dart';
import 'package:cli/funcionarios/Analista.dart';

class AnalistaService implements PaymentBaseService<Analista>{

  @override
  double calculatePayment(Analista employee) {
    if(!employee.award){
      employee.wageBase;
    }
    return employee.wageBase += employee.wageBase * 0.20;
  }

  @override
  Analista makePayment(Analista employee) {
    employee.payments.add(calculatePayment(employee));
    return employee;
  }

}