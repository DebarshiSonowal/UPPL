// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_performing_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopPerformingDataImpl _$$TopPerformingDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TopPerformingDataImpl(
      btcConstituency: (json['btc_constituency'] as num?)?.toInt(),
      btcConstituencyName: json['btc_constituency_name'] as String?,
      name: json['name'] as String?,
      memberCount: (json['member_count'] as num?)?.toInt(),
      primary_id: (json['primary_id'] as num?)?.toInt(),
      primary_name: json['primary_name'] as String?,
      assembly_constituency: (json['assembly_constituency'] as num?)?.toInt(),
      assembly_constituency_name: json['assembly_constituency_name'] as String?,
      party_district_name: json['party_district_name'] as String?,
      verifiedMemberCount: json['verified_member_count'] as String?,
      nonVerifiedMemberCount: json['non_verified_member_count'] as String?,
      slno: (json['slno'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TopPerformingDataImplToJson(
        _$TopPerformingDataImpl instance) =>
    <String, dynamic>{
      'btc_constituency': instance.btcConstituency,
      'btc_constituency_name': instance.btcConstituencyName,
      'name': instance.name,
      'member_count': instance.memberCount,
      'primary_id': instance.primary_id,
      'primary_name': instance.primary_name,
      'assembly_constituency': instance.assembly_constituency,
      'assembly_constituency_name': instance.assembly_constituency_name,
      'party_district_name': instance.party_district_name,
      'verified_member_count': instance.verifiedMemberCount,
      'non_verified_member_count': instance.nonVerifiedMemberCount,
      'slno': instance.slno,
    };
