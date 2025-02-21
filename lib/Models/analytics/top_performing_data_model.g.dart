// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_performing_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopPerformingDataImpl _$$TopPerformingDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TopPerformingDataImpl(
      btcConstituency: (json['btc_constituency'] as num?)?.toInt(),
      name: json['name'] as String?,
      memberCount: (json['member_count'] as num?)?.toInt(),
      verifiedMemberCount: json['verified_member_count'] as String?,
      nonVerifiedMemberCount: json['non_verified_member_count'] as String?,
      slno: (json['slno'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TopPerformingDataImplToJson(
        _$TopPerformingDataImpl instance) =>
    <String, dynamic>{
      'btc_constituency': instance.btcConstituency,
      'name': instance.name,
      'member_count': instance.memberCount,
      'verified_member_count': instance.verifiedMemberCount,
      'non_verified_member_count': instance.nonVerifiedMemberCount,
      'slno': instance.slno,
    };
