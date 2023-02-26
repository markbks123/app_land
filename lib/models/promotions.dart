import 'package:app_land/models/promotion.dart';
import 'package:json_annotation/json_annotation.dart';

part 'promotions.g.dart';

@JsonSerializable()
class Promotions {
  final List<Promotion> promotions;

  Promotions({required this.promotions});

  factory Promotions.fromJson(Map<String, dynamic> json) =>
      _$PromotionsFromJson(json);

  get length => null;

  Map<String, dynamic> toJson() => _$PromotionsToJson(this);
}
