import 'package:dart_practice_project/models/category.dart';
import 'package:dart_practice_project/models/product.dart';
import 'package:dart_practice_project/utils/validator.dart';

// Create class Check with static method checkID() and checkIDCategory().
// checkID() will check if the id is exist in the list product or not.
class Check {
  // checkID() will check if the id is exist in the list product or not.
  static String checkID(List<Product> products) {
    bool isValid;
    String id;
    do {
      isValid = true;
      id = Validator.getString('Enter id: ');
      //check if the id is exist in the list product or not.
      bool checkId = products.any((element) => element.productID == id);
      if (checkId) {
        isValid = false;
        print('ID is exist, please enter again.');
      }
    } while (!isValid);
    return id;
  }

  // checkIDCategory() will check if the id is exist in the list category or not.
  static String checkIDCategory(List<Category> categories) {
    bool isValid;
    String id;
    do {
      isValid = true;
      id = Validator.getString('Enter id: ');
      bool checkId = categories.any((element) => element.categoryID == id);
      if (checkId) {
        isValid = false;
        print('ID is exist, please enter again.');
      }
    } while (!isValid);
    return id;
  }

  // checkIDCategory() will check if the id is exist in the list category or not.
  static String checkIdDuplicateProduct(List<Product> products, String prompt) {
    String id;
    bool checkId;
    do {
      id = Validator.getString(prompt);
      checkId = products.any((element) => element.productID == id);
      if (checkId == false) {
        print('Product ID is not exist, please enter again.');
      }
    } while (!checkId);
    return id;
  }

  // checkIDCategory() will check if the id is exist in the list category or not.
  static String checkIdDuplicateCategory(
      List<Category> categories, String prompt) {
    String id;
    bool checkId;
    do {
      id = Validator.getString(prompt);
      checkId = categories.any((element) => element.categoryID == id);
      if (checkId == false) {
        print('Category ID is not exist, please enter again.');
      }
    } while (!checkId);
    return id;
  }
}
