import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_json_model.freezed.dart';
part 'generate_json_model.g.dart';

@freezed
class JsonDataModel with _$JsonDataModel {
  const factory JsonDataModel({
    required int status,
    required String message,
    @JsonKey(name: "data") required IntermediateData intermediateData,
    required int code,
  }) = _JsonDataModel;

  factory JsonDataModel.withError(String message) {
    return JsonDataModel(
      status: 500,
      message: message,
      intermediateData: IntermediateData.empty(),
      code: -1,
    );
  }

  factory JsonDataModel.fromJson(Map<String, dynamic> json) =>
      _$JsonDataModelFromJson(json);
}

@freezed
class IntermediateData with _$IntermediateData {
  const factory IntermediateData({
    required Data data,
    @JsonKey(name: "additional_info") String? additionalInfo,
  }) = _IntermediateData;

  factory IntermediateData.fromJson(Map<String, dynamic> json) =>
      _$IntermediateDataFromJson(json);

  factory IntermediateData.empty() => IntermediateData(
        data: Data.empty(),
        additionalInfo: '',
      );
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "btc_assembly_constituencies")
    Map<String, List<Constituency>>? btcAssemblyConstituencies,
    @JsonKey(name: "assembly_constituencies")
    List<AssemblyConstituency>? assemblyConstituencies,
    List<District>? districts,
    @JsonKey(name: "party_district") List<PartyDistrict>? partyDistricts,
    @JsonKey(name: "btc_primaries") Map<String, List<Primary>>? btcPrimaries,
    @JsonKey(name: "btc_constituency") List<BTCConstituency>? btcConstituency,
    @JsonKey(name: "village") List<Village>? villages,
    @JsonKey(name: "booths") Map<String, List<Booth>>? booths,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  factory Data.empty() => Data(
        btcAssemblyConstituencies: {},
        assemblyConstituencies: [],
        districts: [],
        partyDistricts: [],
        btcPrimaries: {},
        btcConstituency: [],
        villages: [],
        booths: {},
      );
}

@freezed
class BTCConstituency with _$BTCConstituency {
  const factory BTCConstituency({
    required int id,
    @JsonKey(name: "display_order") int? displayOrder,
    required String name,
    required int status,
    @JsonKey(name: "created_by") int? createdBy,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _BTCConstituency;

  factory BTCConstituency.fromJson(Map<String, dynamic> json) =>
      _$BTCConstituencyFromJson(json);
}

@freezed
class Village with _$Village {
  const factory Village({
    required int id,
    required String name,
    required String vcdc,
  }) = _Village;

  factory Village.fromJson(Map<String, dynamic> json) =>
      _$VillageFromJson(json);
}

@freezed
class Booth with _$Booth {
  const factory Booth({
    @JsonKey(name: "btc_primary_id") required int btcPrimaryId,
    required int id,
    required String name,
  }) = _Booth;

  factory Booth.fromJson(Map<String, dynamic> json) => _$BoothFromJson(json);
}

@freezed
class Constituency with _$Constituency {
  const factory Constituency({
    required int id,
    @JsonKey(name: "constituency_type") required String constituencyType,
    @JsonKey(name: "assembly_constituency_id")
    required int assemblyConstituencyId,
    @JsonKey(name: "district_id") required int districtId,
    @JsonKey(name: "party_district_id") required int partyDistrictId,
    @JsonKey(name: "loksabha_constituency_id") int? loksabhaConstituencyId,
  }) = _Constituency;

  factory Constituency.fromJson(Map<String, dynamic> json) =>
      _$ConstituencyFromJson(json);
}

@freezed
class AssemblyConstituency with _$AssemblyConstituency {
  const factory AssemblyConstituency({
    required int id,
    required String name,
  }) = _AssemblyConstituency;

  factory AssemblyConstituency.fromJson(Map<String, dynamic> json) =>
      _$AssemblyConstituencyFromJson(json);
}

@freezed
class District with _$District {
  const factory District({
    required int id,
    required String name,
  }) = _District;

  factory District.fromJson(Map<String, dynamic> json) =>
      _$DistrictFromJson(json);
}

@freezed
class PartyDistrict with _$PartyDistrict {
  const factory PartyDistrict({
    required int id,
    required String name,
  }) = _PartyDistrict;

  factory PartyDistrict.fromJson(Map<String, dynamic> json) =>
      _$PartyDistrictFromJson(json);
}

@freezed
class Primary with _$Primary {
  const factory Primary({
    required int id,
    required String name,
    @JsonKey(name: "btc_assembly_constituency_id")
    required int btcAssemblyConstituencyId,
  }) = _Primary;

  factory Primary.fromJson(Map<String, dynamic> json) =>
      _$PrimaryFromJson(json);
}
