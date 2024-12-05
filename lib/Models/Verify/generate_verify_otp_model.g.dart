// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_verify_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      phoneNumber: json['phone_number'] as String,
      status: (json['status'] as num?)?.toInt(),
      registered: json['registered'] as bool?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'status': instance.status,
      'registered': instance.registered,
    };
