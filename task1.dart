
class Product {
  String name;
  String description;
  double price;
  String image;
  bool completed = false;

  Product(this.name, this.description, this.price, this.image);

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
      if (product.completed){
        print(product.name);
      }
    }
  }
  
  void viewPendingProducts(){
    for (Product product in this.products){
      if(! product.completed){
        print(product.name);
      }
    }
  }

  void deleteProduct(Product product){
    this.products.remove(product);
  }

  void updateName(Product product, String name){
    product.name = name;
  }

  void updateDescription(Product product, String description){
    product.description = description;
  }

  void updatePrice(Product product, double price){
    product.price = price;
  }

  void updateImage(Product product, String image){
    product.image = image;
  }
}