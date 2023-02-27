import 'package:app_land/models/promotion.dart';
import 'package:app_land/services/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'promotion.g.dart';

@RestApi()
abstract class PromotionService {
  factory PromotionService(Client _dioClient) =>
      _PromotionService(_dioClient.client);

  @GET("/promotions")
  Future<List<Promotion>> getPromotions();

  @GET("/promotions/{id}")
  Future<Promotion> getPromotionById(@Path() int id);
}
