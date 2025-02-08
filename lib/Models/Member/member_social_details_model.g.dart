// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_social_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberSocialDetailsModelImpl _$$MemberSocialDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberSocialDetailsModelImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: MemberSocialDetailsData.fromJson(
          json['data'] as Map<String, dynamic>),
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$$MemberSocialDetailsModelImplToJson(
        _$MemberSocialDetailsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

_$MemberSocialDetailsDataImpl _$$MemberSocialDetailsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberSocialDetailsDataImpl(
      member: (json['member'] as List<dynamic>)
          .map((e) => MemberSocialDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$MemberSocialDetailsDataImplToJson(
        _$MemberSocialDetailsDataImpl instance) =>
    <String, dynamic>{
      'member': instance.member,
      'errors': instance.errors,
    };

_$MemberSocialDetailsImpl _$$MemberSocialDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberSocialDetailsImpl(
      memberId: (json['member_id'] as num).toInt(),
      alternateNumber: json['aleternate_number'] as String?,
      facebookUrl: json['facebook_url'] as String?,
      twitterUrl: json['twitter_url'] as String?,
      instagramUrl: json['instagram_url'] as String?,
    );

Map<String, dynamic> _$$MemberSocialDetailsImplToJson(
        _$MemberSocialDetailsImpl instance) =>
    <String, dynamic>{
      'member_id': instance.memberId,
      'aleternate_number': instance.alternateNumber,
      'facebook_url': instance.facebookUrl,
      'twitter_url': instance.twitterUrl,
      'instagram_url': instance.instagramUrl,
    };
