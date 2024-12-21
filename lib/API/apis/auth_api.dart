import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svprogresshud/flutter_svprogresshud.dart';
import 'package:uppl/Constants/routes.dart';
import 'package:uppl/Helper/toast.dart';
import 'package:uppl/Models/Auth/logout_model.dart';
import 'package:uppl/Models/Auth/registration_model.dart';
import 'package:uppl/Models/Verify/generate_verify_otp_model.dart';

import '../../Models/Auth/login_model.dart';
import '../../Models/Token/regenerate_token_model.dart';
import '../../Storage/config_storage.dart';
import '../api_services.dart';
import '../errors/generic_error_handler.dart';

class GetAuthService {
  GetAuthService._(); // Private constructor to prevent direct instantiation

  static final GetAuthService instance =
      GetAuthService._(); // Singleton instance

  Future<LoginModel> sendOTP(String phone_number, context) async {
    SVProgressHUD.show();
    try {
      String endpoint = 'login'; // Endpoint for the change password operation

      final Map<String, String> headers = {
        // 'Authorization': 'Bearer ${ConfigStorage.instance.token}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'APP-KEY': ConstanceData.app_key
      };
      final Map<String, String> requestBody = {
        "type": "send-otp",
        "phone_number": phone_number,
      };
      final dio = Dio(BaseOptions(
          baseUrl:
              "${ApiService.baseUrl}/${ApiService.path}/${ApiService.type}/"));
      // Handle the response based on status code
      final Response response = await dio.post(
        endpoint, // No need to construct the full URL; Dio uses the base URL
        data: json.encode(requestBody),
        options: Options(headers: headers),
      );
      debugPrint(
          "send otp response: ${"${ApiService.baseUrl}/${ApiService.path}/${ApiService.type}/$endpoint"} ${response.statusCode} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SVProgressHUD.dismiss();
        CustomToast.showSuccessToast(
            context, "Successful", "OTP Sent Successfully");
        return LoginModel.fromJson(response.data);
      } else {
        SVProgressHUD.dismiss();
        CustomToast.showFailureToast(
            context, "Error", response.data.message ?? "Something Went Wrong");
        debugPrint("send otp error: ${response.data}");
        return LoginModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      SVProgressHUD.dismiss();
      try {
        CustomToast.showFailureToast(
            context, "Error", e.response?.data ?? "Something Went Wrong");
      } catch (e) {
        print(e);
      }
      if (e.response?.statusCode == 401 ?? false) {
        debugPrint("send otp error: ${e.response?.data}");
        return LoginModel.fromJson(e.response?.data);
      }
      // Re-throw the exception so the error handler can catch it
      debugPrint("send otp error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return LoginModel.fromJson(e.response?.data);
      });
      rethrow;
    }
  }

