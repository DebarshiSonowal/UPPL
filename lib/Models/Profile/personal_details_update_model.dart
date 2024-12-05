import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_details_update_model.freezed.dart';
part 'personal_details_update_model.g.dart';

@freezed
class PersonalDetailsUpdateModel with _$PersonalDetailsUpdateModel {
  const factory PersonalDetailsUpdateModel({
    required int status,
    required String message,
    MemberData? data,
    PersonalDetailsError? error,
    required int code,
  }) = _PersonalDetailsModel;

  const factory PersonalDetailsUpdateModel.withError(String message) =
      _PersonalDetailsModelWithError;

  factory PersonalDetailsUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalDetailsUpdateModelFromJson(json);
}

@freezed
class MemberData with _$MemberData {
  const factory MemberData({
    required ProfileData profileData,
    required PersonalDetails personalDetails,
  }) = _MemberData;

  factory MemberData.fromJson(Map<String, dynamic> json) =>
      _$MemberDataFromJson(json);
}

@freezed
class ProfileData with _$ProfileData {
  const factory ProfileData({
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
    int? primaryId,
    int? boothId,
    int? villageId,
    int? createdBy,
    int? updateCount,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    String? village,
    @JsonKey(name: 'village_id ') int? villageId_,
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
  }) = _ProfileData;

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}

@freezed
class PersonalDetails with _$PersonalDetails {
  const factory PersonalDetails({
    @JsonKey(name: 'member_id') required int memberId,
    required String name,
    @JsonKey(name: 'date_of_birth') required String dateOfBirth,
    int? gender,
    String? email,
    int? religion,
    @JsonKey(name: 'other_religion') String? otherReligion,
    String? caste,
    String? category,
    int? profession,
    @JsonKey(name: 'other_profession') String? otherProfession,
    int? education,
    @JsonKey(name: 'other_education') String? otherEducation,
    @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
    @JsonKey(name: 'voter_id') String? voterId,
    @JsonKey(name: 'mobile_no') required String mobileNo,
  }) = _PersonalDetails;

  factory PersonalDetails.fromJson(Map<String, dynamic> json) =>
      _$PersonalDetailsFromJson(json);
}

@freezed
class PersonalDetailsError with _$PersonalDetailsError {
  const factory PersonalDetailsError({
    required Map<String, List<String>> errors,
  }) = _PersonalDetailsError;

  factory PersonalDetailsError.fromJson(Map<String, dynamic> json) =>
      _$PersonalDetailsErrorFromJson(json);
}
