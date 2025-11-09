class Product {
  String _name;
  String _description;
  double _price;
  String _image;
  bool _completed = false;

  Product(this._name, this._description, this._price, this._image);

  // getter and setter for name
  String get name {
    return _name;
  }

  set name(String productName) {
    this._name = productName;
  }

  // getter and setter for description
  String get description {
    return _description;
  }

  set description(String productDescription) {
    this._description = productDescription;
  }

  // getter and setter for price
  double get price {
    return _price;
  }

  set price(double productPrice) {
    this.price = productPrice;
  }
  // getter and setter for image
  String get image {
    return _image;
  }

  set image(String productImage) {
    this._image = productImage;
  }


}


class ProductManager {
  var products = <Product>{};

  void addProduct(Product product){
    this.products.add(product);
  }

  void viewAllProducts(){
    for(Product product in this.products){
      print(product.name);
    }
  }

  void viewCompletedProducts(){
    for (Product product in this.products){
      if (product._completed){
        print(product.name);
      }
    }
  }
  
  void viewPendingProducts(){
    for (Product product in this.products){
      if(! product._completed){
        print(product._name);
      }
    }
  }

  void deleteProduct(Product product){
    this.products.remove(product);
  }

  void updateProductName(Product product, String name){
    product.name = name;
  }

  void updateProductDescription(Product product, String description){
    product.description = description;
  }

  void updatePrice(Product product, double price){
    product.price = price;
  }

  void updateImage(Product product, String image){
    product._image = image;
  }
}