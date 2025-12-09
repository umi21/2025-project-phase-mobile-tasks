import 'package:layout/features/product/domain/entities/product.dart';
import 'package:layout/features/product/domain/repository/product_repository.dart';

class ViewAllProducts {
  final ProductRepository repository;
  
  ViewAllProducts({
    required this.repository
  });

  Future<List<Product>> call() {
    return repository.viewAllProducts();
  }
}
