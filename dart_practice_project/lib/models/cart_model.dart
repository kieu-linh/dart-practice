import 'package:dart_practice_project/models/user_model.dart';

class CartModel {
  String cartID = '';
  UserModel? userModel;

  CartModel();
  CartModel.parameterized(this.cartID, this.userModel);
}
