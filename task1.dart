

void main(){
  Product product = new Product("Labtop", "del corei5", 190.45, "some/where");
  print("Name: " + product.name);
  print("Description: " + product.description);
  print("Price: " + product.price.toString());
  print("Image: " + product.image);
}

// Products will have the following properties:
// Name
// Description
// Price
// Image
class Product {
  String name;
  String description;
  double price;
  String image;
  bool completed = false;

  Product(this.name, this.description, this.price, this.image);

}

// Create a class that manages products, which should include methods to:
// Add a new product
// View all products
// View only completed products
// View only pending products
// Edit a product (update name, description, price, Image)
// Delete a product
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

  
}