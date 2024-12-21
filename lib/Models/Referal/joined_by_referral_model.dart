import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'joined_by_referral_model.freezed.dart';
part 'joined_by_referral_model.g.dart';

@freezed
class JoinedByReferralModel with _$JoinedByReferralModel {
  const factory JoinedByReferralModel({
    required int status,
    required String message,
    JoinedByReferralData? data,
    required int code,
  }) = _JoinedByReferralModel;

  factory JoinedByReferralModel.fromJson(Map<String, dynamic> json) {
    return JoinedByReferralModel(
      status: json['status'] as int,
      message: json['message'] as String,
      data: json['data'] != null && json['data'] is Map<String, dynamic>
          ? JoinedByReferralData.fromJson(json['data'] as Map<String, dynamic>)
          : null, // Handle null or empty data
      code: json['code'] as int,
    );
  }
}

@freezed
class JoinedByReferralData with _$JoinedByReferralData {
  const factory JoinedByReferralData({
    required int draw,
    @JsonKey(name: 'recordsTotal') required int recordsTotal,
    @JsonKey(name: 'recordsFiltered') required int recordsFiltered,
    required List<JoinedByReferralMember> data,
  }) = _JoinedByReferralData;

  factory JoinedByReferralData.fromJson(Map<String, dynamic> json) =>
      _$JoinedByReferralDataFromJson(json);
}

@freezed
class JoinedByReferralMember with _$JoinedByReferralMember {
  const factory JoinedByReferralMember({
    @JsonKey(name: 'member_id') required int memberId,
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
    @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
    required DateTime createdAt,
    @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
    required DateTime updatedAt,
    required String photo,
    required int district,
    @JsonKey(name: 'member_name') required String memberName,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    @JsonKey(name: 'membership_no') required String membershipNo,
    @JsonKey(name: 'ref_code') required String refCode,
    required int gender,
    @JsonKey(name: 'date_of_birth', fromJson: _fromJson, toJson: _toJson)
    required DateTime dateOfBirth,
    String? email,
    String? voterId,
    @JsonKey(name: 'village_name') required String villageName,
    @JsonKey(name: 'primary_name') required String primaryName,
    @JsonKey(name: 'constituency_name') required String constituencyName,
    @JsonKey(name: 'district_name') required String districtName,
    @JsonKey(name: 'head_member_id') required int headMemberId,
    @JsonKey(name: 'head_member_name') String? headMemberName,
    @JsonKey(name: 'relationship_id') int? relationshipId,
    @JsonKey(name: 'joining_date', fromJson: _fromJson, toJson: _toJson)
    required DateTime joiningDate,
    @JsonKey(name: 'relationship_name') required String relationshipName,
  }) = _JoinedByReferralMember;

  factory JoinedByReferralMember.fromJson(Map<String, dynamic> json) =>
      _$JoinedByReferralMemberFromJson(json);
}

// Custom date parsers
DateTime _fromJson(String date) {
  try {
    // Attempt to parse ISO 8601 format first
    return DateTime.parse(date);
  } catch (e) {
    try {
      // Fallback to custom format "13 Nov, 2024"
      return DateFormat("dd MMM, yyyy").parse(date);
    } catch (e) {
      throw FormatException("Invalid date format: $date");
    }
  }
}

String _toJson(DateTime date) => DateFormat("dd MMM, yyyy").format(date);
