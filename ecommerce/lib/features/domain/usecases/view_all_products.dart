import 'package:layout/features/domain/repository/product_repository.dart';

class ViewAllProducts {
  final ProductRepository repository;
  
  ViewAllProducts({
    required this.repository
  });

  Future<void> call() {
    return repository.viewAllProducts();
  }
}
