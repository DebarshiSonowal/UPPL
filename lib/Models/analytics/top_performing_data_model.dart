import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_performing_data_model.freezed.dart';
part 'top_performing_data_model.g.dart';

@freezed
class TopPerformingDataModel with _$TopPerformingDataModel {
  const factory TopPerformingDataModel({
    required int draw,
    required int recordsTotal,
    required int recordsFiltered,
    required List<TopPerformingData> data,
  }) = _TopPerformingDataModel;

  factory TopPerformingDataModel.fromJson(Map<String, dynamic> json) =>
      _$TopPerformingDataModelFromJson(json);
}

@freezed
class TopPerformingData with _$TopPerformingData {
  const factory TopPerformingData({
    @JsonKey(name: 'btc_constituency') required int btcConstituency,
    required String name,
    @JsonKey(name: 'btc_constituency_name') required String btcConstituencyName,
    @JsonKey(name: 'member_count') required int memberCount,
    @JsonKey(name: 'verified_member_count') required String verifiedMemberCount,
    @JsonKey(name: 'non_verified_member_count')
    required String nonVerifiedMemberCount,
    required int slno,
  }) = _TopPerformingData;

  factory TopPerformingData.fromJson(Map<String, dynamic> json) =>
      _$TopPerformingDataFromJson(json);
}
