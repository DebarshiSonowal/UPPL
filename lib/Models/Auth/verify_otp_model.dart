import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_model.freezed.dart';
part 'verify_otp_model.g.dart';

@freezed
class VerifyOtpModel with _$VerifyOtpModel {
  const factory VerifyOtpModel({
    required int status,
    required String message,
    required VerifyOtpData data,
    required int code,
  }) = _VerifyOtpModel;

  factory VerifyOtpModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpModelFromJson(json);
}

@freezed
class VerifyOtpData with _$VerifyOtpData {
  const factory VerifyOtpData({
    @JsonKey(name: 'phone_number') required String phoneNumber,
  }) = _VerifyOtpData;

  factory VerifyOtpData.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpDataFromJson(json);
}
