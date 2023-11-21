import 'package:dart_practice_project/models/product_model.dart';

class ProductManager {
  List<ProductModel> _listProduct = [];

  ProductManager();
  ProductManager.parameter(this._listProduct);

  void addProduct() {
    ProductModel productModel = ProductModel();
    productModel.inputInformation();
    _listProduct.add(productModel);
  }

  void showListProduct() {
    for (ProductModel product in _listProduct) {
      print(product.toString());
    }
  }
}
