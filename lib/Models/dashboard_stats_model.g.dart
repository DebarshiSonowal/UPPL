// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardStatsImpl _$$DashboardStatsImplFromJson(Map<String, dynamic> json) =>
    _$DashboardStatsImpl(
      totalMembers: (json['totalMembers'] as num?)?.toInt(),
      percentageAchieved: (json['percentageAchieved'] as num?)?.toDouble(),
      totalMembersToday: (json['totalMembersToday'] as num?)?.toInt(),
      malePercentage: json['male_percentage'] as String?,
      femalePercentage: json['female_percentage'] as String?,
      weeklyPerformance:
          (json['weeklyPerformance'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      topConstituencies: (json['topConstituencies'] as List<dynamic>?)
          ?.map((e) => ConstituencyStats.fromJson(e as Map<String, dynamic>))
          .toList(),
      topPerformers: (json['topPerformers'] as List<dynamic>?)
          ?.map((e) => TopPerformer.fromJson(e as Map<String, dynamic>))
          .toList(),
      topPerformingPrimary: (json['topPerformingPrimary'] as List<dynamic>?)
          ?.map((e) => TopPerformingPrimary.fromJson(e as Map<String, dynamic>))
          .toList(),
      topPerformingBooth: (json['topPerformingBooth'] as List<dynamic>?)
          ?.map((e) => TopPerformingBooth.fromJson(e as Map<String, dynamic>))
          .toList(),
      topPerformingPartyDistrict: (json['topPerformingPartyDistrict']
              as List<dynamic>?)
          ?.map((e) =>
              TopPerformingPartyDistrict.fromJson(e as Map<String, dynamic>))
          .toList(),
      worstPerformingPrimary: (json['worstPerformingPrimary'] as List<dynamic>?)
          ?.map((e) => TopPerformingPrimary.fromJson(e as Map<String, dynamic>))
          .toList(),
      worstPerformingBooth: (json['worstPerformingBooth'] as List<dynamic>?)
          ?.map((e) => TopPerformingBooth.fromJson(e as Map<String, dynamic>))
          .toList(),
      worstPerformingPartyDistrict: (json['worstPerformingPartyDistrict']
              as List<dynamic>?)
          ?.map((e) =>
              TopPerformingPartyDistrict.fromJson(e as Map<String, dynamic>))
          .toList(),
      topPerformingBtcConstituency: (json['topPerformingBtcConstituency']
              as List<dynamic>?)
          ?.map((e) =>
              TopPerformingBtcConstituency.fromJson(e as Map<String, dynamic>))
          .toList(),
      worstPerformingBtcConstituency: (json['worstPerformingBtcConstituency']
              as List<dynamic>?)
          ?.map((e) =>
              TopPerformingBtcConstituency.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalMemberCount: (json['totalMemberCount'] as num?)?.toInt(),
      verifiedMemberCount: (json['verifiedMemberCount'] as num?)?.toInt(),
      nonVerifiedMemberCount: (json['nonVerifiedMemberCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DashboardStatsImplToJson(
        _$DashboardStatsImpl instance) =>
    <String, dynamic>{
      'totalMembers': instance.totalMembers,
      'percentageAchieved': instance.percentageAchieved,
      'totalMembersToday': instance.totalMembersToday,
      'male_percentage': instance.malePercentage,
      'female_percentage': instance.femalePercentage,
      'weeklyPerformance': instance.weeklyPerformance,
      'topConstituencies': instance.topConstituencies,
      'topPerformers': instance.topPerformers,
      'topPerformingPrimary': instance.topPerformingPrimary,
      'topPerformingBooth': instance.topPerformingBooth,
      'topPerformingPartyDistrict': instance.topPerformingPartyDistrict,
      'worstPerformingPrimary': instance.worstPerformingPrimary,
      'worstPerformingBooth': instance.worstPerformingBooth,
      'worstPerformingPartyDistrict': instance.worstPerformingPartyDistrict,
      'topPerformingBtcConstituency': instance.topPerformingBtcConstituency,
      'worstPerformingBtcConstituency': instance.worstPerformingBtcConstituency,
      'totalMemberCount': instance.totalMemberCount,
      'verifiedMemberCount': instance.verifiedMemberCount,
      'nonVerifiedMemberCount': instance.nonVerifiedMemberCount,
    };

_$ConstituencyStatsImpl _$$ConstituencyStatsImplFromJson(
        Map<String, dynamic> json) =>
    _$ConstituencyStatsImpl(
      btcConstituencyName: json['btc_constituency_name'] as String?,
      memberCount: (json['member_count'] as num?)?.toInt(),
      verifiedMemberCount: json['verified_member_count'] as String?,
      nonVerifiedMemberCount: json['non_verified_member_count'] as String?,
    );

Map<String, dynamic> _$$ConstituencyStatsImplToJson(
        _$ConstituencyStatsImpl instance) =>
    <String, dynamic>{
      'btc_constituency_name': instance.btcConstituencyName,
      'member_count': instance.memberCount,
      'verified_member_count': instance.verifiedMemberCount,
      'non_verified_member_count': instance.nonVerifiedMemberCount,
    };

_$TopPerformerImpl _$$TopPerformerImplFromJson(Map<String, dynamic> json) =>
    _$TopPerformerImpl(
      refCount: (json['ref_count'] as num?)?.toInt(),
      verifiedMemberCount: json['verified_member_count'] as String?,
      nonVerifiedMemberCount: json['non_verified_member_count'] as String?,
      btcConstituencyName: json['btc_constituency_name'] as String?,
      memberName: json['member_name'] as String?,
    );

Map<String, dynamic> _$$TopPerformerImplToJson(_$TopPerformerImpl instance) =>
    <String, dynamic>{
      'ref_count': instance.refCount,
      'verified_member_count': instance.verifiedMemberCount,
      'non_verified_member_count': instance.nonVerifiedMemberCount,
      'btc_constituency_name': instance.btcConstituencyName,
      'member_name': instance.memberName,
    };

_$TopPerformingPrimaryImpl _$$TopPerformingPrimaryImplFromJson(
        Map<String, dynamic> json) =>
    _$TopPerformingPrimaryImpl(
      btcConstituency: (json['btc_constituency'] as num?)?.toInt(),
      primaryName: json['primary_name'] as String?,
      btcConstituencyName: json['btc_constituency_name'] as String?,
      memberCount: (json['member_count'] as num?)?.toInt(),
      verifiedMemberCount: json['verified_member_count'] as String?,
      nonVerifiedMemberCount: json['non_verified_member_count'] as String?,
    );

Map<String, dynamic> _$$TopPerformingPrimaryImplToJson(
        _$TopPerformingPrimaryImpl instance) =>
    <String, dynamic>{
      'btc_constituency': instance.btcConstituency,
      'primary_name': instance.primaryName,
      'btc_constituency_name': instance.btcConstituencyName,
      'member_count': instance.memberCount,
      'verified_member_count': instance.verifiedMemberCount,
      'non_verified_member_count': instance.nonVerifiedMemberCount,
    };

_$TopPerformingBoothImpl _$$TopPerformingBoothImplFromJson(
        Map<String, dynamic> json) =>
    _$TopPerformingBoothImpl(
      boothId: (json['booth_id'] as num?)?.toInt(),
      memberCount: (json['member_count'] as num?)?.toInt(),
      verifiedMemberCount: json['verified_member_count'] as String?,
      nonVerifiedMemberCount: json['non_verified_member_count'] as String?,
      boothName: json['booth_name'] as String?,
    );

Map<String, dynamic> _$$TopPerformingBoothImplToJson(
        _$TopPerformingBoothImpl instance) =>
    <String, dynamic>{
      'booth_id': instance.boothId,
      'member_count': instance.memberCount,
      'verified_member_count': instance.verifiedMemberCount,
      'non_verified_member_count': instance.nonVerifiedMemberCount,
      'booth_name': instance.boothName,
    };

_$TopPerformingPartyDistrictImpl _$$TopPerformingPartyDistrictImplFromJson(
        Map<String, dynamic> json) =>
    _$TopPerformingPartyDistrictImpl(
      partyDistrict: (json['party_district'] as num?)?.toInt(),
      memberCount: (json['member_count'] as num?)?.toInt(),
      verifiedMemberCount: json['verified_member_count'] as String?,
      nonVerifiedMemberCount: json['non_verified_member_count'] as String?,
      partyDistrictName: json['party_district_name'] as String?,
    );

Map<String, dynamic> _$$TopPerformingPartyDistrictImplToJson(
        _$TopPerformingPartyDistrictImpl instance) =>
    <String, dynamic>{
      'party_district': instance.partyDistrict,
      'member_count': instance.memberCount,
      'verified_member_count': instance.verifiedMemberCount,
      'non_verified_member_count': instance.nonVerifiedMemberCount,
      'party_district_name': instance.partyDistrictName,
    };

_$TopPerformingBtcConstituencyImpl _$$TopPerformingBtcConstituencyImplFromJson(
        Map<String, dynamic> json) =>
    _$TopPerformingBtcConstituencyImpl(
      btcConstituency: (json['btc_constituency'] as num?)?.toInt(),
      memberCount: (json['member_count'] as num?)?.toInt(),
      verifiedMemberCount: json['verified_member_count'] as String?,
      nonVerifiedMemberCount: json['non_verified_member_count'] as String?,
      btcConstituencyName: json['btc_constituency_name'] as String?,
    );

Map<String, dynamic> _$$TopPerformingBtcConstituencyImplToJson(
        _$TopPerformingBtcConstituencyImpl instance) =>
    <String, dynamic>{
      'btc_constituency': instance.btcConstituency,
      'member_count': instance.memberCount,
      'verified_member_count': instance.verifiedMemberCount,
      'non_verified_member_count': instance.nonVerifiedMemberCount,
      'btc_constituency_name': instance.btcConstituencyName,
    };
