import 'product.dart';

class TShirt extends Product {
  String _name;
  String _quantityStock;
  String _price;
  TShirt(this._name, this._quantityStock, this._price)
      : super(_name, _quantityStock, _price);
  get name => _name;
  get price => _price;
  get quantityStock => _quantityStock;
  @override
  void printDetail(int count) {
    print("select $count for add to card");
    print("Product Name = ${_name}");
    print("Product Quantity Stock = ${_quantityStock}");
    print("Product Price = ${_price}");
  }
}
