import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel.success({
    required int status,
    required String message,
    required SuccessData data,
    required int code,
  }) = SuccessResponse;

  const factory LoginModel.otp({
    required int status,
    required String message,
    required OTPData data,
    required int code,
  }) = OTPResponse;

  const factory LoginModel.error({
    required int status,
    required String message,
    required ErrorData data,
    required int code,
  }) = ErrorResponse;

  /// Custom `fromJson` to determine success, OTP, or error based on `status`
  factory LoginModel.fromJson(Map<String, dynamic> json) {
    print("Incoming JSON: $json");

    if (json['data'] != null && json['data'] is Map<String, dynamic>) {
      final dataMap = json['data'] as Map<String, dynamic>;

      // Check for access_token for success response
      if (dataMap.containsKey('access_token')) {
        return LoginModel.success(
          status: json['status'] as int,
          message: json['message'] as String,
          data: SuccessData.fromJson(dataMap),
          code: json['code'] as int,
        );
      }

      // Check for phone_number for OTP response
      if (dataMap.containsKey('phone_number') &&
          !dataMap.containsKey('errors')) {
        return LoginModel.otp(
          status: json['status'] as int,
          message: json['message'] as String,
          data: OTPData.fromJson(dataMap),
          code: json['code'] as int,
        );
      }

      // Error response
      if (dataMap.containsKey('errors')) {
        return LoginModel.error(
          status: json['status'] as int,
          message: json['message'] as String,
          data: ErrorData.fromJson(dataMap),
          code: json['code'] as int,
        );
      }
    }

    throw Exception('Unhandled JSON structure: $json');
  }
}

@freezed
class SuccessData with _$SuccessData {
  const factory SuccessData({
    @JsonKey(name: "access_token") required String accessToken,
    @JsonKey(name: "refresh_token") required String refreshToken,
    required MembershipCardData membershipCardData,
    @JsonKey(name: "phone_number") required String phoneNumber,
  }) = _SuccessData;

  factory SuccessData.fromJson(Map<String, dynamic> json) =>
      _$SuccessDataFromJson(json);
}

@freezed
class OTPData with _$OTPData {
  const factory OTPData({
    @JsonKey(name: "phone_number") required String phoneNumber,
  }) = _OTPData;

  factory OTPData.fromJson(Map<String, dynamic> json) =>
      _$OTPDataFromJson(json);
}

@freezed
class ErrorData with _$ErrorData {
  const factory ErrorData({
    required Map<String, List<String>> errors,
  }) = _ErrorData;

  factory ErrorData.fromJson(Map<String, dynamic> json) =>
      _$ErrorDataFromJson(json);
}

@freezed
class MembershipCardData with _$MembershipCardData {
  const factory MembershipCardData({
    required String name,
    @JsonKey(name: "membership_no") String? membershipNo,
    @JsonKey(name: "mobile_no") required String mobileNo,
    String? email,
    @JsonKey(name: "date_of_birth") String? dateOfBirth,
    int? gender, // Updated to int?
    String? photo,
    String? district,
    @JsonKey(name: "ref_code") String? refCode,
    @JsonKey(name: "joining_date") required String joiningDate,
    @JsonKey(name: "referral_link") required String referralLink,
    @JsonKey(name: "no_of_registered_member") required int noOfRegisteredMember,
  }) = _MembershipCardData;

  factory MembershipCardData.fromJson(Map<String, dynamic> json) =>
      _$MembershipCardDataFromJson(json);
}
