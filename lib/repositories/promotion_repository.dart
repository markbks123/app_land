import 'dart:async';
import 'dart:convert';

import 'package:app_land/models/promotion.dart';
import 'package:app_land/models/promotions.dart';

class PromotionRepository {
  final List<Promotion> _promotions = [
    Promotion(
      id: 1,
      name: 'Summer Sale',
      description: 'Enjoy up to 50% off on selected items',
      imageUrl: 'https://example.com/summer-sale.jpg',
      startDate: DateTime(2022, 6, 1),
      endDate: DateTime(2022, 6, 30),
      validity: 'Valid for online and in-store purchases',
      location: 'All stores in the US',
    ),
    Promotion(
      id: 2,
      name: 'Back to School',
      description: 'Get 20% off on school supplies',
      imageUrl: 'https://example.com/back-to-school.jpg',
      startDate: DateTime(2022, 8, 1),
      endDate: DateTime(2022, 8, 31),
      validity: 'Valid for online purchases only',
      location: 'US and Canada',
    ),
    Promotion(
      id: 3,
      name: 'Winter Clearance',
      description: 'Clear out inventory with up to 70% off',
      imageUrl: 'https://example.com/winter-clearance.jpg',
      startDate: DateTime(2022, 12, 1),
      endDate: DateTime(2022, 12, 31),
      validity: 'Valid for in-store purchases only',
      location: 'All stores in the US and Canada',
    ),
  ];

  final Promotion _promotion = Promotion(
    id: 1,
    name: 'Summer Sale',
    description: 'Enjoy up to 50% off on selected items',
    imageUrl: 'https://example.com/summer-sale.jpg',
    startDate: DateTime(2022, 6, 1),
    endDate: DateTime(2022, 6, 30),
    validity: 'Valid for online and in-store purchases',
    location: 'All stores in the US',
  );

  Future<List<Promotion>> getPromotions() async {
    final promotionsJson = '''{"promotions" :[ 
          {"id": 7, "name": "Winter", "description": "Clear out inventory with up to 70% off", 
          "startDate": "${DateTime(2022, 12, 1).toIso8601String()}", "endDate": "${DateTime(2022, 12, 1).toIso8601String()}", 
          "imageUrl": "https://via.placeholder.com/150", "validity": "Valid for in-store purchases only",
           "location": "All stores in the US and Canada"}, 
          {"id": 8, "name": "Muhammad", "description": "Clear out inventory with up to 99% off", 
          "startDate": "${DateTime(2022, 12, 1).toIso8601String()}", "endDate": "${DateTime(2022, 12, 1).toIso8601String()}", 
          "imageUrl": "https://via.placeholder.com/150", "validity": "Valid for in-store purchases only",
           "location": "All stores in the Iraq"}
          ]}''';
    final promotionsMap = json.decode(promotionsJson);
    final data = Promotions.fromJson(promotionsMap);

    return data.promotions;
  }

  Future<Promotion> getPromotionById(String id) async {
    final promotionJson = '''{
        "id": 7, "name": "Winter", "description": "Clear out inventory with up to 70% off", 
        "startDate": "${DateTime(2022, 12, 1).toIso8601String()}", "endDate": "${DateTime(2022, 12, 1).toIso8601String()}", 
        "imageUrl": "https://via.placeholder.com/150", "validity": "Valid for in-store purchases only",
        "location": "All stores in the US and Canada"}''';
    final promotionMap = json.decode(promotionJson);
    final data = Promotion.fromJson(promotionMap);

    return data;
  }
}
