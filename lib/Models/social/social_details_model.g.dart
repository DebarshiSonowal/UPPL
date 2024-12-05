// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocialDetailsModelImpl _$$SocialDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialDetailsModelImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : SocialDetailsData.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : SocialDetailsError.fromJson(json['error'] as Map<String, dynamic>),
      code: (json['code'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SocialDetailsModelImplToJson(
        _$SocialDetailsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
      'code': instance.code,
      'runtimeType': instance.$type,
    };

_$SocialDetailsModelWithErrorImpl _$$SocialDetailsModelWithErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialDetailsModelWithErrorImpl(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SocialDetailsModelWithErrorImplToJson(
        _$SocialDetailsModelWithErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$SocialDetailsDataImpl _$$SocialDetailsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialDetailsDataImpl(
      members: (json['members'] as List<dynamic>)
          .map((e) => Member.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SocialDetailsDataImplToJson(
        _$SocialDetailsDataImpl instance) =>
    <String, dynamic>{
      'members': instance.members,
    };

_$MemberImpl _$$MemberImplFromJson(Map<String, dynamic> json) => _$MemberImpl(
      memberId: (json['memberId'] as num).toInt(),
      alternateNumber: json['alternateNumber'] as String?,
      facebookUrl: json['facebookUrl'] as String?,
      twitterUrl: json['twitterUrl'] as String?,
      instagramUrl: json['instagramUrl'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$MemberImplToJson(_$MemberImpl instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'alternateNumber': instance.alternateNumber,
      'facebookUrl': instance.facebookUrl,
      'twitterUrl': instance.twitterUrl,
      'instagramUrl': instance.instagramUrl,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$SocialDetailsErrorImpl _$$SocialDetailsErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialDetailsErrorImpl(
      errors: (json['errors'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$SocialDetailsErrorImplToJson(
        _$SocialDetailsErrorImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };
