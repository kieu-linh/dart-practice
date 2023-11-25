// Create class CategoryManager that implements Manageable with generic type Category.

import 'package:dart_practice_project/manager/manageable.dart';
import 'package:dart_practice_project/models/category.dart';

class CategoryManager extends Manageable<Category> {
  CategoryManager();

  //Use async/await to add category to list.
  @override
  Future<void> add(Category item) async {
    try {
      item.inputInformation(categories);
      categories.add(item);
      print('Adding category...');
      await Future.delayed(Duration(milliseconds: 2000));
      print('Add category success!');
    } catch (e) {
      print('Error adding category: $e');
    }
  }

  //function showList() should print the list category.
  @override
  void showList(List<Category> list) {
    print('....Category List:....');
    super.showList(list);
  }
  

}
