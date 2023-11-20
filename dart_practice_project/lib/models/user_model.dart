class UserModel {
  String userID = '';
  String name = '';
  String  email = '';
  String address = '';
  String password = '';

  UserModel();
  UserModel.parameterized(this.userID, this.name, this.email, this.address, this.password);
}
