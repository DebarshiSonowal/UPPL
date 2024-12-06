//MembershipCardModel

//ValidateMemberModel
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../Models/Membership/membership_card_model.dart';
import '../api_services.dart';
import '../errors/generic_error_handler.dart';

class GetMembershipService {
  GetMembershipService._(); // Private constructor to prevent direct instantiation

  static final GetMembershipService instance =
      GetMembershipService._(); // Singleton instance

  Future<MembershipCardModel> getMembershipCard(
      String phone_number, context) async {
    try {
      String endpoint =
          'membership-card/$phone_number'; // Endpoint for the change password operation

      final Map<String, String> headers = {
        // 'Authorization': 'Bearer ${ConfigStorage.instance.token}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'APP-KEY': ConstanceData.app_key
      };
      final dio = Dio(
          BaseOptions(baseUrl: "${ApiService.baseUrl}/${ApiService.path}/"));
      // dio.options.baseUrl = "${ApiService.baseUrl}/${ApiService.path}/";
      // Handle the response based on status code
      final Response response = await dio.post(
        endpoint, // No need to construct the full URL; Dio uses the base URL
        options: Options(headers: headers),
      );
      debugPrint(
          "MembershipCardModel response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return MembershipCardModel.fromJson(response.data);
      } else {
        debugPrint("MembershipCardModel error: ${response.data}");
        return MembershipCardModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      // if (e.response?.statusCode == 401 ?? false) {
      //   debugPrint("MembershipCardModel error: ${e.response?.data}");
      //   return MembershipCardModel.fromJson(e.response?.data);
      // }
      // Re-throw the exception so the error handler can catch it
      debugPrint("MembershipCardModel error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return MembershipCardModel.fromJson(e.response?.data);
      });
      rethrow;
    }
  }
}
