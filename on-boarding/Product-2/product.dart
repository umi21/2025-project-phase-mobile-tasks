import 'dart:io';


class Product {
  String _name;
  String _description;
  double _price;
  Product(this._name, this._description, this._price);

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

}


class ProductManager {
  var products = <String, Product>{};

  void addProduct(){
    print("Enter the name of the product: ");
    String name = stdin.readLineSync()!;
    if (name.isEmpty) {
      print("Error: Empty name!!"); 
      return;
    }
    if (products.containsKey(name)) {
      print("The product Already exits!");
      return;
    }

    print("Enter the description of the product: ");
    String description = stdin.readLineSync()?? "";
    
    print("Enter the price of the product: ");
    String priceS = stdin.readLineSync()!;
    if (priceS.isEmpty){
      print("You Entered Empty price: ");
      return ;
    }
    double price; 
    try {
      price = double.parse(priceS);
    } catch (e) {
      print("ERROR: Invalid price!!");
      return ;
    }

    Product prod = new Product(name, description, price);
    products[name] = prod;
    print("Product added successfully");
  }

  void viewAllProducts(){
    if (products.isEmpty){
      print("NO Product is registered");
    }else{
      for (var product in products.values) {
        print("Name: ${product.name}\n" + 
          "Description: ${product.description}\n" + 
          "Price: ${product.price}\n\n"
        );
      }
    }
  }
  
  void viewProduct(){
    if (products.isEmpty) {
      print("NO Product Exists in the system!!");
      return;
    }
    print("Enter the name of the product: ");
    String name = stdin.readLineSync()!;
    if (name.isEmpty){
      print("ERROR: Empty name!!");
      return;
    }
    if (!products.containsKey(name)){
      print("ERROR: The Product Doesn't exist!");
      return;
    }
    Product? prod = products[name];
    print("Name: ${prod?.name}\n" + 
          "Description: ${prod?.description}\n" + 
          "Price: ${prod?.price}"
        );
  }

  void deleteProduct(){
    print("Enter the name of the product: ");
    String name = stdin.readLineSync()!;
    if (name.isEmpty) {
      print("Error: Empty name!!"); 
      return;
    }
    if (!products.containsKey(name)) {
      print("The product Doesn't exits!");
      return;
    }
    products.remove(name);
  }

  void updateProductDescription(){
    print("Enter the name of the product: ");
    String name = stdin.readLineSync()!;
    if (name.isEmpty) {
      print("Error: Empty name!!"); 
      return;
    }
    if (!products.containsKey(name)) {
      print("The product Doesn't exits!");
      return;
    }
    Product? prod = products[name];
    
    print("Enter the new descrption of the product: ");
    String newDescription = stdin.readLineSync()!;
    if (newDescription.isEmpty) {
      print("Error: Empty descripition given!!"); 
      return;
    }
    
    prod?.description = newDescription;

  }

  void updateProductName(){
    print("Enter the name of the product: ");
    String name = stdin.readLineSync()!;
    if (name.isEmpty) {
      print("Error: Empty name!!"); 
      return;
    }
    if (!products.containsKey(name)) {
      print("The product Doesn't exits!");
      return;
    }
    Product? prod = products[name];
    
    print("Enter the new name of the product: ");
    String newName = stdin.readLineSync()!;
    if (newName.isEmpty) {
      print("Error: Empty new name!!"); 
      return;
    }
    if (products.containsKey(name)) {
      print("The product Alerady exits!");
      return;
    }

    prod?.name = newName;
  }

  void updatePrice(){
    print("Enter the name of the product: ");
    String name = stdin.readLineSync()!;
    if (name.isEmpty) {
      print("Error: Empty name!!"); 
      return;
    }
    if (!products.containsKey(name)) {
      print("The product Doesn't exits!");
      return;
    }
    Product? prod = products[name];
    
    print("Enter the new price of the product: ");
    String newPriceS = stdin.readLineSync()!;
    if (newPriceS.isEmpty) {
      print("Error: Empty name!!"); 
      return;
    }
    double price;
    try {
      price = double.parse(newPriceS);
    } catch (e) {
      print("ERROR: Invalid Input");
      return;
    }

    prod?.price = price;
  }

}