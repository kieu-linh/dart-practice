// Create class ProductManager that implements Manageable with generic type Product.

import 'dart:convert';
import 'dart:io';

import 'package:dart_practice_project/manager/manageable.dart';
import 'package:dart_practice_project/models/product.dart';
import 'package:http/http.dart' as http;

class ProductManager implements Manageable<Product> {
  List<Product> _listProduct = [];

  ProductManager();
  ProductManager.parameter(this._listProduct);

  //Create a function getProductData get data from https://dummyjson.com/products
  // add 5 products from the data to the list product.
  Future<void> getProductData() async {
    http.Response response =
        await http.get(Uri.parse('https://dummyjson.com/products'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      List products = data['products'];
      for (int i = 0; i < 5; i++) {
        Product product = Product.fromJson(products[i]);
        _listProduct.add(product);
      }
    } else {
      throw Exception('Failed to load data');
    }
  }

  //Use async/await to add product to list.
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
  void sortProductByPrice() {
    _listProduct.sort((a, b) => a.price.compareTo(b.price));
    print('...List product sort by price: ...');
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

  //function showList() should print the list product.
  @override
  void showList() {
    print('Product List: ');
    for (Product product in _listProduct) {
      print(product.toString());
    }
  }

  
}
