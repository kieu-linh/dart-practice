import 'package:dart_practice_project/models/product_model.dart';

class CategoryModel {
  String categoryID ='';
  ProductModel? product;
  String name = '';

  CategoryModel();
  CategoryModel.parameter(this.categoryID, this.product, this.name);
}
