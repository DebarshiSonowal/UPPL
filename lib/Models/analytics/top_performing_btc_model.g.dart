// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_performing_btc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopPerformingBtcModelImpl _$$TopPerformingBtcModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TopPerformingBtcModelImpl(
      draw: (json['draw'] as num?)?.toInt(),
      recordsTotal: (json['recordsTotal'] as num?)?.toInt(),
      recordsFiltered: (json['recordsFiltered'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BtcData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopPerformingBtcModelImplToJson(
        _$TopPerformingBtcModelImpl instance) =>
    <String, dynamic>{
      'draw': instance.draw,
      'recordsTotal': instance.recordsTotal,
      'recordsFiltered': instance.recordsFiltered,
      'data': instance.data,
    };

_$BtcDataImpl _$$BtcDataImplFromJson(Map<String, dynamic> json) =>
    _$BtcDataImpl(
      slno: (json['slno'] as num?)?.toInt(),
      name: json['name'] as String?,
      memberCount: (json['member_count'] as num?)?.toInt(),
      verifiedMemberCount: json['verified_member_count'] as String?,
      nonVerifiedMemberCount: json['non_verified_member_count'] as String?,
    );

Map<String, dynamic> _$$BtcDataImplToJson(_$BtcDataImpl instance) =>
    <String, dynamic>{
      'slno': instance.slno,
      'name': instance.name,
      'member_count': instance.memberCount,
      'verified_member_count': instance.verifiedMemberCount,
      'non_verified_member_count': instance.nonVerifiedMemberCount,
    };
