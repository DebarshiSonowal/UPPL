import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_data_model.freezed.dart';
part 'profile_data_model.g.dart';

@freezed
class ProfileDataModel with _$ProfileDataModel {
  const factory ProfileDataModel({
    required int status,
    required String message,
    ProfileDataWrapper? data,
    required int code,
  }) = _ProfileDataModel;

  factory ProfileDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataModelFromJson(json);
}

@freezed
class ProfileDataWrapper with _$ProfileDataWrapper {
  const factory ProfileDataWrapper({
    @JsonKey(name: 'profile_data') required ProfileData profileData,
    @JsonKey(name: 'personal_details') required PersonalDetails personalDetails,
    @JsonKey(name: 'social_details') required SocialDetails socialDetails,
  }) = _ProfileDataWrapper;

  factory ProfileDataWrapper.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataWrapperFromJson(json);
}

@freezed
class ProfileData with _$ProfileData {
  const factory ProfileData({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'ref_id') required int refId,
    @JsonKey(name: 'old_ref_code') String? oldRefCode, // Nullable
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
    @JsonKey(name: 'photo') String? photo, // Nullable
    required String district,
    @JsonKey(name: 'district_id') required int districtId,
    required String name,
    @JsonKey(name: 'mobile_no') required String mobileNo,
    @JsonKey(name: 'membership_no') required String membershipNo,
    @JsonKey(name: 'ref_code') required String refCode,
    required int gender,
    @JsonKey(name: 'date_of_birth') required String dateOfBirth,
    String? email, // Nullable
    @JsonKey(name: 'mother_tounge') int? motherTounge, // Nullable
    @JsonKey(name: 'other_mother_tounge') String? otherMotherTounge, // Nullable
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
    required int gender,
    String? email, // Nullable
    @JsonKey(name: 'religion') int? religion, // Nullable
    @JsonKey(name: 'other_religion') String? otherReligion, // Nullable
    String? caste, // Nullable
    int? category, // Nullable
    int? profession, // Nullable
    @JsonKey(name: 'other_profession') String? otherProfession, // Nullable
    int? education,
    @JsonKey(name: 'other_education') String? otherEducation, // Nullable
    @JsonKey(name: 'aadhaar_no') String? aadhaarNo, // Nullable
    @JsonKey(name: 'voter_id') String? voterId, // Nullable
    @JsonKey(name: 'mobile_no') required String mobileNo,
    @JsonKey(name: 'mother_tounge') int? motherTounge, // Nullable
    @JsonKey(name: 'other_mother_tounge') String? otherMotherTounge, // Nullable
  }) = _PersonalDetails;

  factory PersonalDetails.fromJson(Map<String, dynamic> json) =>
      _$PersonalDetailsFromJson(json);
}

@freezed
class SocialDetails with _$SocialDetails {
  const factory SocialDetails({
    @JsonKey(name: 'member_id') int? memberId, // Nullable
    @JsonKey(name: 'aleternate_number') String? aleternateNumber, // Nullable
    @JsonKey(name: 'facebook_url') String? facebookUrl, // Nullable
    @JsonKey(name: 'twitter_url') String? twitterUrl, // Nullable
    @JsonKey(name: 'instagram_url') String? instagramUrl, // Nullable
  }) = _SocialDetails;

  factory SocialDetails.fromJson(Map<String, dynamic> json) =>
      _$SocialDetailsFromJson(json);
}
