import 'package:dart_practice_project/manager/product.dart';
import 'package:dart_practice_project/manager/user_manager.dart';
import 'package:dart_practice_project/utils/menu.dart';
import 'package:dart_practice_project/utils/validator.dart';

void main() {
  UserManager userManager = UserManager();
  ProductManager productManager = ProductManager();

  int i;
  do {
    MenuUtil.printMenu();
    do {
      i = Validator.getInt('Choice: ');
      if (i < 1 || i > 5) {
        print('Error, Please enter again.');
      }
    } while (i < 1 || i > 5);
    switch (i) {
      case 1:
        userManager.addUser();
        break;
      case 2:
        userManager.showListUser();
        break;
      case 3:
        productManager.addProduct();
        break;
      case 4:
        productManager.showListProduct();
        break;
      case 5:
        print('Exit');
        break;
    }
  } while (i != 5);
}
