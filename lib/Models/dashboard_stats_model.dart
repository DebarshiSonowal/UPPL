import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_stats_model.freezed.dart';
part 'dashboard_stats_model.g.dart';

@freezed
class DashboardStats with _$DashboardStats {
  const factory DashboardStats({
    int? totalMembers,
    double? percentageAchieved,
    int? totalMembersToday,
    @JsonKey(name: "male_percentage") String? malePercentage,
    @JsonKey(name: "female_percentage") String? femalePercentage,
    Map<String, int>? weeklyPerformance,
    List<ConstituencyStats>? topConstituencies,
    List<TopPerformer>? topPerformers,
    List<TopPerformingPrimary>? topPerformingPrimary,
    List<TopPerformingBooth>? topPerformingBooth,
    List<TopPerformingPartyDistrict>? topPerformingPartyDistrict,
    List<TopPerformingPrimary>? worstPerformingPrimary,
    List<TopPerformingBooth>? worstPerformingBooth,
    List<TopPerformingPartyDistrict>? worstPerformingPartyDistrict,
    @JsonKey(name: "topPerformingBtcConstituency")
    List<TopPerformingBtcConstituency>? topPerformingBtcConstituency,
    @JsonKey(name: "worstPerformingBtcConstituency")
    List<TopPerformingBtcConstituency>? worstPerformingBtcConstituency,
    int? totalMemberCount,
    int? verifiedMemberCount,
    int? nonVerifiedMemberCount,
  }) = _DashboardStats;

  factory DashboardStats.fromJson(Map<String, dynamic> json) =>
      _$DashboardStatsFromJson(json);

  factory DashboardStats.withError(String message) => const DashboardStats();
}

@freezed
class ConstituencyStats with _$ConstituencyStats {
  const factory ConstituencyStats({
    @JsonKey(name: "btc_constituency_name") String? btcConstituencyName,
    @JsonKey(name: "member_count") int? memberCount,
    @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
    @JsonKey(name: "non_verified_member_count") String? nonVerifiedMemberCount,
  }) = _ConstituencyStats;

  factory ConstituencyStats.fromJson(Map<String, dynamic> json) =>
      _$ConstituencyStatsFromJson(json);
}

@freezed
class TopPerformer with _$TopPerformer {
  const factory TopPerformer({
    @JsonKey(name: "ref_count") int? refCount,
    @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
    @JsonKey(name: "non_verified_member_count") String? nonVerifiedMemberCount,
    @JsonKey(name: "btc_constituency_name") String? btcConstituencyName,
    @JsonKey(name: "member_name") String? memberName,
  }) = _TopPerformer;

  factory TopPerformer.fromJson(Map<String, dynamic> json) =>
      _$TopPerformerFromJson(json);
}

@freezed
class TopPerformingPrimary with _$TopPerformingPrimary {
  const factory TopPerformingPrimary({
    @JsonKey(name: "btc_constituency") int? btcConstituency,
    @JsonKey(name: "primary_name") String? primaryName,
    @JsonKey(name: "btc_constituency_name") String? btcConstituencyName,
    @JsonKey(name: "member_count") int? memberCount,
    @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
    @JsonKey(name: "non_verified_member_count") String? nonVerifiedMemberCount,
  }) = _TopPerformingPrimary;

  factory TopPerformingPrimary.fromJson(Map<String, dynamic> json) =>
      _$TopPerformingPrimaryFromJson(json);
}

@freezed
class TopPerformingBooth with _$TopPerformingBooth {
  const factory TopPerformingBooth({
    @JsonKey(name: "booth_id") int? boothId,
    @JsonKey(name: "member_count") int? memberCount,
    @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
    @JsonKey(name: "non_verified_member_count") String? nonVerifiedMemberCount,
    @JsonKey(name: "booth_name") String? boothName,
  }) = _TopPerformingBooth;

  factory TopPerformingBooth.fromJson(Map<String, dynamic> json) =>
      _$TopPerformingBoothFromJson(json);
}

@freezed
class TopPerformingPartyDistrict with _$TopPerformingPartyDistrict {
  const factory TopPerformingPartyDistrict({
    @JsonKey(name: "party_district") int? partyDistrict,
    @JsonKey(name: "member_count") int? memberCount,
    @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
    @JsonKey(name: "non_verified_member_count") String? nonVerifiedMemberCount,
    @JsonKey(name: "party_district_name") String? partyDistrictName,
  }) = _TopPerformingPartyDistrict;

  factory TopPerformingPartyDistrict.fromJson(Map<String, dynamic> json) =>
      _$TopPerformingPartyDistrictFromJson(json);
}

@freezed
class TopPerformingBtcConstituency with _$TopPerformingBtcConstituency {
  const factory TopPerformingBtcConstituency({
    @JsonKey(name: "btc_constituency") int? btcConstituency,
    @JsonKey(name: "member_count") int? memberCount,
    @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
    @JsonKey(name: "non_verified_member_count") String? nonVerifiedMemberCount,
    @JsonKey(name: "btc_constituency_name") String? btcConstituencyName,
  }) = _TopPerformingBtcConstituency;

  factory TopPerformingBtcConstituency.fromJson(Map<String, dynamic> json) =>
      _$TopPerformingBtcConstituencyFromJson(json);
}
