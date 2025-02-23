import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_performing_data_model.freezed.dart';
part 'top_performing_data_model.g.dart';

@freezed
class TopPerformingDataModel with _$TopPerformingDataModel {
  const factory TopPerformingDataModel({
    required List<TopPerformingData> data,
    required int draw,
    required int recordsTotal,
    required int recordsFiltered,
  }) = _TopPerformingDataModel;

  factory TopPerformingDataModel.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> dataMap = json['data'] as Map<String, dynamic>;
    final List<TopPerformingData> dataList = [];

    dataMap.forEach((key, value) {
      if (key != 'type' && value is Map<String, dynamic>) {
        dataList.add(TopPerformingData.fromJson(value));
      }
    });

    return TopPerformingDataModel(
      data: dataList,
      draw: json['draw'] as int,
      recordsTotal: json['recordsTotal'] as int,
      recordsFiltered: json['recordsFiltered'] as int,
    );
  }
}

@freezed
class TopPerformingData with _$TopPerformingData {
  const factory TopPerformingData({
    @JsonKey(name: 'btc_constituency') required int? btcConstituency,
    @JsonKey(name: 'btc_constituency_name')
    required String? btcConstituencyName,
    required String? name,
    @JsonKey(name: 'member_count') required int? memberCount,
    @JsonKey(name: 'primary_id') required int? primary_id,
    @JsonKey(name: 'primary_name') required String? primary_name,
    @JsonKey(name: 'assembly_constituency') required int? assembly_constituency,
    @JsonKey(name: 'assembly_constituency_name')
    required String? assembly_constituency_name,
    @JsonKey(name: 'party_district_name') required String? party_district_name,
    @JsonKey(name: 'verified_member_count')
    required String? verifiedMemberCount,
    @JsonKey(name: 'non_verified_member_count')
    required String? nonVerifiedMemberCount,
    required int? slno,
  }) = _TopPerformingData;

  factory TopPerformingData.fromJson(Map<String, dynamic> json) =>
      _$TopPerformingDataFromJson(json);
}
