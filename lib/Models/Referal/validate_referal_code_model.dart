import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_referal_code_model.freezed.dart';
part 'validate_referal_code_model.g.dart';

@freezed
class ValidateMemberModel with _$ValidateMemberModel {
  const factory ValidateMemberModel({
    required int status, // Status of the response
    required String message, // Message from the response
    ValidateMemberData? data, // Optional data field for successful responses
    ValidateMemberError? error, // Now required to handle errors in the response
    required int code, // HTTP-like code for the response
  }) = _ValidateMemberModel;

  factory ValidateMemberModel.fromJson(Map<String, dynamic> json) =>
      _$ValidateMemberModelFromJson(json);
}

@freezed
class ValidateMemberData with _$ValidateMemberData {
  const factory ValidateMemberData({
    @JsonKey(name: 'ref_id') int? refId, // Map the `ref_id` field from JSON
  }) = _ValidateMemberData;

  factory ValidateMemberData.fromJson(Map<String, dynamic> json) =>
      _$ValidateMemberDataFromJson(json);
}

@freezed
class ValidateMemberError with _$ValidateMemberError {
  const factory ValidateMemberError({
    required Map<String, List<String>> errors, // Map of error messages
  }) = _ValidateMemberError;

  factory ValidateMemberError.fromJson(Map<String, dynamic> json) =>
      _$ValidateMemberErrorFromJson(json);
}
