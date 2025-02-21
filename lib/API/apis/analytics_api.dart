import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svprogresshud/flutter_svprogresshud.dart';
import 'package:uppl/Models/analytics/top_performer_model.dart';
import 'package:uppl/Models/dashboard_stats_model.dart';

import '../../Helper/toast.dart';
import '../../Models/analytics/top_performing_btc_model.dart';
import '../../Models/analytics/top_performing_data_model.dart';
import '../../Storage/config_storage.dart';
import '../api_services.dart';
import '../errors/generic_error_handler.dart';
import 'auth_api.dart';

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
      if ((e.response?.statusCode == 401)) {
        debugPrint("Unauthorized. Regenerating token and retrying request...");
        await GetAuthService.instance
            .regenerateToken(ConfigStorage.instance.refreshToken, context);
        return generateAnalytics(context);
      }
      // Re-throw the exception so the error handler can catch it
      debugPrint("dashboard-stats error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return DashboardStats.fromJson(e.response?.data);
      });
      rethrow;
    }
  }

  Future<TopPerformingBtcModel> generateBtcConsituencyAnalytics(
      context, draw, start, length) async {
    SVProgressHUD.show();
    try {
      String endpoint =
          'top-performing-btc-constituency'; // Endpoint for the change password operation

      final Map<String, String> headers = {
        'Authorization': 'Bearer ${ConfigStorage.instance.token}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'APP-KEY': ConstanceData.app_key
      };
      final requestBody = {
        'draw': draw,
        'start': start,
        'length': length,
        'search[value]': '',
        'order[0][column]': '6',
        'order[0][dir]': 'asc',
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
          "top-performing-btc-constituency response: ${"${ApiService.baseUrl}/${ApiService.path}/$endpoint"} ${response.statusCode} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SVProgressHUD.dismiss();
        return TopPerformingBtcModel.fromJson(response.data);
      } else {
        SVProgressHUD.dismiss();
        CustomToast.showFailureToast(
            context, "Error", response.data.message ?? "Something Went Wrong");
        debugPrint("top-performing-btc-constituency error: ${response.data}");
        return TopPerformingBtcModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      SVProgressHUD.dismiss();
      try {
        CustomToast.showFailureToast(
            context, "Error", e.response?.data ?? "Something Went Wrong");
      } catch (e) {
        print(e);
      }
      if ((e.response?.statusCode == 401)) {
        debugPrint("Unauthorized. Regenerating token and retrying request...");
        await GetAuthService.instance
            .regenerateToken(ConfigStorage.instance.refreshToken, context);
        return generateBtcConsituencyAnalytics(context, draw, start, length);
      }
      // Re-throw the exception so the error handler can catch it
      debugPrint(
          "top-performing-btc-constituency error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return TopPerformingBtcModel.fromJson(e.response?.data);
      });
      rethrow;
    }
  }

  Future<TopPerformerModel> generateTopPerformerAnalytics(
      context, draw, start, length) async {
    SVProgressHUD.show();
    try {
      String endpoint =
          'top-performer'; // Endpoint for the change password operation

      final Map<String, String> headers = {
        'Authorization': 'Bearer ${ConfigStorage.instance.token}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'APP-KEY': ConstanceData.app_key
      };
      final requestBody = {
        'draw': draw,
        'start': start,
        'length': length,
        'search[value]': '',
        'order[0][column]': 6,
        'order[0][dir]': 'asc',
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
          "top-performer-data response: ${"${ApiService.baseUrl}/${ApiService.path}/$endpoint"} ${response.statusCode} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SVProgressHUD.dismiss();
        return TopPerformerModel.fromJson(response.data);
      } else {
        SVProgressHUD.dismiss();
        CustomToast.showFailureToast(
            context, "Error", response.data.message ?? "Something Went Wrong");
        debugPrint("top-performer error: ${response.data}");
        return TopPerformerModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      SVProgressHUD.dismiss();
      try {
        CustomToast.showFailureToast(
            context, "Error", e.response?.data ?? "Something Went Wrong");
      } catch (e) {
        print(e);
      }
      if ((e.response?.statusCode == 401)) {
        debugPrint("Unauthorized. Regenerating token and retrying request...");
        await GetAuthService.instance
            .regenerateToken(ConfigStorage.instance.refreshToken, context);
        return generateTopPerformerAnalytics(context, draw, start, length);
      }
      // Re-throw the exception so the error handler can catch it
      debugPrint("top-performer error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return TopPerformerModel.fromJson(e.response?.data);
      });
      rethrow;
    }
  }

  Future<TopPerformingDataModel> generateTopPerformingDataAnalytics(
      context, draw, start, length, type) async {
    SVProgressHUD.show();
    try {
      String endpoint =
          'top-performing-data'; // Endpoint for the change password operation

      final Map<String, String> headers = {
        'Authorization': 'Bearer ${ConfigStorage.instance.token}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'APP-KEY': ConstanceData.app_key
      };
      final requestBody = {
        "draw": "1",
        "start": "0",
        "length": "10",
        "search": {"value": null},
        "order": [
          {"column": "6", "dir": "asc"}
        ],
        "type": type,
      };
      debugPrint("requestBody $requestBody");
      final dio = Dio(
          BaseOptions(baseUrl: "${ApiService.baseUrl}/${ApiService.path}/"));
      // Handle the response based on status code
      final Response response = await dio.post(
        endpoint, // No need to construct the full URL; Dio uses the base URL
        data: json.encode(requestBody),
        options: Options(headers: headers),
      );
      debugPrint(
          "top-performing-data response: ${"${ApiService.baseUrl}/${ApiService.path}/$endpoint"} ${response.statusCode} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SVProgressHUD.dismiss();
        return TopPerformingDataModel.fromJson(response.data);
      } else {
        SVProgressHUD.dismiss();
        CustomToast.showFailureToast(
            context, "Error", response.data.message ?? "Something Went Wrong");
        debugPrint("top-performing-data error: ${response.data}");
        return TopPerformingDataModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      SVProgressHUD.dismiss();
      try {
        CustomToast.showFailureToast(
            context, "Error", e.response?.data ?? "Something Went Wrong");
      } catch (e) {
        print(e);
      }
      if ((e.response?.statusCode == 401)) {
        debugPrint("Unauthorized. Regenerating token and retrying request...");
        await GetAuthService.instance
            .regenerateToken(ConfigStorage.instance.refreshToken, context);
        return generateTopPerformingDataAnalytics(
            context, draw, start, length, type);
      }
      // Re-throw the exception so the error handler can catch it
      debugPrint("top-performing-data error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return TopPerformingDataModel.fromJson(e.response?.data);
      });
      rethrow;
    }
  }
}
