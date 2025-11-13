import 'dart:io';

import 'product.dart';
void main(){
  ProductManager productManager = new ProductManager();

  while (true) {
    print('\nChoose an option:');
    print('1: Add product');
    print('2: Delete product');
    print('3: Update price');
    print('4: Update name');
    print('5: Update description');
    print('6: View product');
    print('7: View all products');
    print('0: Exit');
    stdout.write('Enter your choice: ');

    String? entered = stdin.readLineSync();

    switch (entered) {
      case ('1'):
        productManager.addProduct();
        break;
      case ('2'):
        productManager.deleteProduct();
        break;
      case ('3'):
        productManager.updatePrice();
        break;
      case ('4'):
        productManager.updateProductName();
        break;
      case ('5'):
        productManager.updateProductDescription();
        break;
      case ('6'):
        productManager.viewProduct();
        break;
      case ('7'):
        productManager.viewAllProducts();
        break;
      case ('0'):
        print('Exiting the program');
        return;
      default:
        print('ERROR: Invalid Input!!!');
    }

  }

}