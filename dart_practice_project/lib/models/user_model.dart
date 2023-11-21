import 'package:dart_practice_project/utils/validator.dart';

class UserModel {
  String userID = '';
  String name = '';
  String email = '';
  String address = '';
  String password = '';

  UserModel();
  UserModel.parameter(
      this.userID, this.name, this.email, this.address, this.password);

  @override
  String toString() {
    return 'UserModel{userID: $userID, name: $name, email: $email, address: $address, password: $password}';
  }

  void inputInformation() {
    userID = Validator.getString('Enter user ID: ');
    name = Validator.getString('Enter name: ');
    bool isEmail;
    do {
      email = Validator.getString('Enter email: ');
      isEmail = Validator.emailIsValid(email);
      if (!isEmail) {
        print('Error , Please enter email.');
      }
    } while (!isEmail);

    address = Validator.getString('Enter address: ');
    password = Validator.getString('Enter password: ');
  }
}
