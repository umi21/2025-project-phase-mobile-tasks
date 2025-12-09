import 'package:layout/features/domain/entities/product.dart';
import 'package:layout/features/domain/repository/product_repository.dart';

class ViewAllProducts {
  final ProductRepository repository;
  
  ViewAllProducts({
    required this.repository
  });

  Future<List<Product>> call() {
    return repository.viewAllProducts();
  }
}
