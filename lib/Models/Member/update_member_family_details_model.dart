import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_member_family_details_model.freezed.dart';
part 'update_member_family_details_model.g.dart';

@freezed
class UpdateMemberFamilyDetailsModel with _$UpdateMemberFamilyDetailsModel {
  const factory UpdateMemberFamilyDetailsModel({
    required int status,
    required String message,
    @JsonKey(name: 'data', fromJson: _dataFromJson)
    MemberData? data, // Dynamic type to handle Map or List
    required int code,
  }) = _UpdateMemberFamilyDetailsModel;

  factory UpdateMemberFamilyDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateMemberFamilyDetailsModelFromJson(json);
}

// Custom function to handle dynamic `data` field
dynamic _dataFromJson(Object? json) {
  if (json is List) {
    return json
        .map((e) => MemberData.fromJson(e as Map<String, dynamic>))
        .toList();
  } else if (json is Map<String, dynamic>) {
    return MemberData.fromJson(json);
  }
  return null;
}

@freezed
class MemberData with _$MemberData {
  const factory MemberData({
    @JsonKey(name: 'profile_data') ProfileData? profileData,
    @JsonKey(name: 'family_details') FamilyDetails? familyDetails,
    @JsonKey(name: 'head_member_id') String? headMemberId,
    @JsonKey(name: 'errors') Map<String, List<String>>? errors,
  }) = _MemberData;

  factory MemberData.fromJson(Map<String, dynamic> json) =>
      _$MemberDataFromJson(json);
}

@freezed
class ProfileData with _$ProfileData {
  const factory ProfileData({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'ref_id') required String refId,
    @JsonKey(name: 'old_ref_code') String? oldRefCode,
    required String title,
    required String address,
    @JsonKey(name: 'pin_code') required String pinCode,
    @JsonKey(name: 'btc_assembly_constituency_id')
    required int btcAssemblyConstituencyId,
    @JsonKey(name: 'btc_constituency') required int btcConstituency,
    @JsonKey(name: 'party_district') required int partyDistrict,
    @JsonKey(name: 'assembly_constituency') required int assemblyConstituency,
    @JsonKey(name: 'primary_id') required int primaryId,
    @JsonKey(name: 'booth_id') required int boothId,
    @JsonKey(name: 'village_id') required int villageId,
    @JsonKey(name: 'created_by') int? createdBy,
    @JsonKey(name: 'update_count') int? updateCount,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required String village,
    String? photo,
    required String district,
    @JsonKey(name: 'district_id') required int districtId,
    required String name,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    @JsonKey(name: 'membership_no') required String membershipNo,
    @JsonKey(name: 'ref_code') required String refCode,
    required String gender,
    @JsonKey(name: 'date_of_birth') required String dateOfBirth,
    String? email,
    @JsonKey(name: 'joining_date') String? joiningDate,
  }) = _ProfileData;

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}

@freezed
class FamilyDetails with _$FamilyDetails {
  const factory FamilyDetails({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'head_member_id') required int headMemberId,
    @JsonKey(name: 'ref_id') required int refId,
    @JsonKey(name: 'ref_code') required String refCode,
    @JsonKey(name: 'old_ref_code') String? oldRefCode,
    @JsonKey(name: 'membership_no') required String membershipNo,
    required String title,
    required String name,
    String? email,
    String? photo,
    @JsonKey(name: 'date_of_birth') required String dateOfBirth,
    required int gender,
    required String address,
    @JsonKey(name: 'pin_code') required String pinCode,
    @JsonKey(name: 'btc_assembly_constituency_id')
    required int btcAssemblyConstituencyId,
    @JsonKey(name: 'btc_constituency') required int btcConstituency,
    required int district,
    @JsonKey(name: 'party_district') required int partyDistrict,
    @JsonKey(name: 'assembly_constituency') required int assemblyConstituency,
    @JsonKey(name: 'primary_id') required int primaryId,
    @JsonKey(name: 'booth_id') required int boothId,
    @JsonKey(name: 'village_id') required int villageId,
    @JsonKey(name: 'created_by') required int createdBy,
    @JsonKey(name: 'update_count') required int updateCount,
    String? religion,
    @JsonKey(name: 'other_religion') String? otherReligion,
    String? caste,
    String? category,
    String? profession,
    @JsonKey(name: 'other_profession') String? otherProfession,
    String? education,
    @JsonKey(name: 'other_education') String? otherEducation,
    @JsonKey(name: 'aadhaar_no') required String aadhaarNo,
    @JsonKey(name: 'voter_id') required String voterId,
    required int relationship,
    String? country,
    @JsonKey(name: 'mother_tounge') String? motherTounge,
    @JsonKey(name: 'other_mother_tounge') String? otherMotherTounge,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _FamilyDetails;

  factory FamilyDetails.fromJson(Map<String, dynamic> json) =>
      _$FamilyDetailsFromJson(json);
}
