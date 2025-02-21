import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_performing_btc_model.freezed.dart';
part 'top_performing_btc_model.g.dart';

@freezed
class TopPerformingBtcModel with _$TopPerformingBtcModel {
  const factory TopPerformingBtcModel({
    @JsonKey(name: 'draw') int? draw,
    @JsonKey(name: 'recordsTotal') int? recordsTotal,
    @JsonKey(name: 'recordsFiltered') int? recordsFiltered,
    @JsonKey(name: 'data') List<BtcData>? data,
  }) = _TopPerformingBtcModel;

  factory TopPerformingBtcModel.fromJson(Map<String, dynamic> json) =>
      _$TopPerformingBtcModelFromJson(json);
}

@freezed
class BtcData with _$BtcData {
  const factory BtcData({
    @JsonKey(name: 'slno') int? slno,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'member_count') int? memberCount,
    @JsonKey(name: 'verified_member_count') String? verifiedMemberCount,
    @JsonKey(name: 'non_verified_member_count') String? nonVerifiedMemberCount,
  }) = _BtcData;

  factory BtcData.fromJson(Map<String, dynamic> json) =>
      _$BtcDataFromJson(json);
}
