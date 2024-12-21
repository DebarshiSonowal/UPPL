// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyOtpModelImpl _$$VerifyOtpModelImplFromJson(Map<String, dynamic> json) =>
    _$VerifyOtpModelImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] as Object,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$$VerifyOtpModelImplToJson(
        _$VerifyOtpModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

_$VerifyOtpDataImpl _$$VerifyOtpDataImplFromJson(Map<String, dynamic> json) =>
    _$VerifyOtpDataImpl(
      phoneNumber: json['phone_number'] as String,
    );

Map<String, dynamic> _$$VerifyOtpDataImplToJson(_$VerifyOtpDataImpl instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
    };
