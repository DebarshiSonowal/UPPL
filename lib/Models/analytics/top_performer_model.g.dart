// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_performer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopPerformerModelImpl _$$TopPerformerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TopPerformerModelImpl(
      draw: (json['draw'] as num?)?.toInt(),
      recordsTotal: (json['recordsTotal'] as num?)?.toInt(),
      recordsFiltered: (json['recordsFiltered'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => TopPerformerData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopPerformerModelImplToJson(
        _$TopPerformerModelImpl instance) =>
    <String, dynamic>{
      'draw': instance.draw,
      'recordsTotal': instance.recordsTotal,
      'recordsFiltered': instance.recordsFiltered,
      'data': instance.data,
    };

_$TopPerformerDataImpl _$$TopPerformerDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TopPerformerDataImpl(
      memberName: json['member_name'] as String?,
      btcConstituencyName: json['btc_constituency_name'] as String?,
      refCount: (json['ref_count'] as num?)?.toInt(),
      verifiedMemberCount: json['verified_member_count'] as String?,
      nonVerifiedMemberCount: json['non_verified_member_count'] as String?,
      memberId: (json['member_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TopPerformerDataImplToJson(
        _$TopPerformerDataImpl instance) =>
    <String, dynamic>{
      'member_name': instance.memberName,
      'btc_constituency_name': instance.btcConstituencyName,
      'ref_count': instance.refCount,
      'verified_member_count': instance.verifiedMemberCount,
      'non_verified_member_count': instance.nonVerifiedMemberCount,
      'member_id': instance.memberId,
    };
