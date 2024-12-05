// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogoutResponseModelImpl _$$LogoutResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LogoutResponseModelImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'],
      code: (json['code'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LogoutResponseModelImplToJson(
        _$LogoutResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
      'runtimeType': instance.$type,
    };

_$LogoutResponseModelWithErrorImpl _$$LogoutResponseModelWithErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$LogoutResponseModelWithErrorImpl(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LogoutResponseModelWithErrorImplToJson(
        _$LogoutResponseModelWithErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
