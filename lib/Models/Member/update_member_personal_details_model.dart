import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_member_personal_details_model.freezed.dart';
part 'update_member_personal_details_model.g.dart';

@freezed
class UpdateMemberPersonalDetailsModel with _$UpdateMemberPersonalDetailsModel {
  const factory UpdateMemberPersonalDetailsModel({
    required int status,
    required String message,
    UpdateMemberPersonalDetailsData? data,
    required int code,
  }) = _UpdateMemberPersonalDetailsModel;

  factory UpdateMemberPersonalDetailsModel.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateMemberPersonalDetailsModelFromJson(json);
}

@freezed
class UpdateMemberPersonalDetailsData with _$UpdateMemberPersonalDetailsData {
  const factory UpdateMemberPersonalDetailsData({
    @JsonKey(name: 'errors') Map<String, List<String>>? errors,
    @JsonKey(name: 'member') MemberDetails? member, // Nullable field
  }) = _UpdateMemberPersonalDetailsData;

  factory UpdateMemberPersonalDetailsData.fromJson(Map<String, dynamic> json) =>
      _$UpdateMemberPersonalDetailsDataFromJson(json);
}

@freezed
class MemberDetails with _$MemberDetails {
  const factory MemberDetails({
    @JsonKey(name: 'profile_data') required ProfileData profileData,
    @JsonKey(name: 'personal_details') required PersonalDetails personalDetails,
  }) = _MemberDetails;

  factory MemberDetails.fromJson(Map<String, dynamic> json) =>
      _$MemberDetailsFromJson(json);
}

@freezed
class ProfileData with _$ProfileData {
  const factory ProfileData({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'ref_id') required int refId,
    @JsonKey(name: 'old_ref_code') String? oldRefCode, // Nullable field
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
    @JsonKey(name: 'created_by') required int createdBy,
    @JsonKey(name: 'update_count') required int updateCount,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required String village,
    required String photo,
    required String district,
    @JsonKey(name: 'district_id') required int districtId,
    required String name,
    @JsonKey(name: 'mobile_no') required String mobileNo,
    @JsonKey(name: 'membership_no') required String membershipNo,
    @JsonKey(name: 'ref_code') required String refCode,
    required int gender, // Changed from String to int
    @JsonKey(name: 'date_of_birth') required String dateOfBirth,
    String? email, // Nullable field
    @JsonKey(name: 'mother_tounge')
    required int motherTongue, // Changed from String to int
    @JsonKey(name: 'other_mother_tounge')
    String? otherMotherTongue, // Nullable field
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
    required int gender, // Changed from String to int
    String? email, // Nullable field
    required int religion, // Changed from String to int
    @JsonKey(name: 'other_religion') String? otherReligion, // Nullable field
    String? caste, // Nullable field
    required int category, // Changed from String to int
    required int profession, // Changed from String to int
    @JsonKey(name: 'other_profession')
    String? otherProfession, // Nullable field
    int? education, // Changed from String to int
    @JsonKey(name: 'other_education') String? otherEducation, // Nullable field
    @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
    @JsonKey(name: 'voter_id') required String voterId,
    @JsonKey(name: 'mobile_no') required String mobileNo,
    @JsonKey(name: 'community') required int community,
    @JsonKey(name: 'other_community') String? otherCommunity,
    @JsonKey(name: 'mother_tounge')
    required int motherTongue, // Changed from String to int
    @JsonKey(name: 'other_mother_tounge')
    String? otherMotherTongue, // Nullable field
  }) = _PersonalDetails;

  factory PersonalDetails.fromJson(Map<String, dynamic> json) =>
      _$PersonalDetailsFromJson(json);
}
