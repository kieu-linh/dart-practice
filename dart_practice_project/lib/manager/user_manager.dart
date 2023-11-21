
import 'package:dart_practice_project/models/user_model.dart';

class UserManager {
  List<UserModel> _listUser = [];

  UserManager();
  UserManager.parameter(this._listUser);

  void addUser() {
    UserModel userModel = UserModel();
    userModel.inputInformation();
    _listUser.add(userModel);
  }

  void showListUser() {
    for (UserModel user in _listUser) {
      print(user.toString());
    }
  }
}
