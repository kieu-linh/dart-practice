import 'package:dart_practice_project/utils/validator.dart';

class User {
  String userID;
  String name;
  String? email;
  String address;
  String password;

  User({
    this.userID = '',
    this.name = '',
    this.email,
    this.address = '',
    this.password = '',
  });
  // factory constructor (named constructor) convert json to object
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userID: json['userID'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      address: json['address'] as String,
      password: json['password'] as String,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'userID': userID,
      'name': name,
      'email': email,
      'address': address,
      'password': password,
    };
  }

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
      isEmail = Validator.emailIsValid(email ?? '');
      if (!isEmail) {
        print('Error , Please enter email.');
      }
    } while (!isEmail);

    address = Validator.getString('Enter address: ');
    password = Validator.getString('Enter password: ');
  }
}
