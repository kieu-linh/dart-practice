import 'package:dart_practice_project/models/product.dart';
import 'package:dart_practice_project/utils/check_id.dart';
import 'package:dart_practice_project/utils/validator.dart';

class Category {
  String categoryID;
  Product? product;
  String name;

  Category({
    required this.categoryID,
    this.product,
    this.name = '',
  });

  void inputInformation(List<Category> categories) {
    categoryID = Check.checkIDCategory(categories);
    name = Validator.getString('Enter name: ');
  }
}

List<Category> categories = [
  Category(categoryID: '1', name: 'Laptop'),
  Category(categoryID: '2', name: 'SmartPhone'),
  Category(categoryID: '3', name: 'Tablet'),
];
