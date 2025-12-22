import 'dart:convert';

import 'package:layout/features/product/data/datasources/product_local_datasource.dart';
import 'package:layout/features/product/data/models/product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String cachedKey = "CACHED_PRODUCT";

class ProductLocalDatasourceImpl implements ProductLocalDatasource{

  final SharedPreferences sharedPreferences;
  const ProductLocalDatasourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheProduct(ProductModel product) async{
    final cachedJson = sharedPreferences.getString(cachedKey);

    Map<int, dynamic> productMap = {};
    if (cachedJson != null  && cachedJson.isNotEmpty) {
      productMap = Map<int, dynamic>.from(jsonDecode(cachedJson));
    }

    productMap[product.id] = product.toJson();
    await sharedPreferences.setString(cachedKey, jsonEncode(productMap));
  }

  @override
  Future<void> deleteCachedProduct(int id) async{
    final cachedJson = sharedPreferences.getString(cachedKey);
    if (cachedJson == null){
      return;
    }
    Map<int, dynamic> productmap = jsonDecode(cachedJson);

    productmap.remove(id);

    await sharedPreferences.setString(cachedKey, jsonEncode(productmap));
  }

  @override
  Future<ProductModel> getCachedProduct(int id) async{
     final cachedJson = sharedPreferences.getString(cachedKey);

    if (cachedJson == null) {
      throw Exception("No Product in the cached Product List!!!");
    }

    final Map<int, dynamic> productMap = jsonDecode(cachedJson);

    if (!productMap.containsKey(id)) {
      throw Exception("The Product is No were to be found!!!");
    }

    return ProductModel.fromJson(productMap[id]);
  }

}