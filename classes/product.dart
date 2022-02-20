abstract class Product {
  String name = "";
  String quantityStock = "";
  String price = "";
  Product(this.name, this.quantityStock, this.price);

  void printDetail(int count);
}
