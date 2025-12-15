import 'package:layout/features/product/data/models/product_model.dart';

abstract class ProductRemoteDatasource {
  Future<void> insertProduct(ProductModel product);
  Future<void> updateProduct(ProductModel product);
  Future<void> deleteProduct(ProductModel product);
  Future<ProductModel> fetchProductById(int id);
  Future<List<ProductModel>> fetchAllProducts();
}