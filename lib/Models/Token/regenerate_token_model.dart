import 'package:freezed_annotation/freezed_annotation.dart';

part 'regenerate_token_model.freezed.dart';
part 'regenerate_token_model.g.dart';

@freezed
class RegenerateTokenModel with _$RegenerateTokenModel {
  const factory RegenerateTokenModel({
    required int status,
    required String message,
    @JsonKey(includeFromJson: false, includeToJson: false)
    RegenerateTokenData? data,
    RegenerateTokenError? error,
    required int code,
  }) = _RegenerateTokenModel;

  const factory RegenerateTokenModel.withError(String message) =
      _RegenerateTokenModelWithError;

  /// Custom `fromJson` to handle success or error response
  factory RegenerateTokenModel.fromJson(Map<String, dynamic> json) {
    if (json['status'] == 1) {
      return RegenerateTokenModel(
        status: json['status'] as int,
        message: json['message'] as String,
        data: json['data'] != null
            ? RegenerateTokenData.fromJson(json['data'] as Map<String, dynamic>)
            : null,
        error: null,
        code: json['code'] as int,
      );
    } else {
      return RegenerateTokenModel(
        status: json['status'] as int,
        message: json['message'] as String,
        data: null,
        error:
            RegenerateTokenError.fromJson(json['data'] as Map<String, dynamic>),
        code: json['code'] as int,
      );
    }
  }
}

@freezed
class RegenerateTokenData with _$RegenerateTokenData {
  const factory RegenerateTokenData({
    @JsonKey(name: "access_token") required String accessToken,
    @JsonKey(name: "refresh_token") required String refreshToken,
  }) = _RegenerateTokenData;

  factory RegenerateTokenData.fromJson(Map<String, dynamic> json) =>
      _$RegenerateTokenDataFromJson(json);
}

@freezed
class RegenerateTokenError with _$RegenerateTokenError {
  const factory RegenerateTokenError({
    required Map<String, List<String>> errors,
  }) = _RegenerateTokenError;

  factory RegenerateTokenError.fromJson(Map<String, dynamic> json) =>
      _$RegenerateTokenErrorFromJson(json);
}
