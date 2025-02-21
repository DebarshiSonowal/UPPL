// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_performing_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopPerformingDataModelImpl _$$TopPerformingDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TopPerformingDataModelImpl(
      draw: (json['draw'] as num).toInt(),
      recordsTotal: (json['recordsTotal'] as num).toInt(),
      recordsFiltered: (json['recordsFiltered'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => TopPerformingData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopPerformingDataModelImplToJson(
        _$TopPerformingDataModelImpl instance) =>
    <String, dynamic>{
      'draw': instance.draw,
      'recordsTotal': instance.recordsTotal,
      'recordsFiltered': instance.recordsFiltered,
      'data': instance.data,
    };

_$TopPerformingDataImpl _$$TopPerformingDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TopPerformingDataImpl(
      btcConstituency: (json['btc_constituency'] as num).toInt(),
      name: json['name'] as String,
      btcConstituencyName: json['btc_constituency_name'] as String,
      memberCount: (json['member_count'] as num).toInt(),
      verifiedMemberCount: json['verified_member_count'] as String,
      nonVerifiedMemberCount: json['non_verified_member_count'] as String,
      slno: (json['slno'] as num).toInt(),
    );

Map<String, dynamic> _$$TopPerformingDataImplToJson(
        _$TopPerformingDataImpl instance) =>
    <String, dynamic>{
      'btc_constituency': instance.btcConstituency,
      'name': instance.name,
      'btc_constituency_name': instance.btcConstituencyName,
      'member_count': instance.memberCount,
      'verified_member_count': instance.verifiedMemberCount,
      'non_verified_member_count': instance.nonVerifiedMemberCount,
      'slno': instance.slno,
    };
