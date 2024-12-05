//
//ValidateMemberModel
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svprogresshud/flutter_svprogresshud.dart';
import 'package:uppl/Models/family/referred_family_details_model.dart';

import '../../Models/family/family_details_model.dart';
import '../../Storage/config_storage.dart';
import '../api_services.dart';
import '../errors/generic_error_handler.dart';
import 'auth_api.dart';

class GetFamilyService {
  GetFamilyService._(); // Private constructor to prevent direct instantiation

  static final GetFamilyService instance =
      GetFamilyService._(); // Singleton instance

  Future<FamilyDetailsModel> getFamilyDetails(context) async {
    SVProgressHUD.show();
    try {
      String endpoint = 'get-family-members-details';

      final dio = Dio(BaseOptions(
        baseUrl: "${ApiService.baseUrl}/${ApiService.path}/",
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ));

      dio.interceptors.add(InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          options.headers['Authorization'] =
              'Bearer ${ConfigStorage.instance.token}';
          return handler.next(options);
        },
        onError: (DioError e, ErrorInterceptorHandler handler) async {
          if (e.response?.statusCode == 401) {
            SVProgressHUD.dismiss();
            try {
              await GetAuthService.instance.regenerateToken(
                  ConfigStorage.instance.refreshToken, context);
              final options = e.requestOptions;
              options.headers['Authorization'] =
                  'Bearer ${ConfigStorage.instance.token}';
              final Response retryResponse = await dio.fetch(options);
              return handler.resolve(retryResponse);
            } catch (error) {
              debugPrint("Token refresh error: $error");
            }
          }
          return handler.next(e);
        },
      ));

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
      SVProgressHUD.dismiss();
      debugPrint(
          "get-family-members-details error: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return FamilyDetailsModel.fromJson(e.response?.data);
      });
    }
  }

  Future<ReferredFamilyDetailsModel> getReferredFamilyDetails(
      BuildContext context, dynamic memberId) async {
    SVProgressHUD.show();

    final Dio dio = Dio(BaseOptions(
      baseUrl: "${ApiService.baseUrl}/${ApiService.path}/",
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        options.headers['Authorization'] =
            'Bearer ${ConfigStorage.instance.token}';
        SVProgressHUD.show();
        return handler.next(options);
      },
      onError: (DioError e, ErrorInterceptorHandler handler) async {
        if (e.response?.statusCode == 401) {
          SVProgressHUD.dismiss();
          try {
            await GetAuthService.instance
                .regenerateToken(ConfigStorage.instance.refreshToken, context);
            final options = e.requestOptions;
            options.headers['Authorization'] =
                'Bearer ${ConfigStorage.instance.token}';
            final Response retryResponse = await dio.fetch(options);
            return handler.resolve(retryResponse);
          } catch (error) {
            debugPrint("Token refresh error: $error");
          }
        }
        return handler.next(e);
      },
    ));

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
      SVProgressHUD.dismiss();
      debugPrint(
          "get-referred-member-amily-members-details error: ${e.message} ${e.response?.data}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return ReferredFamilyDetailsModel.fromJson(e.response?.data);
      });
    }
  }
}
