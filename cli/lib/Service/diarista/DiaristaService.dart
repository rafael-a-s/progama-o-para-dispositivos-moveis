import 'package:cli/Service/Base/PaymentBaseService.dart';
import 'package:cli/funcionarios/Diarista.dart';

class DiaristaService implements PaymentBaseService<Diarista> {
  
  @override
  Diarista makePayment(Diarista employee) {
    if(employee.award){
      throw new ArgumentError("Diarista não tem comissão.");
    }
    employee.payments.add(calculatePayment(employee));

    return employee;
  }
  
  @override
  double calculatePayment(Diarista employee) {
    return employee.wageBase * employee.daysWorked;
  }
  
}