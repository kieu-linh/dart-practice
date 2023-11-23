// Create class ProductManager that implements Manageable with generic type Product.

import 'package:dart_practice_project/manager/manageable.dart';
import 'package:dart_practice_project/models/product.dart';

class ProductManager implements Manageable<Product> {
  List<Product> _listProduct = [];

  ProductManager();
  ProductManager.parameter(this._listProduct);

  //User async/await to add product to list.
  @override
  Future<void> add(Product product) async {
    try {
      product.inputInformation(_listProduct);
      _listProduct.add(product);
      await Future.delayed(Duration(milliseconds: 2000));
      print('Add product success!');
    } catch (e) {
      print('Error adding product: $e');
    }
  }

  @override
  void showList() {
    print('Product List: ');
    for (Product product in _listProduct) {
      print(product.toString());
    }
  }
}
