import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_performer_model.freezed.dart';
part 'top_performer_model.g.dart';

@freezed
class TopPerformerModel with _$TopPerformerModel {
  const factory TopPerformerModel({
    @JsonKey(name: 'draw') int? draw,
    @JsonKey(name: 'recordsTotal') int? recordsTotal,
    @JsonKey(name: 'recordsFiltered') int? recordsFiltered,
    @JsonKey(name: 'data') List<TopPerformerData>? data,
  }) = _TopPerformerModel;

  factory TopPerformerModel.fromJson(Map<String, dynamic> json) =>
      _$TopPerformerModelFromJson(json);
}

@freezed
class TopPerformerData with _$TopPerformerData {
  const factory TopPerformerData({
    @JsonKey(name: 'member_name') String? memberName,
    @JsonKey(name: 'btc_constituency_name') String? btcConstituencyName,
    @JsonKey(name: 'ref_count') int? refCount,
    @JsonKey(name: 'verified_member_count') String? verifiedMemberCount,
    @JsonKey(name: 'non_verified_member_count') String? nonVerifiedMemberCount,
    @JsonKey(name: 'member_id') int? memberId,
  }) = _TopPerformerData;

  factory TopPerformerData.fromJson(Map<String, dynamic> json) =>
      _$TopPerformerDataFromJson(json);
}
