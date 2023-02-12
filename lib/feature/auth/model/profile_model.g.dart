// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      user_id: json['user_id'] as int?,
      status: json['status'] as String?,
      register_status: json['register_status'] as String?,
      member_type: json['member_type'] as String?,
      package_type: json['package_type'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      nickname: json['nickname'] as String?,
      mobile: json['mobile'] as String?,
      email: json['email'] as String?,
      img_url: json['img_url'] as String?,
      gender: json['gender'] as String?,
      birthday_at: json['birthday_at'] == null
          ? null
          : DateTime.parse(json['birthday_at'] as String),
      privacy_id: json['privacy_id'] as int?,
      terms_id: json['terms_id'] as int?,
      user_package_id: json['user_package_id'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      expired_at: json['expired_at'] == null
          ? null
          : DateTime.parse(json['expired_at'] as String),
      deleted_at: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      isFree: json['isFree'] as bool? ?? false,
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'status': instance.status,
      'register_status': instance.register_status,
      'member_type': instance.member_type,
      'package_type': instance.package_type,
      'name': instance.name,
      'surname': instance.surname,
      'nickname': instance.nickname,
      'mobile': instance.mobile,
      'email': instance.email,
      'img_url': instance.img_url,
      'gender': instance.gender,
      'birthday_at': instance.birthday_at?.toIso8601String(),
      'privacy_id': instance.privacy_id,
      'terms_id': instance.terms_id,
      'user_package_id': instance.user_package_id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'expired_at': instance.expired_at?.toIso8601String(),
      'deleted_at': instance.deleted_at?.toIso8601String(),
      'isFree': instance.isFree,
    };
