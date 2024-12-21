// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regenerate_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegenerateTokenModelSuccessImpl _$$RegenerateTokenModelSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$RegenerateTokenModelSuccessImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: RegenerateTokenData.fromJson(json['data'] as Map<String, dynamic>),
      code: (json['code'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RegenerateTokenModelSuccessImplToJson(
        _$RegenerateTokenModelSuccessImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
      'runtimeType': instance.$type,
    };

_$RegenerateTokenModelErrorImpl _$$RegenerateTokenModelErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$RegenerateTokenModelErrorImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      error:
          RegenerateTokenError.fromJson(json['error'] as Map<String, dynamic>),
      code: (json['code'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RegenerateTokenModelErrorImplToJson(
        _$RegenerateTokenModelErrorImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'code': instance.code,
      'runtimeType': instance.$type,
    };

_$RegenerateTokenModelWithErrorImpl
    _$$RegenerateTokenModelWithErrorImplFromJson(Map<String, dynamic> json) =>
        _$RegenerateTokenModelWithErrorImpl(
          status: (json['status'] as num).toInt(),
          message: json['message'] as String,
          error: RegenerateTokenError.fromJson(
              json['error'] as Map<String, dynamic>),
          code: (json['code'] as num).toInt(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$RegenerateTokenModelWithErrorImplToJson(
        _$RegenerateTokenModelWithErrorImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'code': instance.code,
      'runtimeType': instance.$type,
    };

_$RegenerateTokenDataImpl _$$RegenerateTokenDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RegenerateTokenDataImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$RegenerateTokenDataImplToJson(
        _$RegenerateTokenDataImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };

_$RegenerateTokenErrorImpl _$$RegenerateTokenErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$RegenerateTokenErrorImpl(
      errors: (json['errors'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$RegenerateTokenErrorImplToJson(
        _$RegenerateTokenErrorImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };
