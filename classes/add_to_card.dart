import 'product.dart';

class AddToCard {
  List<Product> _products = [];

  get products => _products;
  int sum = 0;
  void totalBill() {
    if (_products.isNotEmpty) {
      for (var item in _products) {
        sum += int.parse(item.price);
      }
      print("your Total bill is $sum \n  thank you for shopping ");
      sum = 0;
    }
  }
}
