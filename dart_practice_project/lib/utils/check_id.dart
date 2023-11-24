import 'package:dart_practice_project/models/category.dart';
import 'package:dart_practice_project/models/product.dart';
import 'package:dart_practice_project/utils/validator.dart';

// Create class Check with static method checkID() and checkIDCategory().
// checkID() will check if the id is exist in the list product or not.
class Check {
  static String checkID(List<Product> products) {
    bool isValid;
    String id;
    do {
      isValid = true;
      id = Validator.getString('Enter id: ');
      for (int i = 0; i < products.length; i++) {
        if (products[i].productID == id) {
          isValid = false;
          print('ID is exist, please enter again.');
        }
      }
    } while (!isValid);
    return id;
  }

  static String checkIDCategory(List<Category> categories) {
    bool isValid;
    String id;
    do {
      isValid = true;
      id = Validator.getString('Enter id: ');
      for (int i = 0; i < categories.length; i++) {
        if (categories[i].categoryID == id) {
          isValid = false;
          print('ID is exist, please enter again.');
        }
      }
    } while (!isValid);
    return id;
  }
}
