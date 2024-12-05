import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_details_model.freezed.dart';
part 'contact_details_model.g.dart';

@freezed
class ContactDetailsModel with _$ContactDetailsModel {
  const factory ContactDetailsModel({
    required int status,
    required String message,
    ContactDetailsData? data,
    ContactDetailsError? error,
    required int code,
  }) = _ContactDetailsModel;

  const factory ContactDetailsModel.withError(String message) =
      _ContactDetailsModelWithError;

  factory ContactDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ContactDetailsModelFromJson(json);
}

@freezed
class ContactDetailsData with _$ContactDetailsData {
  const factory ContactDetailsData({
    required List<Member> members,
  }) = _ContactDetailsData;

  factory ContactDetailsData.fromJson(Map<String, dynamic> json) =>
      _$ContactDetailsDataFromJson(json);
}

@freezed
class Member with _$Member {
  const factory Member({
    required int id,
    required int userId,
    @JsonKey(name: 'ref_id') int? refId,
    @JsonKey(name: 'old_ref_code') String? oldRefCode,
    String? title,
    String? address,
    String? pinCode,
    @JsonKey(name: 'btc_assembly_constituency_id')
    int? btcAssemblyConstituencyId,
    int? btcConstituency,
    @JsonKey(name: 'party_district') int? partyDistrict,
    int? assemblyConstituency,
    String? primaryId,
    String? boothId,
    String? villageId,
    int? createdBy,
    int? updateCount,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    String? village,
    String? photo,
    String? district,
    @JsonKey(name: 'district_id') int? districtId,
    required String name,
    @JsonKey(name: 'mobile_no') required String mobileNo,
    @JsonKey(name: 'membership_no') required String membershipNo,
    @JsonKey(name: 'ref_code') required String refCode,
    int? gender,
    @JsonKey(name: 'date_of_birth') required String dateOfBirth,
    String? email,
    @JsonKey(name: 'country') String? country,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}

@freezed
class ContactDetailsError with _$ContactDetailsError {
  const factory ContactDetailsError({
    required Map<String, List<String>> errors,
  }) = _ContactDetailsError;

  factory ContactDetailsError.fromJson(Map<String, dynamic> json) =>
      _$ContactDetailsErrorFromJson(json);
}