  Future<GenerateVerifyOtpModel> sendRegistrationOTP(
      String phone_number, context) async {
    SVProgressHUD.show();
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
        "type": "send-otp",
        "phone_number": phone_number,
        "terms": "1",
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
          "GenerateVerifyOtpModel otp response: ${response.statusCode} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SVProgressHUD.dismiss();
        CustomToast.showSuccessToast(
            context, "Successful", "OTP Sent Successfully");
        return GenerateVerifyOtpModel.fromJson(response.data);
      } else {
        SVProgressHUD.dismiss();
        CustomToast.showFailureToast(
            context, "Error", response.data.message ?? "Something Went Wrong");
        debugPrint("GenerateVerifyOtpModel otp error: ${response.data}");
        return GenerateVerifyOtpModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      SVProgressHUD.dismiss();
      try {
        CustomToast.showFailureToast(
            context, "Error", e.response?.data ?? "Something Went Wrong");
      } catch (e) {
        print(e);
      }
      if (e.response?.statusCode == 401 ?? false) {
        debugPrint("GenerateVerifyOtpModel otp error: ${e.response?.data}");
        return GenerateVerifyOtpModel.fromJson(e.response?.data);
      }
      // Re-throw the exception so the error handler can catch it
      debugPrint(
          "GenerateVerifyOtpModel otp error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return GenerateVerifyOtpModel.fromJson(e.response?.data);
      });
      rethrow;
    }
  }

  Future<LoginModel> login(String phone_number, otp, context) async {
    SVProgressHUD.show();
    try {
      String endpoint = 'login'; // Endpoint for the change password operation

      final Map<String, String> headers = {
        // 'Authorization': 'Bearer ${ConfigStorage.instance.token}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'APP-KEY': ConstanceData.app_key
      };
      final Map<String, String> requestBody = {
        "type": "verify-otp",
        "phone_number": phone_number,
        "otp": otp,
      };
      final dio = Dio(BaseOptions(
          baseUrl:
              "${ApiService.baseUrl}/${ApiService.path}/${ApiService.type}/"));
      // Handle the response based on status code
      final Response response = await dio.post(
        endpoint, // No need to construct the full URL; Dio uses the base URL
        data: json.encode(requestBody),
        options: Options(headers: headers),
      );
      debugPrint(
          "login response: ${response.data} \n ${response.data['data']['access_token']}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        ConfigStorage.instance.setToken(response.data['data']['access_token'],
            response.data['data']['refresh_token']);
        SVProgressHUD.dismiss();
        CustomToast.showSuccessToast(
            context, "Successful", "Logged IN Sent Successfully");
        return LoginModel.fromJson(response.data);
      } else {
        debugPrint("login error: ${response.data}");
        SVProgressHUD.dismiss();
        return LoginModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      SVProgressHUD.dismiss();
      CustomToast.showFailureToast(
          context, "Error", e.response?.data.message ?? "Something Went Wrong");
      if (e.response?.statusCode == 401 ?? false) {
        debugPrint("login error: ${e.response?.data}");
        return LoginModel.fromJson(e.response?.data);
      }
      // Re-throw the exception so the error handler can catch it
      debugPrint("login error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return LoginModel.fromJson(e.response?.data);
      });
      rethrow;
    }
  }

  Future<RegistrationResponseModel> registration(
    String mobile_no,
    String name,
    String date_of_birth,
    int gender,
    String email,
    String address,
    String pincode,
    int btc_constituency,
    int district,
    int party_district,
    int assembly_constituency,
    int priamries,
    int booth,
    String other_village,
    dynamic village,
    int ref_id,
    int declare,
    List<String> photo,
    context,
  ) async {
    SVProgressHUD.dismiss();
    SVProgressHUD.show();
    try {
      String endpoint =
          'uppl-memeber-registration'; // Endpoint for the change password operation

      final Map<String, String> headers = {
        // 'Authorization': 'Bearer ${ConfigStorage.instance.token}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'APP-KEY': ConstanceData.app_key
      };
      final Map<String, dynamic> dataMap = {
        "name": name,
        "mobile_no": mobile_no,
        "date_of_birth": date_of_birth,
        "gender": gender + 1,
        "address": address,
        "pincode": pincode,
        "btc_constituency": btc_constituency,
        "district": district,
        "party_district": party_district,
        "assembly_constituency": assembly_constituency,
        "priamries": priamries,
        "booth": booth,
        "declare": declare == 1 ? true : false,
        "photo": [
          for (String path in photo) await MultipartFile.fromFile(path)
        ],
        "other_village": other_village,
        "village": village == 0 ? "other" : village,
      };

      if (email != "") {
        dataMap["email"] = email;
      }
      if (ref_id != 0) {
        dataMap["ref_id"] = ref_id;
      }

      final FormData requestBody = FormData.fromMap(dataMap);
      debugPrint(" ${requestBody.fields} ${requestBody.files}");
      final dio = Dio(
          BaseOptions(baseUrl: "${ApiService.baseUrl}/${ApiService.path}/"));
      // Handle the response based on status code
      final Response response = await dio.post(
        endpoint, // No need to construct the full URL; Dio uses the base URL
        data: requestBody,
        options: Options(headers: headers),
      );
      debugPrint(
          "RegistrationResponseModel response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SVProgressHUD.dismiss();
        return RegistrationResponseModel.fromJson(response.data);
      } else {
        SVProgressHUD.dismiss();
        debugPrint("RegistrationResponseModel error: ${response.data}");
        return RegistrationResponseModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      SVProgressHUD.dismiss();
      if (e.response?.statusCode == 401 ?? false) {
        debugPrint("RegistrationResponseModel error: ${e.response?.data}");
        return RegistrationResponseModel.fromJson(e.response?.data);
      }
      // Re-throw the exception so the error handler can catch it
      debugPrint(
          "RegistrationResponseModel error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return RegistrationResponseModel.fromJson(e.response?.data);
      });
      rethrow;
    }
  }

  Future<LogoutResponseModel> logout(context) async {
    SVProgressHUD.show();
    try {
      String endpoint = 'logout'; // Endpoint for the change password operation

      final Map<String, String> headers = {
        'Authorization': 'Bearer ${ConfigStorage.instance.token}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'APP-KEY': ConstanceData.app_key
      };
      final dio = Dio(BaseOptions(
          baseUrl:
              "${ApiService.baseUrl}/${ApiService.path}/${ApiService.type}/$endpoint"));
      // Handle the response based on status code
      final Response response = await dio.post(
        endpoint, // No need to construct the full URL; Dio uses the base URL
        options: Options(headers: headers),
      );
      debugPrint("logout response: ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SVProgressHUD.dismiss();
        return LogoutResponseModel.fromJson(response.data);
      } else {
        SVProgressHUD.dismiss();
        debugPrint("logout error: ${response.data}");
        return LogoutResponseModel.withError("${response.data}");
      }
    } on DioException catch (e) {
      SVProgressHUD.dismiss();
      // Re-throw the exception so the error handler can catch it
      debugPrint("logout error: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return LogoutResponseModel.withError("${e.message}");
      });
      rethrow;
    }
  }

  Future<RegenerateTokenModel> regenerateToken(
      String refreshToken, BuildContext context) async {
    if (_isRegenerating) {
      return RegenerateTokenModel.withError(
        message: "Another token is already being regenerated",
        status: 0,
        code: 0,
        error: RegenerateTokenError(errors: {}),
      );
    }
    _isRegenerating = true;
    SVProgressHUD.show();
    try {
      const String endpoint = 'regenerate-token';

      final Map<String, String> headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };
      final Map<String, String> requestBody = {
        "refresh_token": refreshToken,
      };
      final dio = Dio(BaseOptions(
          baseUrl:
              "${ApiService.baseUrl}/${ApiService.path}/${ApiService.type}/"));

      final Response response = await dio.post(
        endpoint,
        data: json.encode(requestBody),
        options: Options(headers: headers),
      );

      debugPrint("RegenerateTokenModel response: ${response.data}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        if (response.data != null && response.data['data'] != null) {
          ConfigStorage.instance.setToken(
            response.data['data']['access_token'],
            response.data['data']['refresh_token'],
          );
          return RegenerateTokenModel.fromJson(response.data);
        } else {
          debugPrint("RegenerateTokenModel error: Invalid response format");
          return RegenerateTokenModel.withError(
            message: "Invalid response format",
            status: response.data['status'] ?? 0,
            error: RegenerateTokenError(errors: {}),
            code: response.data['code'] ?? 0,
          );
        }
      } else {
        debugPrint("RegenerateTokenModel error: ${response.data}");
        return RegenerateTokenModel.withError(
          message: response.data['message'] ??
              "An unknown error occurred while regenerating token",
          status: response.data['status'] ?? 0,
          error: RegenerateTokenError(
            errors: {},
          ),
          code: response.data['code'] ?? 0,
        );
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401 || e.response?.statusCode == 400) {
        debugPrint(
            "RegenerateTokenModel authorization error: ${e.response?.data}");
        ConfigStorage.instance.logout();
        try {
          AutoRouter.of(context).popUntilRoot();
        } catch (err) {
          debugPrint("AutoRouter popUntilRoot error: $err");
        }
        AutoRouter.of(context).pushNamed(CustomRoutes.loginOtpScreen);
        return RegenerateTokenModel.withError(
          message: e.response?.data['message'] ??
              e.message ??
              "Unknown error occurred",
          status: e.response?.statusCode ?? 0,
          error: RegenerateTokenError(
            errors: {},
          ),
          code: e.response?.statusCode ?? 0,
        );
      }

      debugPrint(
          "RegenerateTokenModel unexpected error: ${e.message} ${e.response} ${e.requestOptions.data}");
      return RegenerateTokenModel.withError(
        message: e.response?.data['message'] ??
            e.message ??
            "Unknown error occurred",
        status: e.response?.statusCode ?? 0,
        error: RegenerateTokenError(
          errors: {},
        ),
        code: e.response?.statusCode ?? 0,
      );
    } catch (e) {
      debugPrint("Unexpected error in regenerateToken: $e");
      return RegenerateTokenModel.withError(
        message: e.toString(),
        status: 0,
        error: RegenerateTokenError(
          errors: {},
        ),
        code: 0,
      );
    } finally {
      SVProgressHUD.dismiss();
      _isRegenerating = false;
    }
  }

  bool _isRegenerating = false;
}
