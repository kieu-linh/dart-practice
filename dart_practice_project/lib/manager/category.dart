// Create class CategoryManager that implements Manageable with generic type Category.

import 'package:dart_practice_project/manager/manageable.dart';
import 'package:dart_practice_project/models/category.dart';

class CategoryManager implements Manageable<Category> {
  CategoryManager();

  //Use async/await to add category to list.
  @override
  Future<void> add(Category item) async {
    try {
      item.inputInformation(categories);
      categories.add(item);
      await Future.delayed(Duration(milliseconds: 2000));
      print('Add category success!');
    } catch (e) {
      print('Error adding category: $e');
    }
  }

  //function showList() should print the list category.
  @override
  void showList() {
    print('Category List: ');
    for (Category category in categories) {
      print(category.toString());
    }
  }
}
