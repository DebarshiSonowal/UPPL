//ValidateMemberModel
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svprogresshud/flutter_svprogresshud.dart';
import 'package:uppl/Models/Member/member_details_model.dart';
import 'package:uppl/Models/Profile/profile_data_model.dart';
import 'package:uppl/Models/audience/audience_demography_model.dart';

import '../../Models/Member/member_social_details_model.dart';
import '../../Models/Member/update_member_family_details_model.dart';
import '../../Models/Member/update_member_personal_details_model.dart';
import '../../Models/Referal/joined_by_referral_model.dart';
import '../../Storage/config_storage.dart';
import '../api_services.dart';
import '../errors/generic_error_handler.dart';
import 'auth_api.dart';

class GetMemberService {
  GetMemberService._(); // Private constructor to prevent direct instantiation

  static final GetMemberService instance =
      GetMemberService._(); // Singleton instance
  Future<MemberDetailsModel> getMemberDetails(context,
      {bool shouldRetry = true}) async {
    SVProgressHUD.show();

    String endpoint = 'details'; // Endpoint for member details
    final dio = Dio(BaseOptions(
        baseUrl:
            "${ApiService.baseUrl}/${ApiService.path}/${ApiService.type}/"));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Authorization'] =
            'Bearer ${ConfigStorage.instance.token}';
        options.headers['Content-Type'] = 'application/json';
        options.headers['Accept'] = 'application/json';
        return handler.next(options);
      },
      onError: (DioException e, handler) async {
        if (e.response?.statusCode == 401 && shouldRetry) {
          debugPrint(
              "MemberDetailsModel error: ${ConfigStorage.instance.token} ${e.response?.data}");
          try {
            await GetAuthService.instance
                .regenerateToken(ConfigStorage.instance.refreshToken, context);
            // Retry the failed request with updated token
            return handler.resolve(await dio.request(e.requestOptions.path,
                options: Options(
                  method: e.requestOptions.method,
                ),
                data: e.requestOptions.data,
                queryParameters: e.requestOptions.queryParameters));
          } catch (error) {
            return handler
                .next(e); // Propagate the error if it cannot be handled here
          }
        } else {
          return handler.next(e); // Continue with the error handling
        }
      },
    ));

    // Handle the response based on status code
    try {
      final Response response = await dio.get(
        endpoint,
      );
      debugPrint(
          "MemberDetailsModel response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SVProgressHUD.dismiss();
        return MemberDetailsModel.fromJson(response.data);
      } else {
        SVProgressHUD.dismiss();
        debugPrint("MemberDetailsModel error: ${response.data}");
        return MemberDetailsModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      SVProgressHUD.dismiss();
      debugPrint("MemberDetailsModel error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return MemberDetailsModel.fromJson(e.response?.data);
      });
    }
  }

  Future<JoinedByReferralModel> joinedByList(context, start, length,
      {bool shouldRetry = true}) async {
    String endpoint = 'member-list/joined/by/referral/code';
    final Map<String, dynamic> requestBody = {
      "start": start,
      "length": length,
    };

    final dio = Dio(BaseOptions(
        baseUrl:
            "${ApiService.baseUrl}/${ApiService.path}/${ApiService.type}/"));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Authorization'] =
            'Bearer ${ConfigStorage.instance.token}';
        options.headers['Content-Type'] = 'application/json';
        options.headers['Accept'] = 'application/json';
        return handler.next(options);
      },
      onError: (DioException e, handler) async {
        if (e.response?.statusCode == 401) {
          debugPrint("JoinedByReferralModel error: ${e.response?.data}");
          try {
            await GetAuthService.instance
                .regenerateToken(ConfigStorage.instance.refreshToken, context);
            // Retry the failed request with updated token
            var options = e.requestOptions;
            options.headers['Authorization'] =
                'Bearer ${ConfigStorage.instance.token}';
            final newResponse = await dio.request(
              options.path,
              options: Options(
                method: options.method,
                headers: options.headers,
              ),
              data: options.data,
              queryParameters: options.queryParameters,
            );
            return handler.resolve(newResponse);
          } catch (error) {
            return handler
                .next(e); // Propagate the error if it cannot be handled here
          }
        } else {
          return handler.next(e); // Continue with the error handling
        }
      },
    ));

    try {
      final Response response = await dio.post(
        endpoint,
        data: json.encode(requestBody),
      );
      debugPrint(
          "JoinedByReferralModel response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return JoinedByReferralModel.fromJson(response.data);
      } else {
        debugPrint("JoinedByReferralModel error: ${response.data}");
        return JoinedByReferralModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      debugPrint("JoinedByReferralModel error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return JoinedByReferralModel.fromJson(e.response?.data);
      });
    }
  }

  Future<JoinedByReferralModel> unverifiedJoinedByList(context, start, length,
      {bool shouldRetry = true}) async {
    String endpoint = 'unverified-member-list/joined/by/referral/code';
    final Map<String, dynamic> requestBody = {
      "start": start,
      "length": length,
    };

    final dio = Dio(BaseOptions(
        baseUrl:
            "${ApiService.baseUrl}/${ApiService.path}/${ApiService.type}/"));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Authorization'] =
            'Bearer ${ConfigStorage.instance.token}';
        options.headers['Content-Type'] = 'application/json';
        options.headers['Accept'] = 'application/json';
        return handler.next(options);
      },
      onError: (DioException e, handler) async {
        if (e.response?.statusCode == 401 && shouldRetry) {
          debugPrint(
              "UnverifiedJoinedByReferralModel error: ${ConfigStorage.instance.token} ${e.response?.data}");
          try {
            await GetAuthService.instance
                .regenerateToken(ConfigStorage.instance.refreshToken, context);

            // Retry the failed request with updated token
            var options = e.requestOptions;
            options.headers['Authorization'] =
                'Bearer ${ConfigStorage.instance.token}';
            final newResponse = await dio.request(
              options.path,
              options: Options(
                method: options.method,
                headers: options.headers,
              ),
              data: options.data,
              queryParameters: options.queryParameters,
            );
            return handler.resolve(newResponse);
          } catch (error) {
            return handler
                .next(e); // Propagate the error if it cannot be handled here
          }
        } else {
          return handler.next(e); // Continue with the error handling
        }
      },
    ));

    try {
      final Response response = await dio.post(
        endpoint,
        data: json.encode(requestBody),
      );
      debugPrint(
          "UnverifiedJoinedByReferralModel response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return JoinedByReferralModel.fromJson(response.data);
      } else {
        debugPrint("UnverifiedJoinedByReferralModel error: ${response.data}");
        return JoinedByReferralModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      debugPrint(
          "UnverifiedJoinedByReferralModel error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return JoinedByReferralModel.fromJson(e.response?.data);
      });
    }
  }

  Future<AudienceDemographyModel> getAudienceDemography(context,
      {bool shouldRetry = true}) async {
    SVProgressHUD.show();

    String endpoint = 'audience-demographic';
    final dio = Dio(BaseOptions(
        baseUrl:
            "${ApiService.baseUrl}/${ApiService.path}/${ApiService.type}/"));

    // Add an interceptor for handling token retries
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Authorization'] =
            'Bearer ${ConfigStorage.instance.token}';
        options.headers['Content-Type'] = 'application/json';
        options.headers['Accept'] = 'application/json';
        return handler.next(options);
      },
      onError: (DioException e, handler) async {
        if (e.response?.statusCode == 401 && shouldRetry) {
          // If we have a 401 error, try to refresh the token
          debugPrint("audience-demographic error: ${e.response?.data}");
          try {
            await GetAuthService.instance
                .regenerateToken(ConfigStorage.instance.refreshToken, context);
            // Retry the failed request with updated token
            var options = e.requestOptions;
            options.headers['Authorization'] =
                'Bearer ${ConfigStorage.instance.token}';
            final newResponse = await dio.request(
              options.path,
              options: Options(
                method: options.method,
                headers: options.headers,
              ),
              data: options.data,
              queryParameters: options.queryParameters,
            );
            return handler.resolve(newResponse);
          } catch (error) {
            return handler.next(e);
          }
        } else {
          return handler.next(e);
        }
      },
    ));

    try {
      final Response response = await dio.get(endpoint);
      debugPrint(
          "audience-demographic response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SVProgressHUD.dismiss();
        return AudienceDemographyModel.fromJson(response.data);
      } else {
        SVProgressHUD.dismiss();
        debugPrint("audience-demographic error: ${response.data}");
        return AudienceDemographyModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      SVProgressHUD.dismiss();
      debugPrint("audience-demographic error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return AudienceDemographyModel.fromJson(e.response?.data);
      });
    }
  }

  Future<ProfileDataModel> getProfileData(context,
      {bool shouldRetry = true}) async {
    SVProgressHUD.show();

    final dio = Dio(BaseOptions(
        baseUrl:
            "${ApiService.baseUrl}/${ApiService.path}/${ApiService.type}/"));

    // Add an interceptor for handling token retries
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Authorization'] =
            'Bearer ${ConfigStorage.instance.token}';
        options.headers['Content-Type'] = 'application/json';
        options.headers['Accept'] = 'application/json';
        return handler.next(options);
      },
      onError: (DioException e, handler) async {
        if (e.response?.statusCode == 401 && shouldRetry) {
          // If we have a 401 error, try to refresh the token
          debugPrint("ProfileDataModel error: ${e.response?.data}");
          try {
            await GetAuthService.instance
                .regenerateToken(ConfigStorage.instance.refreshToken, context);

            // Retry the failed request with updated token
            var options = e.requestOptions;
            options.headers['Authorization'] =
                'Bearer ${ConfigStorage.instance.token}';
            final newResponse = await dio.request(
              options.path,
              options: Options(
                method: options.method,
                headers: options.headers,
              ),
              data: options.data,
              queryParameters: options.queryParameters,
            );
            return handler.resolve(newResponse);
          } catch (error) {
            return handler.next(e);
          }
        } else {
          return handler.next(e);
        }
      },
    ));

    try {
      String endpoint = 'profile-data';
      final Response response = await dio.get(endpoint);
      debugPrint(
          "ProfileDataModel response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SVProgressHUD.dismiss();
        return ProfileDataModel.fromJson(response.data);
      } else {
        SVProgressHUD.dismiss();
        debugPrint("ProfileDataModel error: ${response.data}");
        return ProfileDataModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      SVProgressHUD.dismiss();
      debugPrint("ProfileDataModel error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return ProfileDataModel.fromJson(e.response?.data);
      });
    }
  }

  // Future<PersonalDetailsUpdateModel> updatePersonalDetails(
  //     String name,
  //     String voter_id,
  //     String other_profession,
  //     String other_education,
  //     String date_of_birth,
  //     profession,
  //     religion,
  //     gender,
  //     category,
  //     education,
  //     aadhaar_no,
  //     uid,
  //     context,
  //     {bool shouldRetry = true}) async {
  //   try {
  //     String endpoint = 'member-personal-details-update/$uid';
  //
  //     final Map<String, String> headers = {
  //       'Authorization': 'Bearer ${ConfigStorage.instance.token}',
  //       'Content-Type': 'application/json',
  //       'Accept': 'application/json',
  //     };
  //     final Map<String, String> requestBody = {
  //       "name": name,
  //       "date_of_birth": date_of_birth,
  //       "gender": gender,
  //       "religion": religion,
  //       "category": category,
  //       "profession": profession,
  //       "education": education,
  //       "aadhaar_no": aadhaar_no,
  //       "voter_id": voter_id,
  //       "other_profession": other_profession,
  //       "other_education": other_education,
  //     };
  //     final dio = Dio(BaseOptions(
  //         baseUrl:
  //             "${ApiService.baseUrl}${ApiService.path}/${ApiService.type}/"));
  //     final Response response = await dio.post(
  //       endpoint,
  //       data: json.encode(requestBody),
  //       options: Options(headers: headers),
  //     );
  //     debugPrint(
  //         "PersonalDetailsUpdateModel response: ${dio.options.baseUrl} ${response.data}");
  //     if (response.statusCode == 200 || response.statusCode == 201) {
  //       return PersonalDetailsUpdateModel.fromJson(response.data);
  //     } else {
  //       debugPrint("PersonalDetailsUpdateModel error: ${response.data}");
  //       return PersonalDetailsUpdateModel.fromJson(response.data);
  //     }
  //   } on DioException catch (e) {
  //     if ((e.response?.statusCode == 401 ?? false) && shouldRetry) {
  //       debugPrint("PersonalDetailsUpdateModel error: ${e.response?.data}");
  //       await GetAuthService.instance
  //           .regenerateToken(ConfigStorage.instance.refreshToken, context);
  //       return updatePersonalDetails(
  //           name,
  //           voter_id,
  //           other_profession,
  //           other_education,
  //           date_of_birth,
  //           profession,
  //           religion,
  //           gender,
  //           category,
  //           education,
  //           aadhaar_no,
  //           uid,
  //           context,
  //           shouldRetry: false);
  //     }
  //     debugPrint(
  //         "PersonalDetailsUpdateModel error1: ${e.message} ${e.response}");
  //     return ErrorHandler.handleDioError(e, context, (val) {
  //       return PersonalDetailsUpdateModel.withError(
  //           "${e.response?.data['message']}");
  //     });
  //   }
  // }

  Future<UpdateMemberPersonalDetailsModel> updatePersonalDetails(
      member_id,
      name,
      email,
      date_of_birth,
      gender,
      religion,
      category,
      profession,
      education,
      aadhaar_no,
      voter_id,
      mother_tounge,
      other_profession,
      other_education,
      context) async {
    SVProgressHUD.show();

    String endpoint = 'member-personal-details-update/$member_id';
    final Map<String, dynamic> requestBody = {};

    if (name != null && name != "" && name != 0) {
      requestBody["name"] = name;
    }

    if (email != null && email != "" && email != 0) {
      requestBody["email"] = email;
    }

    if (date_of_birth != null && date_of_birth != "" && date_of_birth != 0) {
      requestBody["date_of_birth"] = date_of_birth;
    }

    if (gender != null && gender != "" && gender > -1) {
      gender += 1; // Add 1 to gender
      requestBody["gender"] = gender; // Assign the incremented gender
    }

    if (religion != null && religion != "" && religion >= 0) {
      requestBody["religion"] = religion;
    }

    if (category != null && category != "" && category != 0) {
      requestBody["category"] = category;
    }

    if (profession != null && profession != "" && profession >= 1) {
      requestBody["profession"] = profession;
    }

    // Always add education regardless of its value
    requestBody["education"] = education;

    if (aadhaar_no != null && aadhaar_no != "" && aadhaar_no != 0) {
      requestBody["aadhaar_no"] = aadhaar_no;
    }

    // Always add voter_id regardless of its value
    requestBody["voter_id"] = voter_id;

    // Always add mother_tounge regardless of its value
    requestBody["mother_tounge"] = mother_tounge;

    if (other_profession != null && other_profession.isNotEmpty) {
      requestBody["other_profession"] = other_profession;
    }

    if (other_education != null && other_education.isNotEmpty) {
      requestBody["other_education"] = other_education;
    }

    debugPrint("${json.encode(requestBody)}");

    final dio = Dio(BaseOptions(
      baseUrl: "${ApiService.baseUrl}/${ApiService.path}/",
    ));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers = {
          'Authorization': 'Bearer ${ConfigStorage.instance.token}',
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        };
        return handler.next(options);
      },
      onError: (DioException e, handler) async {
        if (e.response?.statusCode == 401) {
          debugPrint(
              "UpdateMemberPersonalDetailsModel error: ${e.response?.data}");
          try {
            await GetAuthService.instance
                .regenerateToken(ConfigStorage.instance.refreshToken, context);
            // Retry the failed request with updated token
            var options = e.requestOptions;
            final newResponse = await dio.request(
              options.path,
              options: Options(
                method: options.method,
                headers: options.headers,
              ),
              data: options.data,
              queryParameters: options.queryParameters,
            );
            return handler.resolve(newResponse);
          } catch (error) {
            return handler.next(e);
          }
        } else {
          return handler.next(e);
        }
      },
    ));

    try {
      final Response response = await dio.post(
        endpoint,
        data: json.encode(requestBody),
      );
      debugPrint(
          "UpdateMemberPersonalDetailsModel response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SVProgressHUD.dismiss();
        return UpdateMemberPersonalDetailsModel.fromJson(response.data);
      } else {
        SVProgressHUD.dismiss();
        debugPrint("UpdateMemberPersonalDetailsModel error: ${response.data}");
        return UpdateMemberPersonalDetailsModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      SVProgressHUD.dismiss();
      debugPrint(
          "UpdateMemberPersonalDetailsModel error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return UpdateMemberPersonalDetailsModel.fromJson(e.response?.data);
      });
    }
  }

  Future<MemberSocialDetailsModel> updateSocialDetails(context, member_id,
      aleternate_number, facebook_url, twitter_url, instagram_url,
      {bool shouldRetry = false}) async {
    SVProgressHUD.show();
    String endpoint = 'member-social-details-update';

    var requestBody = {
      "member_id": member_id,
      "aleternate_number": aleternate_number,
      "facebook_url": facebook_url,
      "twitter_url": twitter_url,
      "instagram_url": instagram_url,
    };

    final dio = Dio(
      BaseOptions(baseUrl: "${ApiService.baseUrl}/${ApiService.path}/"),
    );

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Authorization'] =
            'Bearer ${ConfigStorage.instance.token}';
        options.headers['Content-Type'] = 'application/json';
        options.headers['Accept'] = 'application/json';
        return handler.next(options);
      },
      onError: (DioException e, handler) async {
        if (e.response?.statusCode == 401 && !shouldRetry) {
          debugPrint("MemberSocialDetailsModel error: ${e.response?.data}");
          try {
            await GetAuthService.instance
                .regenerateToken(ConfigStorage.instance.refreshToken, context);
            // Retry the failed request with updated token
            var options = e.requestOptions;
            options.headers['Authorization'] =
                'Bearer ${ConfigStorage.instance.token}';
            final newResponse = await dio.request(
              options.path,
              options: Options(
                method: options.method,
                headers: options.headers,
              ),
              data: options.data,
              queryParameters: options.queryParameters,
            );
            return handler.resolve(newResponse);
          } catch (error) {
            return handler.next(e);
          }
        } else {
          return handler.next(e);
        }
      },
    ));

    try {
      final Response response = await dio.post(
        endpoint,
        data: json.encode(requestBody),
      );
      debugPrint(
          "MemberSocialDetailsModel response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SVProgressHUD.dismiss();
        return MemberSocialDetailsModel.fromJson(response.data);
      } else {
        SVProgressHUD.dismiss();
        debugPrint("MemberSocialDetailsModel error: ${response.data}");
        return MemberSocialDetailsModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      SVProgressHUD.dismiss();
      debugPrint("MemberSocialDetailsModel error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return MemberSocialDetailsModel.fromError(
            "${e.response?.data['message']}");
      });
    }
  }

  Future<UpdateMemberFamilyDetailsModel> updateFamilyMemberPersonalDetails(
      context,
      member_id,
      head_member_id,
      name,
      date_of_birth,
      gender,
      relationship,
      mobile_no,
      photo,
      ref_id,
      aadhaar_no,
      voter_id,
      {bool shouldRetry = true}) async {
    try {
      String endpoint = 'member-family-details-create-or-update';

      var formData = FormData.fromMap(<String, dynamic>{
        "head_member_id": head_member_id,
        "name": name,
        "date_of_birth": date_of_birth,
        "gender": gender + 1,
        "relationship": relationship,
        "ref_id": ref_id,
        "aadhaar_no": aadhaar_no,
        "voter_id": voter_id,
      });

      if (mobile_no != null) {
        formData.fields.add(MapEntry("mobile_no", mobile_no));
      }

      if (member_id != null) {
        formData.fields.add(MapEntry("member_id", member_id.toString()));
      }
      if (member_id != null && photo != null) {
        formData.files.add(MapEntry(
          "photo",
          await MultipartFile.fromFile(photo, filename: photo.split('/').last),
        ));
      }
      debugPrint("${formData.fields}");

      final dio = Dio(
          BaseOptions(baseUrl: "${ApiService.baseUrl}/${ApiService.path}/"));

      dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] =
              'Bearer ${ConfigStorage.instance.token}';
          options.headers['Content-Type'] = 'application/json';
          options.headers['Accept'] = 'application/json';
          return handler.next(options);
        },
        onError: (DioException e, handler) async {
          if (e.response?.statusCode == 401 && shouldRetry) {
            debugPrint(
                "UpdateMemberFamilyDetailsModel error: ${e.response?.data}");
            try {
              await GetAuthService.instance.regenerateToken(
                  ConfigStorage.instance.refreshToken, context);
              // Retry the failed request with updated token
              var options = e.requestOptions;
              options.headers['Authorization'] =
                  'Bearer ${ConfigStorage.instance.token}';
              final newResponse = await dio.request(
                options.path,
                options: Options(
                  method: options.method,
                  headers: options.headers,
                ),
                data: options.data,
                queryParameters: options.queryParameters,
              );
              return handler.resolve(newResponse);
            } catch (error) {
              return handler.next(e);
            }
          } else {
            return handler.next(e);
          }
        },
      ));

      final Response response = await dio.post(
        endpoint,
        data: formData,
      );
      debugPrint(
          "UpdateMemberFamilyDetailsModel response: ${dio.options.baseUrl} ${response.data}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UpdateMemberFamilyDetailsModel.fromJson(response.data);
      } else {
        debugPrint("UpdateMemberPersonalDetailsModel error: ${response.data}");
        return UpdateMemberFamilyDetailsModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      debugPrint(
          "UpdateMemberPersonalDetailsModel error1: ${e.message} ${e.response}");
      return ErrorHandler.handleDioError(e, context, (val) {
        return UpdateMemberFamilyDetailsModel.fromJson(e.response?.data);
      });
    }
  }
}
