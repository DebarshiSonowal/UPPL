import 'package:freezed_annotation/freezed_annotation.dart';

part 'membership_card_generator_model.freezed.dart';
part 'membership_card_generator_model.g.dart';

@freezed
class MembershipCardGeneratorModel with _$MembershipCardGeneratorModel {
  const factory MembershipCardGeneratorModel({
    required int status,
    required String message,
    required Data data,
    required int code,
  }) = _MembershipCardGeneratorModel;

  const factory MembershipCardGeneratorModel.withError(String message) =
      _MembershipCardGeneratorModelWithError;

  factory MembershipCardGeneratorModel.fromJson(Map<String, dynamic> json) =>
      _$MembershipCardGeneratorModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String url,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
