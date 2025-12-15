import 'package:layout/features/product/domain/entities/product.dart';
import 'package:layout/features/product/domain/repository/product_repository.dart';

class DeleteProduct {
  final Product product;
  final ProductRepository repository;

  DeleteProduct({
    required this.product,
    required this.repository
  });

  Future<void> call() {
    return repository.deleteProduct(product.id);
  }
}