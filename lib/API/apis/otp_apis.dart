import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:uppl/Models/Verify/generate_verify_otp_model.dart';

import '../../Models/Auth/verify_otp_model.dart';
import '../api_services.dart';
import '../errors/generic_error_handler.dart';

class GetOTPService {
  GetOTPService._(); // Private constructor to prevent direct instantiation

  static final GetOTPService instance = GetOTPService._(); // Singleton instance

  Future<GenerateVerifyOtpModel> generateVerifyOTP(
      String type, phone_number, terms, context) async {
    try {
      String endpoint =
          'generate-verify-otp'; // Endpoint for the change password operation

      final Map<String, String> headers = {
        // 'Authorization': 'Bearer ${ConfigStorage.instance.token}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'APP-KEY': ConstanceData.app_key
      };
      final Map<String, String> requestBody = {
        "type": type,
        "phone_number": phone_number,
        "terms": terms,
      };
      final dio = Dio(BaseOptions(
          baseUrl:
              "${ApiService.baseUrl}${ApiService.path}/${ApiService.type}/"));
      // Handle the response based on status code
      final Response response = await dio.post(
        endpoint, // No need to construct the full URL; Dio uses the base URL
        data: json.encode(requestBody),
        options: Options(headers: headers),
      );
      debugPrint(
          "GenerateVerifyOtpModel response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return GenerateVerifyOtpModel.fromJson(response.data);
      } else {
        debugPrint("GenerateVerifyOtpModel error: ${response.data}");
        return GenerateVerifyOtpModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401 ?? false) {
        debugPrint("GenerateVerifyOtpModel error: ${e.response?.data}");
        return GenerateVerifyOtpModel.fromJson(e.response?.data);
      }
      // Re-throw the exception so the error handler can catch it
      debugPrint("GenerateVerifyOtpModel error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return GenerateVerifyOtpModel.fromJson(e.response?.data);
      });
      rethrow;
    }
  }

  Future<VerifyOtpModel> verifyOTP(
      String type, phone_number, otp, terms, context) async {
    try {
      String endpoint =
          'generate-verify-otp'; // Endpoint for the change password operation

      final Map<String, String> headers = {
        // 'Authorization': 'Bearer ${ConfigStorage.instance.token}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'APP-KEY': ConstanceData.app_key
      };
      final Map<String, dynamic> requestBody = {
        "type": type,
        "phone_number": phone_number,
        "terms": terms,
        "otp": otp,
      };
      final dio = Dio(
          BaseOptions(baseUrl: "${ApiService.baseUrl}/${ApiService.path}/"));
      // Handle the response based on status code
      final Response response = await dio.post(
        endpoint, // No need to construct the full URL; Dio uses the base URL
        data: json.encode(requestBody),
        options: Options(headers: headers),
      );
      debugPrint(
          "VerifyOtpModel response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return VerifyOtpModel.fromJson(response.data);
      } else {
        debugPrint("VerifyOtpModel error: ${response.data}");
        return VerifyOtpModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401 ?? false) {
        debugPrint("VerifyOtpModel error: ${e.response?.data}");
        return VerifyOtpModel.fromJson(e.response?.data);
      }
      // Re-throw the exception so the error handler can catch it
      debugPrint("VerifyOtpModel error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return VerifyOtpModel.fromJson(e.response?.data);
      });
      rethrow;
    }
  }
}
