import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_details_model.freezed.dart';
part 'social_details_model.g.dart';

@freezed
class SocialDetailsModel with _$SocialDetailsModel {
  const factory SocialDetailsModel({
    required int status,
    required String message,
    SocialDetailsData? data,
    SocialDetailsError? error,
    required int code,
  }) = _SocialDetailsModel;

  const factory SocialDetailsModel.withError(String message) =
      _SocialDetailsModelWithError;

  factory SocialDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$SocialDetailsModelFromJson(json);
}

@freezed
class SocialDetailsData with _$SocialDetailsData {
  const factory SocialDetailsData({
    required List<Member> members,
  }) = _SocialDetailsData;

  factory SocialDetailsData.fromJson(Map<String, dynamic> json) =>
      _$SocialDetailsDataFromJson(json);
}

@freezed
class Member with _$Member {
  const factory Member({
    required int memberId,
    String? alternateNumber,
    String? facebookUrl,
    String? twitterUrl,
    String? instagramUrl,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}

@freezed
class SocialDetailsError with _$SocialDetailsError {
  const factory SocialDetailsError({
    required Map<String, List<String>> errors,
  }) = _SocialDetailsError;

  factory SocialDetailsError.fromJson(Map<String, dynamic> json) =>
      _$SocialDetailsErrorFromJson(json);
}
