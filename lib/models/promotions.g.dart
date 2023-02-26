// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Promotions _$PromotionsFromJson(Map<String, dynamic> json) => Promotions(
      promotions: (json['promotions'] as List<dynamic>)
          .map((e) => Promotion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PromotionsToJson(Promotions instance) =>
    <String, dynamic>{
      'promotions': instance.promotions,
    };
