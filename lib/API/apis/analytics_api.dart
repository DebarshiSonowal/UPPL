import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svprogresshud/flutter_svprogresshud.dart';
import 'package:uppl/Models/dashboard_stats_model.dart';

import '../../Helper/toast.dart';
import '../../Models/Auth/login_model.dart';
import '../../Storage/config_storage.dart';
import '../api_services.dart';
import '../errors/generic_error_handler.dart';

class GetAnalyticsService {
  GetAnalyticsService._(); // Private constructor to prevent direct instantiation

  static final GetAnalyticsService instance = GetAnalyticsService._();

  Future<DashboardStats> generateAnalytics(context) async {
    SVProgressHUD.show();
    try {
      String endpoint =
          'dashboard-stats'; // Endpoint for the change password operation

      final Map<String, String> headers = {
        'Authorization': 'Bearer ${ConfigStorage.instance.token}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'APP-KEY': ConstanceData.app_key
      };

      final dio = Dio(
          BaseOptions(baseUrl: "${ApiService.baseUrl}/${ApiService.path}/"));
      // Handle the response based on status code
      final Response response = await dio.get(
        endpoint, // No need to construct the full URL; Dio uses the base URL
        // data: json.encode(requestBody),
        options: Options(headers: headers),
      );
      debugPrint(
          "dashboard-stats response: ${"${ApiService.baseUrl}/${ApiService.path}/$endpoint"} ${response.statusCode} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SVProgressHUD.dismiss();
        return DashboardStats.fromJson(response.data);
      } else {
        SVProgressHUD.dismiss();
        CustomToast.showFailureToast(
            context, "Error", response.data.message ?? "Something Went Wrong");
        debugPrint("dashboard-stats error: ${response.data}");
        return DashboardStats.fromJson(response.data);
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
        debugPrint("dashboard-stats error: ${e.response?.data}");
        return DashboardStats.fromJson(e.response?.data);
      }
      // Re-throw the exception so the error handler can catch it
      debugPrint("dashboard-stats error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return LoginModel.fromJson(e.response?.data);
      });
      rethrow;
    }
  }
}
