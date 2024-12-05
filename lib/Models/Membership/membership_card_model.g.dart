// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membership_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MembershipCardInfoDataImpl _$$MembershipCardInfoDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MembershipCardInfoDataImpl(
      name: json['name'] as String,
      mobileNo: json['mobileNo'] as String?,
      email: json['email'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: (json['gender'] as num?)?.toInt(),
      file: json['file'] as String?,
    );

Map<String, dynamic> _$$MembershipCardInfoDataImplToJson(
        _$MembershipCardInfoDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mobileNo': instance.mobileNo,
      'email': instance.email,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'file': instance.file,
    };
