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
}
