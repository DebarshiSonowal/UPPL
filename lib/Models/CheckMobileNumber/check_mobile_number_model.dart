import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_mobile_number_model.freezed.dart';
part 'check_mobile_number_model.g.dart';

@freezed
class OtpResponseModel with _$OtpResponseModel {
  const factory OtpResponseModel({
    required int status,
    required String message,
    OtpData? data,
    OtpError? error,
    required int code,
  }) = _OtpResponseModel;

  const factory OtpResponseModel.withError(String message) =
      _OtpResponseModelWithError;

  factory OtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OtpResponseModelFromJson(json);
}

@freezed
class OtpData with _$OtpData {
  const factory OtpData({
    String? otp,
  }) = _OtpData;

  factory OtpData.fromJson(Map<String, dynamic> json) =>
      _$OtpDataFromJson(json);
}

@freezed
class OtpError with _$OtpError {
  const factory OtpError({
    required Map<String, List<String>> errors,
  }) = _OtpError;

  factory OtpError.fromJson(Map<String, dynamic> json) =>
      _$OtpErrorFromJson(json);
}
