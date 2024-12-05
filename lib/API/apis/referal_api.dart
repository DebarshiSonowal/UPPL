//ValidateMemberModel
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../Models/Referal/validate_referal_code_model.dart';
import '../api_services.dart';
import '../errors/generic_error_handler.dart';

class GetReferralService {
  GetReferralService._(); // Private constructor to prevent direct instantiation

  static final GetReferralService instance =
      GetReferralService._(); // Singleton instance

  Future<ValidateMemberModel> checkMobileOrCodeVerify(
      String phone_number, context) async {
    try {
      String endpoint =
          'validate-member/$phone_number'; // Endpoint for the change password operation

      final Map<String, String> headers = {
        // 'Authorization': 'Bearer ${ConfigStorage.instance.token}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'APP-KEY': ConstanceData.app_key
      };
      final dio = Dio(
          BaseOptions(baseUrl: "${ApiService.baseUrl}/${ApiService.path}/"));
      // Handle the response based on status code
      final Response response = await dio.get(
        endpoint, // No need to construct the full URL; Dio uses the base URL
        options: Options(headers: headers),
      );
      debugPrint(
          "ValidateMemberModel response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return ValidateMemberModel.fromJson(response.data);
      } else {
        debugPrint("ValidateMemberModel error: ${response.data}");
        return ValidateMemberModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401 ?? false) {
        debugPrint("ValidateMemberModel error: ${e.response?.data}");
        return ValidateMemberModel.fromJson(e.response?.data);
      }
      // Re-throw the exception so the error handler can catch it
      debugPrint("ValidateMemberModel error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return ValidateMemberModel.fromJson(e.response?.data);
      });
      rethrow;
    }
  }
}
