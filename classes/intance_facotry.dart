import 'iphone.dart';
import 'product.dart';
import 't_shirt.dart';

class InstanceFacotry {
  List<Product> _iPhoneProductList = [
    IPhone("Iphone 13 ", "13", "110000"),
    IPhone("Iphone 12 ", "10", "10000"),
    IPhone("Iphone 11 ", "9", "90000")
  ];

  List<Product> _tShirtProductList = [
    TShirt("Tshirt Round Neck ", "13", "300"),
    TShirt("Tshirt collar ", "10", "400")
  ];
  List<Product> _UsbProductList = [
    TShirt("Kingston Usb - 16GB", "0", "300"),
    TShirt("Kingston Usb 8GB", "1", "400")
  ];

  List<Product> get iPhonProduct => _iPhoneProductList;
  List<Product> get tShirtProduct => _tShirtProductList;
  List<Product> get usbProduct => _UsbProductList;
}
