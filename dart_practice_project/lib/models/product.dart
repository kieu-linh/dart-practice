import 'package:dart_practice_project/utils/extension.dart';
import 'package:dart_practice_project/utils/validator.dart';

class Product {
  String productID;
  String name;
  String? description;
  String? imageURL;
  double price;
  double? rating;

  Product({
    this.productID = '',
    this.name = '',
    this.description,
    this.imageURL,
    this.price = 0.0,
    this.rating,
  });

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

  @override
  String toString() {
    return 'ProductModel{productID: $productID, name: $name, description: $description, imageURL: $imageURL, price: ${(price).toVnd()}, rating: $rating}';
  }

  void inputInformation() {
    productID = Validator.getString('Enter product ID: ');
    name = Validator.getString('Enter name: ');
    description = Validator.getString('Enter description: ');
    imageURL = Validator.getString('Enter image URL: ');
    price = Validator.getDouble('Enter price: ');
    rating = Validator.getDouble('Enter rating: ');
  }
}
