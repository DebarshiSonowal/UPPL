import 'package:freezed_annotation/freezed_annotation.dart';

part 'regenerate_token_model.freezed.dart';
part 'regenerate_token_model.g.dart';

@freezed
class RegenerateTokenModel with _$RegenerateTokenModel {
  const factory RegenerateTokenModel.success({
    required int status,
    required String message,
    required RegenerateTokenData data,
    required int code,
  }) = RegenerateTokenModelSuccess;

  const factory RegenerateTokenModel.error({
    required int status,
    required String message,
    required RegenerateTokenError error,
    required int code,
  }) = RegenerateTokenModelError;

  const factory RegenerateTokenModel.withError({
    required int status,
    required String message,
    required RegenerateTokenError error,
    required int code,
  }) = RegenerateTokenModelWithError;

  factory RegenerateTokenModel.fromJson(Map<String, dynamic> json) =>
      _$RegenerateTokenModelFromJson(json);
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
