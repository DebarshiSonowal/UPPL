import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:uppl/Models/CheckMobileNumber/check_mobile_number_model.dart';

import '../api_services.dart';
import '../errors/generic_error_handler.dart';

class GetOTPService {
  GetOTPService._(); // Private constructor to prevent direct instantiation

  static final GetOTPService instance = GetOTPService._(); // Singleton instance

  Future<OtpResponseModel> checkMobileVerify(
      String phone_number, context) async {
    try {
      String endpoint =
          'check-mobile-verify/$phone_number'; // Endpoint for the change password operation

      final Map<String, String> headers = {
        // 'Authorization': 'Bearer ${ConfigStorage.instance.token}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'APP-KEY': ConstanceData.app_key
      };
      final dio =
          Dio(BaseOptions(baseUrl: "${ApiService.baseUrl}${ApiService.path}/"));
      // Handle the response based on status code
      final Response response = await dio.post(
        endpoint, // No need to construct the full URL; Dio uses the base URL
        options: Options(headers: headers),
      );
      debugPrint(
          "OtpResponseModel response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return OtpResponseModel.fromJson(response.data);
      } else {
        debugPrint("OtpResponseModel error: ${response.data}");
        return OtpResponseModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401 ?? false) {
        debugPrint("OtpResponseModel error: ${e.response?.data}");
        return OtpResponseModel.withError("${e.response?.data['message']}");
      }
      // Re-throw the exception so the error handler can catch it
      debugPrint("OtpResponseModel error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return OtpResponseModel.withError("${e.response?.data['message']}");
      });
      rethrow;
    }
  }
}
