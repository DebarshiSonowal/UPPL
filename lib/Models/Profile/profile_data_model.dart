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

  factory ProfileDataModel.fromJson(Map<String, dynamic> json) {
    return ProfileDataModel(
      status: json['status'] as int,
      message: json['message'] as String,
      data: json['data'] != null && json['data'] is Map<String, dynamic>
          ? ProfileDataWrapper.fromJson(json['data'] as Map<String, dynamic>)
          : null, // Handle cases like empty array or null data
      code: json['code'] as int,
    );
  }
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
    @JsonKey(name: 'old_ref_code') String? oldRefCode,
    required String title,
    required String address,
    @JsonKey(name: 'pin_code') required String pinCode,
    @JsonKey(name: 'btc_assembly_constituency_id')
    required int? btcAssemblyConstituencyId,
    @JsonKey(name: 'btc_constituency') required int? btcConstituency,
    @JsonKey(name: 'party_district') required int? partyDistrict,
    @JsonKey(name: 'assembly_constituency') required int assemblyConstituency,
    @JsonKey(name: 'primary_id') required int primaryId,
    @JsonKey(name: 'booth_id') required int boothId,
    @JsonKey(name: 'village_id') required int villageId,
    @JsonKey(name: 'created_by') required int createdBy,
    @JsonKey(name: 'update_count') required int updateCount,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required String village,
    @JsonKey(name: 'photo') String? photo,
    required String district,
    @JsonKey(name: 'district_id') required int districtId,
    required String name,
    @JsonKey(name: 'mobile_no') required String mobileNo,
    @JsonKey(name: 'membership_no') required String membershipNo,
    @JsonKey(name: 'ref_code') required String refCode,
    required int gender,
    @JsonKey(name: 'date_of_birth') required String dateOfBirth,
    String? email,
    @JsonKey(name: 'mother_tounge') int? motherTounge,
    @JsonKey(name: 'other_mother_tounge') String? otherMotherTounge,
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
    String? email,
    @JsonKey(name: 'religion') int? religion,
    @JsonKey(name: 'other_religion') String? otherReligion,
    String? caste,
    int? category,
    int? profession,
    @JsonKey(name: 'other_profession') String? otherProfession,
    int? education,
    @JsonKey(name: 'other_education') String? otherEducation,
    @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
    @JsonKey(name: 'voter_id') String? voterId,
    @JsonKey(name: 'mobile_no') required String mobileNo,
    @JsonKey(name: 'mother_tounge') int? motherTounge,
    @JsonKey(name: 'other_mother_tounge') String? otherMotherTounge,
  }) = _PersonalDetails;

  factory PersonalDetails.fromJson(Map<String, dynamic> json) =>
      _$PersonalDetailsFromJson(json);
}

@freezed
class SocialDetails with _$SocialDetails {
  const factory SocialDetails({
    @JsonKey(name: 'member_id') int? memberId,
    @JsonKey(name: 'aleternate_number') String? aleternateNumber,
    @JsonKey(name: 'facebook_url') String? facebookUrl,
    @JsonKey(name: 'twitter_url') String? twitterUrl,
    @JsonKey(name: 'instagram_url') String? instagramUrl,
  }) = _SocialDetails;

  factory SocialDetails.fromJson(Map<String, dynamic> json) =>
      _$SocialDetailsFromJson(json);
}
