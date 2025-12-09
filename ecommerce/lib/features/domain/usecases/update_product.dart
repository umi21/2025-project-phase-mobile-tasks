import 'package:layout/features/domain/entities/product.dart';
import 'package:layout/features/domain/repository/product_repository.dart';

class UpdateProduct {
  final Product product;
  final ProductRepository repository;

  UpdateProduct({
    required this.product,
    required this.repository
  });

  Future<void> call() {
    return repository.updateProduct(product);
  }
}