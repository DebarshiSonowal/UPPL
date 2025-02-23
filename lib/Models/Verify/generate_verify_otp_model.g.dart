// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_verify_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      phoneNumber: json['phone_number'] as String?,
      status: (json['status'] as num?)?.toInt(),
      registered: json['registered'] as bool?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
      'phone_number': instance.phoneNumber,
      'status': instance.status,
      'registered': instance.registered,
    };
