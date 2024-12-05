import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../Navigation/Navigate.dart';
import '../../Storage/config_storage.dart';

class ErrorHandler {
  static dynamic handleDioError(
    DioException e,
    BuildContext context,
    dynamic Function(String err) failedWithError,
  ) {
    // Handle different types of errors from DioException
    if (e.response?.statusCode == 401) {
      Navigation.instance.goBack();
      ConfigStorage.instance.logout();
      // AppRouter().replaceNamed(Routes.enterSchoolCode);
      try {
        // AutoRouter.of(context).pushNamed(Routes.enterSchoolCode);
      } catch (e) {
        print(e);
      }

      // AutoRouter.of(context).replaceNamed(Routes.homeScreen);

      // Provider.of<DataProvider>(context,listen: false)
    }
    if (e.response != null) {
      // Server returned an error
      debugPrint('DioError: ${e.response!.realUri}');
      debugPrint('DioError: ${e.response!.data}');
      debugPrint('DioError: ${e.response!.statusCode}');

      return failedWithError(
          "${e.response?.data['error'] ?? "Something Went Wrong"}");
    } else if (e.type == DioExceptionType.connectionTimeout) {
      // Connection timeout
      return failedWithError(e.message ?? "Network Error try again");
    } else if (e.type == DioExceptionType.sendTimeout) {
      // Send timeout
      return failedWithError(e.message ?? "Unable to connect to server");
    } else if (e.type == DioExceptionType.receiveTimeout) {
      // Receive timeout
      return failedWithError(e.message ?? "Server is not responding");
    } else if (e.type == DioExceptionType.cancel) {
      // Request cancelled
      return failedWithError(e.message ?? "The request was cancelled");
    } else {
      // Other Dio errors
      return failedWithError(e.message ?? "Something went wrong");
    }
  }
}
