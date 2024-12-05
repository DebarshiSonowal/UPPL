//
//ValidateMemberModel
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:uppl/Models/DropDown/dropdown_data_model.dart';

import '../../Storage/config_storage.dart';
import '../api_services.dart';
import '../errors/generic_error_handler.dart';

class GetDropDownService {
  GetDropDownService._(); // Private constructor to prevent direct instantiation

  static final GetDropDownService instance =
      GetDropDownService._(); // Singleton instance

  Future<DropDownDataModel> getDropdownData(context) async {
    try {
      String endpoint =
          'dropdown-data'; // Endpoint for the change password operation

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
        options: Options(headers: headers),
      );
      debugPrint(
          "DropDownDataModel response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return DropDownDataModel.fromJson(response.data);
      } else {
        debugPrint("DropDownDataModel error: ${response.data}");
        return DropDownDataModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401 ?? false) {
        debugPrint("DropDownDataModel error: ${e.response?.data}");
        return DropDownDataModel.fromJson(e.response?.data);
      }
      // Re-throw the exception so the error handler can catch it
      debugPrint("DropDownDataModel error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return DropDownDataModel.fromJson(e.response?.data);
      });
      rethrow;
    }
  }
}
