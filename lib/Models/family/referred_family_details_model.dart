import 'package:freezed_annotation/freezed_annotation.dart';

import '../JSON/generate_json_model.dart'; // Assuming District is imported here

part 'referred_family_details_model.freezed.dart';
part 'referred_family_details_model.g.dart';

@freezed
class ReferredFamilyDetailsModel with _$ReferredFamilyDetailsModel {
  const factory ReferredFamilyDetailsModel({
    required int status,
    required String message,
    required FamilyData data, // Maps the 'data' field from JSON
    required int code,
  }) = _ReferredFamilyDetailsModel;

  factory ReferredFamilyDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ReferredFamilyDetailsModelFromJson(json);
}

@freezed
class FamilyData with _$FamilyData {
  const factory FamilyData({
    @JsonKey(name: 'family_details')
    required List<ReferredMemberFamilyDetails> familyDetails,
  }) = _FamilyData;

  factory FamilyData.fromJson(Map<String, dynamic> json) =>
      _$FamilyDataFromJson(json);
}

@freezed
class ReferredMemberFamilyDetails with _$ReferredMemberFamilyDetails {
  const factory ReferredMemberFamilyDetails({
    @JsonKey(name: 'membership_card') required MembershipCard membershipCard,
    @JsonKey(name: 'personal_details')
    required ReferredPersonalDetails personalDetails,
  }) = _ReferredMemberFamilyDetails;

  factory ReferredMemberFamilyDetails.fromJson(Map<String, dynamic> json) =>
      _$ReferredMemberFamilyDetailsFromJson(json);
}

@freezed
class MembershipCard with _$MembershipCard {
  const factory MembershipCard({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'ref_id') required int refId,
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
    @JsonKey(name: 'created_by') required int createdBy,
    @JsonKey(name: 'update_count') required int updateCount,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required String village,
    String? photo,
    required District district,
    @JsonKey(name: 'district_id') int? districtId,
    required String name,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    @JsonKey(name: 'membership_no') required String membershipNo,
    @JsonKey(name: 'ref_code') required String refCode,
    required int gender,
    @JsonKey(name: 'date_of_birth') required String dateOfBirth,
    String? email,
    @JsonKey(name: 'joining_date') required String joiningDate,
    required int relationship,
  }) = _MembershipCard;

  factory MembershipCard.fromJson(Map<String, dynamic> json) =>
      _$MembershipCardFromJson(json);
}

@freezed
class ReferredPersonalDetails with _$ReferredPersonalDetails {
  const factory ReferredPersonalDetails({
    @JsonKey(name: 'member_id') required int memberId,
    required String name,
    @JsonKey(name: 'date_of_birth') required String dateOfBirth,
    required int gender,
    String? email,
    String? religion,
    @JsonKey(name: 'other_religion') String? otherReligion,
    String? caste,
    String? category,
    String? profession,
    @JsonKey(name: 'other_profession') String? otherProfession,
    String? education,
    @JsonKey(name: 'other_education') String? otherEducation,
    @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
    @JsonKey(name: 'voter_id') required String voterId,
    @JsonKey(name: 'mobile_no') String? mobileNo,
  }) = _ReferredPersonalDetails;

  factory ReferredPersonalDetails.fromJson(Map<String, dynamic> json) =>
      _$ReferredPersonalDetailsFromJson(json);
}
