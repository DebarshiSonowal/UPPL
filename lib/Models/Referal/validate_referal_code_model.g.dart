// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_referal_code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidateMemberModelImpl _$$ValidateMemberModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateMemberModelImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : ValidateMemberData.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : ValidateMemberError.fromJson(json['error'] as Map<String, dynamic>),
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$$ValidateMemberModelImplToJson(
        _$ValidateMemberModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
      'code': instance.code,
    };

_$ValidateMemberDataImpl _$$ValidateMemberDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateMemberDataImpl(
      refId: (json['ref_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ValidateMemberDataImplToJson(
        _$ValidateMemberDataImpl instance) =>
    <String, dynamic>{
      'ref_id': instance.refId,
    };

_$ValidateMemberErrorImpl _$$ValidateMemberErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateMemberErrorImpl(
      errors: (json['errors'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$ValidateMemberErrorImplToJson(
        _$ValidateMemberErrorImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };
