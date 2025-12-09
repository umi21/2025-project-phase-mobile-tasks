import 'package:layout/features/domain/repository/product_repository.dart';

class GetProduct {
  final int id;
  final ProductRepository repository;

  GetProduct({
    required this.id,
    required this.repository
  });

  Future<void> call() {
    return repository.getProductById(id);
  }
}