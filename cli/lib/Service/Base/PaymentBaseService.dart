abstract class PaymentBaseService<T> {

  T makePayment(T employee);
  double calculatePayment(T employee);

}