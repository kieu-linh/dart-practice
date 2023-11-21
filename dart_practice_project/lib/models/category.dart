import 'package:dart_practice_project/models/product.dart';

class Category {
  String categoryID;
  Product? product;
  String name;

  Category({
    required this.categoryID,
    this.product,
    this.name = '',
  });
}
