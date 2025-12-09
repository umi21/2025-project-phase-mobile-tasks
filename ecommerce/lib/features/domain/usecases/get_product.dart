import 'package:layout/features/domain/entities/product.dart';
import 'package:layout/features/domain/repository/product_repository.dart';

class GetProduct {
  final int id;
  final ProductRepository repository;

  GetProduct({
    required this.id,
    required this.repository
  });

  Future<Product> call() {
    return repository.getProductById(id);
  }
}