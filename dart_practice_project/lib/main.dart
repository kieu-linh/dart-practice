import 'package:dart_practice_project/manager/category_manager.dart';
import 'package:dart_practice_project/manager/product_manager.dart';
import 'package:dart_practice_project/manager/user_manager.dart';
import 'package:dart_practice_project/models/category.dart';
import 'package:dart_practice_project/models/product.dart';
import 'package:dart_practice_project/utils/menu.dart';
import 'package:dart_practice_project/utils/validator.dart';

void main() async {
  UserManager userManager = UserManager();
  ProductManager productManager = ProductManager();
  CategoryManager categoryManager = CategoryManager();
  Product product = Product();
  
  //handling exception error
  try {
    await productManager.getProductData();
  } catch (e) {
    print('Error: $e');
  }

  int i;
  do {
    MenuUtil.printMenu();
    do {
      i = Validator.getInt('Choice: ');
      if (i < 1 || i > 10) {
        print('Error, Please enter again.');
      }
    } while (i < 1 || i > 10);
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
        categoryManager.showList(categories);
        break;
      case 5:
        await productManager.add(Product());
        break;
      case 6:
        productManager.showList(productManager.listProduct);
        break;
      case 7:
        productManager.update(product.productID);
        break;
      case 8:
        productManager.sortProductByPrice();
        break;
      case 9:
        productManager.delete(product.productID);
        break;
      case 10:
        print('Exit');
        break;
    }
  } while (i != 10);
}
