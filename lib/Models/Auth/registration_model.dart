import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_model.freezed.dart';
part 'registration_model.g.dart';

@freezed
class RegistrationResponseModel with _$RegistrationResponseModel {
  const factory RegistrationResponseModel({
    required int status,
    required String message,
    RegistrationData? data,
    int? code, // Optional, as some error responses might not have a `code`
    RegistrationError? error, // Include an error field to handle errors
  }) = _RegistrationResponseModel;

  factory RegistrationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResponseModelFromJson(json);
}

@freezed
class RegistrationData with _$RegistrationData {
  const factory RegistrationData({
    @JsonKey(name: 'errors') Map<String, List<String>>? errors,
    @JsonKey(name: 'membershipCardData') MembershipCardData? membershipCardData,
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'refresh_token') String? refreshToken,
  }) = _RegistrationData;

  factory RegistrationData.fromJson(Map<String, dynamic> json) =>
      _$RegistrationDataFromJson(json);
}

@freezed
class MembershipCardData with _$MembershipCardData {
  const factory MembershipCardData({
    String? name,
    @JsonKey(name: 'membership_no') String? membershipNo,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    String? email,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    String? gender,
    String? photo,
    String? district,
    @JsonKey(name: 'ref_code') String? refCode,
    @JsonKey(name: 'joining_date') String? joiningDate,
    @JsonKey(name: 'referral_link') String? referralLink,
    @JsonKey(name: 'no_of_registered_member') int? noOfRegisteredMember,
  }) = _MembershipCardData;

  factory MembershipCardData.fromJson(Map<String, dynamic> json) =>
      _$MembershipCardDataFromJson(json);
}

@freezed
class RegistrationError with _$RegistrationError {
  const factory RegistrationError({
    required Map<String, List<String>> errors, // For detailed error messages
  }) = _RegistrationError;

  factory RegistrationError.fromJson(Map<String, dynamic> json) =>
      _$RegistrationErrorFromJson(json);
}
