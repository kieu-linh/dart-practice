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

// Class has a constructor take values for properties as required parameter
  Product({
    this.productID = '',
    this.name = '',
    this.description,
    this.imageURL,
    this.price = 0.0,
    this.rating,
    this.categoryID,
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
    return 'ProductModel{productID: $productID, name: $name, description: $description, imageURL: $imageURL, price: ${(price).toVnd()}, rating: $rating}';
  }

  //function inputInformation() to input information for product
  void inputInformation(List<Product> products) {
    productID = Check.checkID(products);
    name = Validator.getString('Enter name: ');
    description = Validator.getString('Enter description: ');
    imageURL = Validator.getString('Enter image URL: ');
    price = Validator.getDouble('Enter price: ');
    rating = Validator.getDouble('Enter rating: ');
    bool status;
    do {
      status = false;
      categoryID = Validator.getString('Enter category ID: ');
      for (Category category in categories) {
        if (category.categoryID == categoryID) {
          status = true;
        }
      }
      if (!status) {
        print('Category ID is not exist, please enter again.');
      }
    } while (!status);
  }
}
