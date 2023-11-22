import 'dart:io';

import 'package:dart_practice_project/models/product.dart';

class ProductManager {
  List<Product> _listProduct = [];

  ProductManager();
  ProductManager.parameter(this._listProduct);

  void addProduct() {
    Product productModel = Product();
    productModel.inputInformation();
    _listProduct.add(productModel);
  }

  void showListProduct() {
    for (Product product in _listProduct) {
      print(product.toString());
    }
  }

  void sortProductByPrice() {
    _listProduct.sort((a, b) => a.price.compareTo(b.price));
    print('List product sort by price: ');
    for (Product product in _listProduct) {
      stdout.write(product.toString());
    }
  }

  void deleteProduct(String productID) {
    print('Enter product ID to delete: ');
    String productID = stdin.readLineSync()!;
    for (Product product in _listProduct) {
      if (product.productID == productID) {
        _listProduct.remove(product);
        break;
      }
    }
  }
}
