import 'package:dart_practice_project/models/product.dart';

class Order {
  Product? product;
  String status;

  Order({
    this.product,
    this.status = '',
  });
}
