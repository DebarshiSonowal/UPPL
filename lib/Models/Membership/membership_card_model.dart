import 'package:freezed_annotation/freezed_annotation.dart';

part 'membership_card_model.freezed.dart';
part 'membership_card_model.g.dart';

@freezed
class MembershipCardModel with _$MembershipCardModel {
  const factory MembershipCardModel.success({
    required int status,
    required String message,
    required List<MembershipCardInfoData>? data, // Make data nullable
    required int code,
  }) = SuccessResponse;

  const factory MembershipCardModel.error({
    required int status,
    required String message,
    required Map<String, dynamic>? errors, // Adjust type to match API structure
    required int code,
  }) = ErrorResponse;

  factory MembershipCardModel.fromJson(Map<String, dynamic> json) {
    if (json['status'] == 1) {
      return MembershipCardModel.success(
        status: json['status'] as int,
        message: json['message'] as String,
        data: (json['data'] as List<dynamic>?)
            ?.map((e) =>
                MembershipCardInfoData.fromJson(e as Map<String, dynamic>))
            .toList(),
        code: json['code'] as int,
      );
    } else {
      return MembershipCardModel.error(
        status: json['status'] as int,
        message: json['message'] as String,
        errors: json['errors'] as Map<String, dynamic>?,
        code: json['code'] as int,
      );
    }
  }
}

@freezed
class MembershipCardInfoData with _$MembershipCardInfoData {
  const factory MembershipCardInfoData({
    required String name,
    String? mobileNo, // Mark as nullable if it might be null in JSON
    String? email, // Mark as nullable if it might be null in JSON
    String? dateOfBirth, // Mark as nullable if it might be null in JSON
    int? gender, // Make nullable if it might be null in JSON
    String? file, // Make nullable if it might be null in JSON
  }) = _MembershipCardInfoData;

  factory MembershipCardInfoData.fromJson(Map<String, dynamic> json) =>
      _$MembershipCardInfoDataFromJson(json);
}
