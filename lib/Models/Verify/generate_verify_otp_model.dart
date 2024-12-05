import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_verify_otp_model.freezed.dart';
part 'generate_verify_otp_model.g.dart';

@freezed
class GenerateVerifyOtpModel with _$GenerateVerifyOtpModel {
  const factory GenerateVerifyOtpModel.success({
    required int status,
    required String message,
    required Data data,
    required int code,
  }) = SuccessResponse;

  const factory GenerateVerifyOtpModel.error({
    required int status,
    required String message,
    int? code, // Code can be optional in case of errors
  }) = ErrorResponse;

  /// Custom `fromJson` to determine success or error based on `status`
  factory GenerateVerifyOtpModel.fromJson(Map<String, dynamic> json) {
    if (json['status'] == 1) {
      return GenerateVerifyOtpModel.success(
        status: json['status'] as int,
        message: json['message'] as String,
        data: Data.fromJson(json['data'] as Map<String, dynamic>),
        code: json['code'] as int,
      );
    } else {
      return GenerateVerifyOtpModel.error(
        status: json['status'] as int,
        message: json['message'] as String,
        code: json['code'] as int?,
      );
    }
  }
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "phone_number")
    required String phoneNumber, // Ensure phoneNumber is String
    int? status, // Optional, but keep it if needed for other logic
    bool? registered, // Optional, add if required
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
