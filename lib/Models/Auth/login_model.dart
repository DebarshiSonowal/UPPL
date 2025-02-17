import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
abstract class LoginModel with _$LoginModel {
  const factory LoginModel({
    required int status,
    required String message,
    required SuccessData data,
    required int code,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    final status = json['status'] as int? ?? 0;
    final message = json['message'] as String? ?? '';
    final code = json['code'] as int? ?? 0;

    // Handle success response

    return LoginModel(
      status: status,
      message: message,
      data: SuccessData.fromJson(json['data']),
      code: code,
    );
  }
}

@freezed
class SuccessData with _$SuccessData {
  const factory SuccessData({
    @JsonKey(name: "access_token") String? accessToken,
    @JsonKey(name: "refresh_token") String? refreshToken,
    MembershipCardData? membershipCardData,
    String? role,
    @JsonKey(name: "phone_number") String? phoneNumber,
    @JsonKey(name: 'errors') Map<String, List<String>>? errors,
  }) = _SuccessData;

  factory SuccessData.fromJson(Map<String, dynamic> json) =>
      _$SuccessDataFromJson(json);
}

@freezed
class MembershipCardData with _$MembershipCardData {
  const factory MembershipCardData({
    required String name,
    @JsonKey(name: "membership_no") String? membershipNo,
    @JsonKey(name: "mobile_no") required String mobileNo,
    String? email,
    @JsonKey(name: "date_of_birth") String? dateOfBirth,
    int? gender,
    String? photo,
    String? district,
    @JsonKey(name: "ref_code") String? refCode,
    @JsonKey(name: "joining_date") required String joiningDate,
    @JsonKey(name: "referral_link") required String referralLink,
    @JsonKey(name: "no_of_registered_member") required int noOfRegisteredMember,
    @JsonKey(name: 'errors') Map<String, List<String>>? errors,
  }) = _MembershipCardData;

  factory MembershipCardData.fromJson(Map<String, dynamic> json) =>
      _$MembershipCardDataFromJson(json);
}
