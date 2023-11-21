class ProductModel {
  String? productID;
  String? name;
  String? description;
  String? imageURL;
  double? price;
  double? rating;
  String? size;

  ProductModel();
  ProductModel.parameter(this.productID, this.name, this.description,
      this.imageURL, this.price, this.rating, this.size);
  
}
