import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_details_update_model.freezed.dart';
part 'contact_details_update_model.g.dart';

@freezed
class ContactDetailsUpdateModel with _$ContactDetailsUpdateModel {
  const factory ContactDetailsUpdateModel({
    required int status,
    required String message,
    ContactDetailsDataModel? data,
  }) = _ContactDetailsUpdateModel;

  factory ContactDetailsUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$ContactDetailsUpdateModelFromJson(json);
}

@freezed
class ContactDetailsDataModel with _$ContactDetailsDataModel {
  const factory ContactDetailsDataModel({
    Map<String, List<String>>? errors,
  }) = _ContactDetailsDataModel;

  factory ContactDetailsDataModel.fromJson(Map<String, dynamic> json) =>
      _$ContactDetailsDataModelFromJson(json);
}
