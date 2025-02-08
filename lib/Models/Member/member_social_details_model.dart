import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_social_details_model.freezed.dart';
part 'member_social_details_model.g.dart';

@freezed
class MemberSocialDetailsModel with _$MemberSocialDetailsModel {
  const factory MemberSocialDetailsModel({
    required int status,
    required String message,
    required MemberSocialDetailsData data,
    required int code,
  }) = _MemberSocialDetailsModel;

  factory MemberSocialDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MemberSocialDetailsModelFromJson(json);

  factory MemberSocialDetailsModel.fromError(String errorMessage) {
    return MemberSocialDetailsModel(
      status: 0, // or any other value indicating an error status
      message: errorMessage,
      data: MemberSocialDetailsData(
          member: []), // Empty member list or appropriate default
      code: 400, // Assuming 400 as a generic error code
    );
  }
}

@freezed
class MemberSocialDetailsData with _$MemberSocialDetailsData {
  const factory MemberSocialDetailsData({
    required List<MemberSocialDetails> member,
    final Map<String, String>? errors,
  }) = _MemberSocialDetailsData;

  factory MemberSocialDetailsData.fromJson(Map<String, dynamic> json) =>
      _$MemberSocialDetailsDataFromJson(json);
}

@freezed
class MemberSocialDetails with _$MemberSocialDetails {
  const factory MemberSocialDetails({
    @JsonKey(name: 'member_id') required int memberId,
    @JsonKey(name: 'aleternate_number') String? alternateNumber,
    @JsonKey(name: 'facebook_url') String? facebookUrl,
    @JsonKey(name: 'twitter_url') String? twitterUrl,
    @JsonKey(name: 'instagram_url') String? instagramUrl,
  }) = _MemberSocialDetails;

  factory MemberSocialDetails.fromJson(Map<String, dynamic> json) =>
      _$MemberSocialDetailsFromJson(json);
}
