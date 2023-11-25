import 'package:dart_practice_project/utils/validator.dart';

class Category {
  static int increment = 0;
  late String categoryID;
  late String name;

  Category() {
    increment++;
    categoryID = increment.toString();
  }

  @override
  String toString() {
    return 'CategoryModel{categoryID: $categoryID, name: $name}';
  }

  void inputInformation(List<Category> categories) {
    name = Validator.getString('Enter name: ');
  }
}

List<Category> categories = [
  Category()..name = 'Laptop',
  Category()..name = 'Phone',
  Category()..name = 'Tablet',
];
