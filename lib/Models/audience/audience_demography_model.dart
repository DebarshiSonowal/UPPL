import 'package:freezed_annotation/freezed_annotation.dart';

part 'audience_demography_model.freezed.dart';
part 'audience_demography_model.g.dart';

@freezed
class AudienceDemographyModel with _$AudienceDemographyModel {
  const factory AudienceDemographyModel.success({
    required int status,
    required String message,
    AudienceDemographyData? data,
    required int code,
  }) = SuccessResponse;

  const factory AudienceDemographyModel.error({
    required int status,
    required String message,
    AudienceDemographyError? error,
    required int code,
  }) = ErrorResponse;

  /// Custom `fromJson` to handle both success and error cases, including empty or null data
  factory AudienceDemographyModel.fromJson(Map<String, dynamic> json) {
    if (json['status'] == 1) {
      return AudienceDemographyModel.success(
        status: json['status'] as int,
        message: json['message'] as String,
        data: json['data'] != null && json['data'] is Map<String, dynamic>
            ? AudienceDemographyData.fromJson(
                json['data'] as Map<String, dynamic>)
            : null, // Handle null or empty data
        code: json['code'] as int,
      );
    } else {
      return AudienceDemographyModel.error(
        status: json['status'] as int,
        message: json['message'] as String,
        error: json['data'] != null && json['data'] is Map<String, dynamic>
            ? AudienceDemographyError.fromJson(
                json['data'] as Map<String, dynamic>)
            : const AudienceDemographyError(errors: {}), // Default empty errors
        code: json['code'] as int,
      );
    }
  }
}

@freezed
class AudienceDemographyData with _$AudienceDemographyData {
  const factory AudienceDemographyData({
    required int totalMembers,
    required int totalMembersToday,
    required double malePercentage,
    required double femalePercentage,
    required int rank,
  }) = _AudienceDemographyData;

  factory AudienceDemographyData.fromJson(Map<String, dynamic> json) =>
      _$AudienceDemographyDataFromJson({
        ...json,
        'malePercentage': _parseDouble(json['male_percentage']),
        'femalePercentage': _parseDouble(json['female_percentage']),
        'totalMembers': json['total_members'] as int,
        'totalMembersToday': json['total_members_today'] as int,
        'rank': json['rank'] as int,
      });

  /// Helper method to parse double values from mixed types
  static double _parseDouble(dynamic value) {
    if (value is String) {
      return double.tryParse(value) ?? 0.0;
    } else if (value is int) {
      return value.toDouble();
    } else if (value is double) {
      return value;
    } else {
      return 0.0;
    }
  }
}

@freezed
class AudienceDemographyError with _$AudienceDemographyError {
  const factory AudienceDemographyError({
    required Map<String, List<String>> errors,
  }) = _AudienceDemographyError;

  factory AudienceDemographyError.fromJson(Map<String, dynamic> json) =>
      _$AudienceDemographyErrorFromJson(json);
}
