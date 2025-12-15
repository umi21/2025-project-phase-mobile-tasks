import 'package:layout/features/product/data/models/product_model.dart';

abstract class ProductLocalDatasource {
  Future<void> cacheProduct(ProductModel product);
  Future<ProductModel> getCachedProduct(int id);
  Future<void> deleteCachedProduct(int id);
  
}