import 'dart:io';

import 'add_to_card.dart';
import 'intance_facotry.dart';
import 'product.dart';

void main() {
  InstanceFacotry facotry = InstanceFacotry();
  AddToCard addtoCardClass = AddToCard();
  var exit = "0";
  while (exit != "1") {
    print("=====================Welcome to shop==============================");
    print(
        "Please Select Number product to buy \  1) Iphone \n2) TShirt  \n3) Usb");
    var selected = stdin.readLineSync();

    switch (selected) {
      case "1":
        getItemList(facotry.iPhonProduct, addtoCardClass);

        break;
      case "2":
        getItemList(facotry.iPhonProduct, addtoCardClass);

        break;
      case "3":
        getItemList(facotry.iPhonProduct, addtoCardClass);

        break;
      default:
        exit = "1";
        break;
    }

    exit = "1";
  }
}

void getItemList(List<Product> itemList, AddToCard addtoCardClass) {
  print("item ");
  var count = 1;
  for (Product iphone in itemList) {
    iphone.printDetail(count++);
    String addToCard = "NO";
    while (addToCard != "No" || addToCard != "no") {
      addToCard = stdin.readLineSync()!;
      addtoCardClass.products.add(iphone);
      print("successfully add  ${iphone.name}");
      print("do want more add type yes or  no for exit for main menu");
      addToCard = stdin.readLineSync()!;
    }
  }
}
