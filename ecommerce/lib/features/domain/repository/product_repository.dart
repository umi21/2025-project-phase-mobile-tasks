import '../entities/product.dart';
abstract class ProductRepository {
  Future<void> insertProduct(Product product);
  Future<void> updateProduct(Product product);
  Future<void> deleteProduct(Product product);
  Future<Product> getProductById(int id);
  Future<List<Product>> viewAllProducts();
}