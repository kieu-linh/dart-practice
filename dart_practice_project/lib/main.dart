import 'package:dart_practice_project/manager/category.dart';
import 'package:dart_practice_project/manager/product.dart';
import 'package:dart_practice_project/manager/user.dart';
import 'package:dart_practice_project/models/category.dart';
import 'package:dart_practice_project/models/product.dart';
import 'package:dart_practice_project/utils/menu.dart';
import 'package:dart_practice_project/utils/validator.dart';

void main() async{
  UserManager userManager = UserManager();
  ProductManager productManager = ProductManager();
  CategoryManager categoryManager = CategoryManager();

  int i;
  do {
    MenuUtil.printMenu();
    do {
      i = Validator.getInt('Choice: ');
      if (i < 1 || i > 7) {
        print('Error, Please enter again.');
      }
    } while (i < 1 || i > 7);
    switch (i) {
      case 1:
        userManager.addUser();
        break;
      case 2:
        userManager.showListUser();
        break;
      case 3:
        await categoryManager.add(Category());
        break;
      case 4:
        categoryManager.showList();
        break;
      case 5:
        await productManager.add(Product());
        break;
      case 6:
        productManager.showList();
        break;
      case 7:
        print('Exit');
        break;
    }
  } while (i != 5);
}
