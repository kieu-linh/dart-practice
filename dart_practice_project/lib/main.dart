import 'package:dart_practice_project/manager/user_manager.dart';
import 'package:dart_practice_project/models/user_model.dart';
import 'package:dart_practice_project/utils/menu.dart';
import 'package:dart_practice_project/utils/validator.dart';

void main() {
  UserManager userManager = UserManager();

  int i;
  do {
    MenuUtil.printMenu();
    do {
      i = Validator.getInt('Choice: ');
      if (i < 1 || i > 3) {
        print('Error, Please enter again.');
      }
    } while (i < 1 || i > 3);
    switch (i) {
      case 1:
        userManager.addUser();
        break;
      case 2:
        print('Exit');
        break;
    }
  } while (i != 3);
}
