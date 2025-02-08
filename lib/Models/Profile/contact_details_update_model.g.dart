// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_details_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactDetailsUpdateModelImpl _$$ContactDetailsUpdateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactDetailsUpdateModelImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : ContactDetailsDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContactDetailsUpdateModelImplToJson(
        _$ContactDetailsUpdateModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$ContactDetailsDataModelImpl _$$ContactDetailsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactDetailsDataModelImpl(
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$ContactDetailsDataModelImplToJson(
        _$ContactDetailsDataModelImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };
