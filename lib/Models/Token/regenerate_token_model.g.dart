// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regenerate_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
