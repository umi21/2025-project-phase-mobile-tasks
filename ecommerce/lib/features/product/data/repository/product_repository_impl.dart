import 'package:layout/core/network/network_info.dart';
import 'package:layout/features/product/data/datasources/product_local_datasource.dart';
import 'package:layout/features/product/data/datasources/product_remote_datasource.dart';
import 'package:layout/features/product/data/models/product_model.dart';
import 'package:layout/features/product/domain/entities/product.dart';
import 'package:layout/features/product/domain/repository/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository{

  final ProductRemoteDatasource remoteDatasource;
  final ProductLocalDatasource localDatasource;
  final NetworkInfo networkInfo;

  ProductRepositoryImpl({
    required this.remoteDatasource,
    required this.localDatasource,
    required this.networkInfo
  });

  @override
  Future<void> deleteProduct(int id) async{
    try {
      await remoteDatasource.deleteProduct(id);
    } on Exception {
        throw Exception();
    }
  }

  @override
  Future<Product> getProductById(int id) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteProduct = await remoteDatasource.fetchProductById(id);
        await localDatasource.cacheProduct(remoteProduct);
        return remoteProduct;
      } on Exception {
          throw Exception();
      }
    } else {
      try {
        return await localDatasource.getCachedProduct(id);
      } on Exception {
          throw Exception();
      }
    }
  }

  @override
  Future<void> insertProduct(Product product) async {
    final productModel = ProductModel(
      id: product.id,
      name: product.name,
      description: product.description,
      price: product.price,
      imageUrl: product.imageUrl
    );
    try {
      await localDatasource.cacheProduct(productModel);
      await remoteDatasource.insertProduct(productModel);
    } on Exception {
        throw Exception();
    }
  }

  @override
  Future<void> updateProduct(Product product) async {
    final productModel = ProductModel(
      id: product.id,
      name: product.name,
      description: product.description,
      price: product.price,
      imageUrl: product.imageUrl
    );
    try {
      await remoteDatasource.updateProduct(productModel);
      await localDatasource.cacheProduct(productModel);
    } on Exception {
        throw Exception();
    }
  }

  @override
  Future<List<Product>> viewAllProducts() async {
    try {
      return await remoteDatasource.fetchAllProducts();
    } on Exception {
        throw Exception();
    }
  }

}