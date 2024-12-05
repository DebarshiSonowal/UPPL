// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_mobile_number_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpResponseModelImpl _$$OtpResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OtpResponseModelImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : OtpData.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : OtpError.fromJson(json['error'] as Map<String, dynamic>),
      code: (json['code'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OtpResponseModelImplToJson(
        _$OtpResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
      'code': instance.code,
      'runtimeType': instance.$type,
    };

_$OtpResponseModelWithErrorImpl _$$OtpResponseModelWithErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$OtpResponseModelWithErrorImpl(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OtpResponseModelWithErrorImplToJson(
        _$OtpResponseModelWithErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$OtpDataImpl _$$OtpDataImplFromJson(Map<String, dynamic> json) =>
    _$OtpDataImpl(
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$$OtpDataImplToJson(_$OtpDataImpl instance) =>
    <String, dynamic>{
      'otp': instance.otp,
    };

_$OtpErrorImpl _$$OtpErrorImplFromJson(Map<String, dynamic> json) =>
    _$OtpErrorImpl(
      errors: (json['errors'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$OtpErrorImplToJson(_$OtpErrorImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };
