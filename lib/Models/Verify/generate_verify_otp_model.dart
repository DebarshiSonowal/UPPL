import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_verify_otp_model.freezed.dart';
part 'generate_verify_otp_model.g.dart';

@freezed
class GenerateVerifyOtpModel with _$GenerateVerifyOtpModel {
  const factory GenerateVerifyOtpModel.success({
    required int status,
    required String message,
    Data? data,
    required int code,
  }) = SuccessResponse;

  const factory GenerateVerifyOtpModel.error({
    required int status,
    required String message,
    int? code,
    Data? data,
  }) = ErrorResponse;

  factory GenerateVerifyOtpModel.fromJson(Map<String, dynamic> json) {
    if (json['status'] == 1) {
      final dataJson = json['data'];
      final Data? parsedData = dataJson != null
          ? Data.fromJson(dataJson as Map<String, dynamic>)
          : null;

      return GenerateVerifyOtpModel.success(
        status: json['status'] as int,
        message: json['message'] as String,
        data: parsedData,
        code: json['code'] as int,
      );
    } else {
      final dataJson = json['data'];
      final Data? parsedData = dataJson != null
          ? Data.fromJson(dataJson as Map<String, dynamic>)
          : null;

      return GenerateVerifyOtpModel.error(
        status: json['status'] as int,
        message: json['message'] as String,
        code: json['code'] as int?,
        data: parsedData,
      );
    }
  }
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'errors') Map<String, List<String>>? errors,
    @JsonKey(name: "phone_number") String? phoneNumber,
    int? status,
    @JsonKey(name: "registered") bool? registered,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
