//
//ValidateMemberModel
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svprogresshud/flutter_svprogresshud.dart';
import 'package:uppl/Models/family/referred_family_details_model.dart';

import '../../Models/family/family_details_model.dart';
import '../../Storage/config_storage.dart';
import '../errors/generic_error_handler.dart';
import 'auth_api.dart';

class GetFamilyService {
  GetFamilyService._(); // Private constructor to prevent direct instantiation

  static final GetFamilyService instance =
      GetFamilyService._(); // Singleton instance

  Future<FamilyDetailsModel> getFamilyDetails(context, Dio dio) async {
    SVProgressHUD.show();
    try {
      String endpoint = 'get-family-members-details';
      final Response response = await dio.get(endpoint);

      debugPrint(
          "get-family-members-details response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SVProgressHUD.dismiss();
        return FamilyDetailsModel.fromJson(response.data);
      } else {
        SVProgressHUD.dismiss();
        debugPrint("get-family-members-details error: ${response.data}");
        return FamilyDetailsModel.fromJson(response.data);
      }
    } on DioError catch (e) {
      if ((e.response?.statusCode == 401)) {
        debugPrint("Unauthorized. Regenerating token and retrying request...");
        await GetAuthService.instance
            .regenerateToken(ConfigStorage.instance.refreshToken, context);
        return getFamilyDetails(context, dio);
      }
      SVProgressHUD.dismiss();
      debugPrint(
          "get-family-members-details error: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return FamilyDetailsModel.fromJson(e.response?.data);
      });
    }
  }

  Future<ReferredFamilyDetailsModel> getReferredFamilyDetails(
      BuildContext context, dynamic memberId, Dio dio) async {
    SVProgressHUD.show();

    try {
      var requestJson = {
        "member_id": memberId,
      };
      final Response response = await dio.post(
        'get-referred-member-amily-members-details',
        data: json.encode(requestJson),
      );
      SVProgressHUD.dismiss();

      debugPrint(
          "get-referred-member-amily-members-details response: ${dio.options.baseUrl} ${response.data}");

      return ReferredFamilyDetailsModel.fromJson(response.data);
    } on DioError catch (e) {
      if (e.response?.statusCode == 401 ?? false) {
        debugPrint("Unauthorized. Regenerating token and retrying request...");
        await GetAuthService.instance
            .regenerateToken(ConfigStorage.instance.refreshToken, context);
        return getReferredFamilyDetails(context, memberId, dio);
      }
      SVProgressHUD.dismiss();
      debugPrint(
          "get-referred-member-amily-members-details error: ${e.message} ${e.response?.data}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return ReferredFamilyDetailsModel.fromJson(e.response?.data);
      });
    }
  }
}
