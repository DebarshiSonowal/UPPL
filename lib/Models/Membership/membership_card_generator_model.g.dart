// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membership_card_generator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MembershipCardGeneratorModelImpl _$$MembershipCardGeneratorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MembershipCardGeneratorModelImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      code: (json['code'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MembershipCardGeneratorModelImplToJson(
        _$MembershipCardGeneratorModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
      'runtimeType': instance.$type,
    };

_$MembershipCardGeneratorModelWithErrorImpl
    _$$MembershipCardGeneratorModelWithErrorImplFromJson(
            Map<String, dynamic> json) =>
        _$MembershipCardGeneratorModelWithErrorImpl(
          json['message'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$MembershipCardGeneratorModelWithErrorImplToJson(
        _$MembershipCardGeneratorModelWithErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
