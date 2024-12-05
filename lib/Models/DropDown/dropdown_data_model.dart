import 'package:freezed_annotation/freezed_annotation.dart';

part 'dropdown_data_model.freezed.dart';
part 'dropdown_data_model.g.dart';

@freezed
class DropDownDataModel with _$DropDownDataModel {
  const factory DropDownDataModel.success({
    required int status,
    required String message,
    required DropDownData data,
    required int code,
  }) = SuccessResponse;

  const factory DropDownDataModel.error({
    required int status,
    required String message,
    required DropDownError error,
    required int code,
  }) = ErrorResponse;

  factory DropDownDataModel.fromJson(Map<String, dynamic> json) {
    if (json['status'] == 1) {
      return DropDownDataModel.success(
        status: json['status'] as int,
        message: json['message'] as String,
        data: DropDownData.fromJson(json['data'] as Map<String, dynamic>),
        code: json['code'] as int,
      );
    } else {
      return DropDownDataModel.error(
        status: json['status'] as int,
        message: json['message'] as String,
        error: DropDownError.fromJson(json['error'] as Map<String, dynamic>),
        code: json['code'] as int,
      );
    }
  }
}

@freezed
class DropDownData with _$DropDownData {
  const factory DropDownData({
    required List<String> religions,
    required Map<String, String> categories,
    List<String>? castes,
    required List<String> professions,
    @JsonKey(name: 'education_levels') required List<String> educationLevels,
    @JsonKey(name: 'relationship') required Map<String, String> relationships,
    required Map<String, String> country,
    @JsonKey(name: 'mother_tounge') required List<String> motherTongue,
  }) = _DropDownData;

  factory DropDownData.fromJson(Map<String, dynamic> json) =>
      _$DropDownDataFromJson(json);
}

@freezed
class DropDownError with _$DropDownError {
  const factory DropDownError({
    required Map<String, List<String>> errors,
  }) = _DropDownError;

  factory DropDownError.fromJson(Map<String, dynamic> json) =>
      _$DropDownErrorFromJson(json);
}
