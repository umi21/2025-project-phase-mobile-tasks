import 'package:layout/features/product/domain/entities/product.dart';
import 'package:layout/features/product/domain/repository/product_repository.dart';

class InsertProduct {
  final Product product;
  final ProductRepository repository;

  InsertProduct({
    required this.product,
    required this.repository
  });

  Future<void> call(){
    return repository.insertProduct(product);
  }
}