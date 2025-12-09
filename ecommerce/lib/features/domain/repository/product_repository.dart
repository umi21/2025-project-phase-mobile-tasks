import '../entities/product.dart';
abstract class ProductRepository {
  Future<void> insertProduct(Product product);
  Future<void> updateProduct(Product product);
  Future<void> deleteProduct(Product product);
  Future<void> getProductById(int id);
  Future<void> viewAllProducts();
}