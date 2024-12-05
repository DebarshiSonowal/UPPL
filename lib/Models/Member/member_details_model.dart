import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_details_model.freezed.dart';
part 'member_details_model.g.dart';

@freezed
class MemberDetailsModel with _$MemberDetailsModel {
  const factory MemberDetailsModel.success({
    required int status,
    required String message,
    required MemberDetailsData data,
    required int code,
  }) = SuccessResponse;

  const factory MemberDetailsModel.error({
    required int status,
    required String message,
    required MemberDetailsError data,
    required int code,
  }) = ErrorResponse;

  factory MemberDetailsModel.fromJson(Map<String, dynamic> json) {
    if (json['status'] == 1) {
      return MemberDetailsModel.success(
        status: json['status'] as int,
        message: json['message'] as String,
        data: MemberDetailsData.fromJson(json['data'] as Map<String, dynamic>),
        code: json['code'] as int,
      );
    } else {
      return MemberDetailsModel.error(
        status: json['status'] as int,
        message: json['message'] as String,
        data: MemberDetailsError.fromJson(json['data'] as Map<String, dynamic>),
        code: json['code'] as int,
      );
    }
  }
}

@freezed
class MemberDetailsData with _$MemberDetailsData {
  const factory MemberDetailsData({
    @JsonKey(name: 'membership_card_data')
    required MembershipCardData membershipCardData,
    @JsonKey(name: 'personal_details')
    required MemberPersonalDetails personalDetails,
  }) = _MemberDetailsData;

  factory MemberDetailsData.fromJson(Map<String, dynamic> json) =>
      _$MemberDetailsDataFromJson(json);
}

@freezed
class MembershipCardData with _$MembershipCardData {
  const factory MembershipCardData({
    required String name,
    @JsonKey(name: 'membership_no') String? membershipNo,
    @JsonKey(name: 'mobile_no') required String mobileNo,
    String? email,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    int? gender,
    String? photo,
    String? district,
    @JsonKey(name: 'ref_code') String? refCode,
    @JsonKey(name: 'joining_date') required String joiningDate,
    @JsonKey(name: 'referral_link') required String referralLink,
    @JsonKey(name: 'no_of_registered_member') required int noOfRegisteredMember,
  }) = _MembershipCardData;

  factory MembershipCardData.fromJson(Map<String, dynamic> json) =>
      _$MembershipCardDataFromJson(json);
}

@freezed
class MemberPersonalDetails with _$MemberPersonalDetails {
  const factory MemberPersonalDetails({
    @JsonKey(name: 'member_id') required int memberId,
    required String name,
    @JsonKey(name: 'date_of_birth') required String dateOfBirth,
    required int gender,
    String? email,
    int? religion,
    String? caste,
    int? category,
    int? profession,
    int? education,
    @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
    @JsonKey(name: 'voter_id') String? voterId,
    @JsonKey(name: 'mobile_no') required String mobileNo,
  }) = _MemberPersonalDetails;

  factory MemberPersonalDetails.fromJson(Map<String, dynamic> json) =>
      _$MemberPersonalDetailsFromJson(json);
}

@freezed
class MemberDetailsError with _$MemberDetailsError {
  const factory MemberDetailsError({
    required Map<String, List<String>> errors,
  }) = _MemberDetailsError;

  factory MemberDetailsError.fromJson(Map<String, dynamic> json) =>
      _$MemberDetailsErrorFromJson(json);
}
