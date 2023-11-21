import 'package:dart_practice_project/models/user.dart';

class Cart {
  String cartID;
  User? userModel;

  Cart({
    required this.cartID,
    this.userModel,
  });
}
