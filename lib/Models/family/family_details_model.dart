import 'package:freezed_annotation/freezed_annotation.dart';

part 'family_details_model.freezed.dart';
part 'family_details_model.g.dart';

@freezed
class FamilyDetailsModel with _$FamilyDetailsModel {
  const factory FamilyDetailsModel({
    required int status,
    required String message,
    Data? data,
    required int code,
  }) = _FamilyDetailsModel;

  factory FamilyDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$FamilyDetailsModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'family_details') required List<FamilyDetail> familyDetails,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class FamilyDetail with _$FamilyDetail {
  const factory FamilyDetail({
    @JsonKey(name: 'membership_card')
    required FamilyMembershipCard membershipCard,
    @JsonKey(name: 'personal_details')
    required FamilyPersonalDetails personalDetails,
  }) = _FamilyDetail;

  factory FamilyDetail.fromJson(Map<String, dynamic> json) =>
      _$FamilyDetailFromJson(json);
}

@freezed
class FamilyMembershipCard with _$FamilyMembershipCard {
  const factory FamilyMembershipCard({
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
    @JsonKey(name: 'primary_name') String? primaryName,
    required String village,
    String? photo,
    required FamilyDistrict district,
    @JsonKey(name: 'district_id') int? districtId,
    required String name,
    @JsonKey(name: 'mobile_no') required String mobileNo,
    @JsonKey(name: 'membership_no') required String membershipNo,
    @JsonKey(name: 'ref_code') required String refCode,
    required int gender,
    @JsonKey(name: 'date_of_birth') required String dateOfBirth,
    String? email,
    @JsonKey(name: 'joining_date') required String joiningDate,
    required int relationship,
    @JsonKey(name: 'voter_id') required String voterId,
  }) = _FamilyMembershipCard;

  factory FamilyMembershipCard.fromJson(Map<String, dynamic> json) =>
      _$FamilyMembershipCardFromJson(json);
}

@freezed
class FamilyDistrict with _$FamilyDistrict {
  const factory FamilyDistrict({
    required int id,
    required String name,
  }) = _FamilyDistrict;

  factory FamilyDistrict.fromJson(Map<String, dynamic> json) =>
      _$FamilyDistrictFromJson(json);
}

@freezed
class FamilyPersonalDetails with _$FamilyPersonalDetails {
  const factory FamilyPersonalDetails({
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
    @JsonKey(name: 'voter_id') String? voterId,
    @JsonKey(name: 'mobile_no') String? mobileNo,
  }) = _FamilyPersonalDetails;

  factory FamilyPersonalDetails.fromJson(Map<String, dynamic> json) =>
      _$FamilyPersonalDetailsFromJson(json);
}
