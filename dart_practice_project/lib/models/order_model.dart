import 'package:dart_practice_project/models/product_model.dart';

class OrderModel {
  ProductModel? product;
  String status = '';

  OrderModel();
  OrderModel.parameter(this.product, this.status);
}
