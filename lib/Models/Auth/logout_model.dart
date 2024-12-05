import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_model.freezed.dart';
part 'logout_model.g.dart';

@freezed
class LogoutResponseModel with _$LogoutResponseModel {
  const factory LogoutResponseModel({
    required int status,
    required String message,
    dynamic data, // Can be any data type, including null
    required int code,
  }) = _LogoutResponseModel;

  const factory LogoutResponseModel.withError(String message) =
      _LogoutResponseModelWithError;

  factory LogoutResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseModelFromJson(json);
}
