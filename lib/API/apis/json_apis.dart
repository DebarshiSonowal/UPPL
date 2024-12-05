import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svprogresshud/flutter_svprogresshud.dart';

import '../../Models/JSON/generate_json_model.dart';
import '../api_services.dart';
import '../errors/generic_error_handler.dart';

class GetJsonService {
  GetJsonService._(); // Private constructor to prevent direct instantiation

  static final GetJsonService instance =
      GetJsonService._(); // Singleton instance

  Future<JsonDataModel> generateJSON(context) async {
    SVProgressHUD.show();
    try {
      String endpoint =
          'generate-json'; // Endpoint for the change password operation

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
          "JsonDataModel response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SVProgressHUD.dismiss();
        return JsonDataModel.fromJson(response.data);
      } else {
        SVProgressHUD.dismiss();
        debugPrint("JsonDataModel error: ${response.data}");
        return JsonDataModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      SVProgressHUD.dismiss();
      if (e.response?.statusCode == 401 ?? false) {
        debugPrint("JsonDataModel error: ${e.response?.data}");
        return JsonDataModel.withError("${e.response?.data['message']}");
      }
      // Re-throw the exception so the error handler can catch it
      debugPrint("JsonDataModel error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return JsonDataModel.withError("${e.response?.data['message']}");
      });
      rethrow;
    }
  }
}
