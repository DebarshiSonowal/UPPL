// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audience_demography_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudienceDemographyDataImpl _$$AudienceDemographyDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AudienceDemographyDataImpl(
      totalMembers: (json['totalMembers'] as num).toInt(),
      totalMembersToday: (json['totalMembersToday'] as num).toInt(),
      malePercentage: (json['malePercentage'] as num).toDouble(),
      femalePercentage: (json['femalePercentage'] as num).toDouble(),
      rank: (json['rank'] as num).toInt(),
    );

Map<String, dynamic> _$$AudienceDemographyDataImplToJson(
        _$AudienceDemographyDataImpl instance) =>
    <String, dynamic>{
      'totalMembers': instance.totalMembers,
      'totalMembersToday': instance.totalMembersToday,
      'malePercentage': instance.malePercentage,
      'femalePercentage': instance.femalePercentage,
      'rank': instance.rank,
    };

_$AudienceDemographyErrorImpl _$$AudienceDemographyErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$AudienceDemographyErrorImpl(
      errors: (json['errors'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$AudienceDemographyErrorImplToJson(
        _$AudienceDemographyErrorImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };
