// Create class ProductManager that implements Manageable with generic type Product.

import 'dart:convert';
import 'dart:io';

import 'package:dart_practice_project/manager/manageable.dart';
import 'package:dart_practice_project/models/category.dart';
import 'package:dart_practice_project/models/product.dart';
import 'package:dart_practice_project/utils/check_id.dart';
import 'package:http/http.dart' as http;

class ProductManager implements Manageable<Product> {
  List<Product> listProduct = [];

  ProductManager();
  ProductManager.parameter(this.listProduct);

  //Create a function getProductData get data from https://dummyjson.com/products
  // add 5 products from the data to the list product.

  Future<void> getProductData() async {
    try {
      // Call api to get list data
      http.Response response =
          await http.get(Uri.parse('https://dummyjson.com/products'));
      //if status code is 200, parse json to list product
      if (response.statusCode == 200) {
        // convert json to map
        final data = jsonDecode(response.body);
        List products = data['products'];
        for (int i = 0; i < 5; i++) {
          //parse json to product
          Product product = Product.fromJson(products[i]);
          //add product to list
          listProduct.add(product);
          //add category to list category
          bool checkNameCategory =
              categories.any((element) => element.name == product.categoryName);
          if (checkNameCategory == false) {
            categories.add(Category()..name = product.categoryName);
          }
        }
      } else {
        throw Exception('Failed to load data');
      }
      //catch error
    } catch (e) {
      print('Error: $e');
    }
  }

  //Use async/await to add product to list.
  @override
  Future<void> add(Product product) async {
    try {
      product.inputInformation(listProduct);
      listProduct.add(product);
      print('Adding product...');
      await Future.delayed(Duration(milliseconds: 2000));
      print('Add product success!');
    } catch (e) {
      print('Error adding product: $e');
    }
  }

  //function showList() should print the list product.
  @override
  void showList(List<Product> list) {
    print('....Product List:...');
    for (Product product in list) {
      print(product.toString());
    }
  }

  //Create a function sortProductByPrice() to sort the list product by price.
  void sortProductByPrice() {
    listProduct.sort((a, b) => a.price.compareTo(b.price));
    print('...List product sort by price: ...');
    for (Product product in listProduct) {
      stdout.write(product.toString());
    }
  }

  //Create a function deleteProduct() to delete product from list by ID.
  @override
  void delete(String productID) {
    productID = Check.checkIdDuplicateProduct(
        listProduct, 'Enter product ID you want delete: ');
    listProduct.removeWhere((product) => product.productID == productID);
  }

  //Create a function updateProduct() to update product from list by ID.
  @override
  void update(String id) {
    id = Check.checkIdDuplicateProduct(
        listProduct, 'Enter product ID you want update: ');
    listProduct.where((element) => element.productID == id).forEach((element) {
      element.updateInformation();
    });
  }
}
