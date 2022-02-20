import 'dart:io';

import 'classes/add_to_card.dart';
import 'classes/intance_facotry.dart';
import 'classes/product.dart';

void main() {
  InstanceFacotry facotry = InstanceFacotry();
  AddToCard addtoCardClass = AddToCard();
  var exit = "0";
  while (exit != "1") {
    print("=====================Welcome to shop==============================");
    print(
        "Please Select Number product to buy \  1) Iphone \n2) TShirt  \n3)  4) checkout Usb");
    var selected = stdin.readLineSync();

    switch (selected) {
      case "1":
        getItemList(facotry.iPhonProduct, addtoCardClass);

        break;
      case "2":
        getItemList(facotry.tShirtProduct, addtoCardClass);

        break;
      case "3":
        getItemList(facotry.usbProduct, addtoCardClass);

        break;
      default:
        addtoCardClass.totalBill();
        exit = "1";
        break;
    }
  }
}

void getItemList(List<Product> itemList, AddToCard addtoCardClass) {
  var count = 0;
  int addToCard = 1;
  while (addToCard != 0) {
    for (Product iphone in itemList) {
      iphone.printDetail(count++);
      print(
          "\n ============================================================================");
    }
    addToCard = int.parse(stdin.readLineSync()!);
    if (addToCard <= itemList.length) {
      print(itemList.length);
      addtoCardClass.products.add(itemList[addToCard]);
      print("successfully add  ${itemList[addToCard].name}");
      print("do want more add type 1 or  0 for exit for main menu");
      addToCard = int.parse(stdin.readLineSync()!);
    } else {
      print("invalid Selection");
      addToCard = 1;
    }
  }
}
