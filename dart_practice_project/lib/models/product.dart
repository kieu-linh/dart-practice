// Class represent a product with properties
// Each property is declared as final, meaning it cannot be changed after it is set.

import 'package:dart_practice_project/models/category.dart';
import 'package:dart_practice_project/utils/check_id.dart';
import 'package:dart_practice_project/utils/extension.dart';
import 'package:dart_practice_project/utils/validator.dart';

class Product {
  String productID;
  String name;
  String? description;
  String? imageURL;
  double price;
  double? rating;
  String? categoryID;
  String categoryName;

// Class has a constructor take values for properties as required parameter
  Product({
    this.productID = '',
    this.name = '',
    this.description,
    this.imageURL,
    this.price = 0.0,
    this.rating,
    this.categoryID,
    this.categoryName = '',
  });
  // Getter and setter for properties
  String getProductID() => productID;
  String getName() => name;
  String getDescription() => description ?? '';
  String getImageURL() => imageURL ?? '';
  double getPrice() => price;
  double getRating() => rating ?? 0.0;

  void setProductID(String productID) => this.productID = productID;
  void setName(String name) => this.name = name;
  void setDescription(String description) => this.description = description;
  void setImageURL(String imageURL) => this.imageURL = imageURL;
  void setPrice(double price) => this.price = price;
  void setRating(double rating) => this.rating = rating;

  //toString() method is used to return a string representation of an object.
  @override
  String toString() {
    return 'ProductModel{productID: $productID, name: $name, description: $description, imageURL: $imageURL, price: ${(price).toVnd()}, rating: $rating,categoryName: $categoryName}';
  }

  //factory constructor (named constructor) convert json to object
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productID: '${json['id']}',
      name: json['title'],
      description: json['description'],
      imageURL: json['thumbnail'],
      price: double.parse(json['price'].toString()),
      rating: json['rating'] as double?,
      categoryName: json['category'],
    );
  }

  //function inputInformation() to input information for product
  void inputInformation(List<Product> products) {
    productID = Check.checkID(products);
    name = Validator.getString('Enter name: ');
    description = Validator.getString('Enter description: ');
    imageURL = Validator.getString('Enter image URL: ');
    price = Validator.getDouble('Enter price: ');
    rating = Validator.getDouble('Enter rating: ');
    categoryID =
        Check.checkIdDuplicateCategory(categories, 'Enter category ID: ');
    categoryName = getNameCategory(categoryID ?? '');
  }

//
  void updateInformation() {
    name = Validator.getString('Enter new name: ');
    description = Validator.getString('Enter new description: ');
    imageURL = Validator.getString('Enter new image URL: ');
    price = Validator.getDouble('Enter new price: ');
    rating = Validator.getDouble('Enter new rating: ');
    categoryID =
        Check.checkIdDuplicateCategory(categories, 'Enter new category ID: ');
    categoryName = getNameCategory(categoryID ?? '');
  }
}

String getNameCategory(String id) {
  for (Category category in categories) {
    if (category.categoryID == id) {
      return category.name;
    }
  }
  return '';
}
