import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  final int? user_id;
  final String? status;
  final String? register_status;
  final String? member_type;
  final String? package_type;
  final String? name;
  final String? surname;
  final String? nickname;
  final String? mobile;
  final String? email;
  final String? img_url;
  final String? gender;
  final DateTime? birthday_at;
  final int? privacy_id;
  final int? terms_id;
  final int? user_package_id;
  final DateTime? created_at;
  final DateTime? updated_at;
  final DateTime? expired_at;
  final DateTime? deleted_at;
  bool? isFree;
  ProfileModel(
      {this.user_id,
      this.status,
      this.register_status,
      this.member_type,
      this.package_type,
      this.name,
      this.surname,
      this.nickname,
      this.mobile,
      this.email,
      this.img_url,
      this.gender,
      this.birthday_at,
      this.privacy_id,
      this.terms_id,
      this.user_package_id,
      this.created_at,
      this.updated_at,
      this.expired_at,
      this.deleted_at,
      this.isFree = false});

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}
