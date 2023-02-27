import 'package:app_land/models/product.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../services/dio_client.dart';

part 'product.g.dart';

@RestApi()
abstract class ProductService {
  factory ProductService(Client _dioClient) =>
      _ProductService(_dioClient.client);

  @GET("/products")
  Future<List<Product>> getProducts();

  @GET("/products_by_category")
  Future<List<Product>> getProductsByCategory(
      @Body() GetProductsByCategoryRequest request);

  @GET("/products/{id}")
  Future<Product> getProductById(@Path() int id);
}

class GetProductsByCategoryRequest {
  final String keyword;

  GetProductsByCategoryRequest(this.keyword);
}
