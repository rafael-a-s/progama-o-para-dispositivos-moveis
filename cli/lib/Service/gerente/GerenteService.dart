import 'package:cli/Service/Base/PaymentBaseService.dart';
import 'package:cli/funcionarios/Gerente.dart';

class GerenteService implements PaymentBaseService<Gerente> {

  @override
  double calculatePayment(Gerente employee) {
    if(!employee.award){
      return employee.wageBase;
    }
    return employee.wageBase += employee.wageBase * 0.35;
  }

  @override
  Gerente makePayment(Gerente employee) {
    employee.payments.add(calculatePayment(employee));
    
    return employee;
  }
  
}