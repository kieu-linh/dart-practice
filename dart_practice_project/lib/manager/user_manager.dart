import 'package:dart_practice_project/manager/manageable.dart';
import 'package:dart_practice_project/models/user.dart';

class UserManager extends Manageable<User> {
  List<User> _listUser = [];

  UserManager();
  UserManager.parameter(this._listUser);

  void addUser() {
    User userModel = User();
    userModel.inputInformation();
    _listUser.add(userModel);
  }

  void showListUser() {
    for (User user in _listUser) {
      print(user.toString());
    }
  }

  @override
  void add(User item) {}
}
