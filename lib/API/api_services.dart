import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svprogresshud/flutter_svprogresshud.dart';
import 'package:uppl/API/apis/analytics_api.dart';
import 'package:uppl/API/apis/dropdown_api.dart';
import 'package:uppl/API/apis/json_apis.dart';
import 'package:uppl/API/apis/member_api.dart';
import 'package:uppl/API/apis/otp_apis.dart';
import 'package:uppl/API/apis/referal_api.dart';
import 'package:uppl/Models/Auth/login_model.dart';
import 'package:uppl/Models/Auth/logout_model.dart';

import '../Models/Auth/registration_model.dart';
import '../Models/Auth/verify_otp_model.dart';
import '../Models/DropDown/dropdown_data_model.dart';
import '../Models/JSON/generate_json_model.dart';
import '../Models/Member/member_details_model.dart';
import '../Models/Member/member_social_details_model.dart';
import '../Models/Member/update_member_family_details_model.dart';
import '../Models/Member/update_member_personal_details_model.dart';
import '../Models/Membership/membership_card_model.dart';
import '../Models/Profile/contact_details_update_model.dart';
import '../Models/Profile/profile_data_model.dart';
import '../Models/Referal/joined_by_referral_model.dart';
import '../Models/Referal/validate_referal_code_model.dart';
import '../Models/Token/regenerate_token_model.dart';
import '../Models/Verify/generate_verify_otp_model.dart';
import '../Models/audience/audience_demography_model.dart';
import '../Models/dashboard_stats_model.dart';
import '../Models/family/family_details_model.dart';
import '../Models/family/referred_family_details_model.dart';
import '../Storage/config_storage.dart';
import 'apis/auth_api.dart';
import 'apis/famiy_apis.dart';
import 'apis/membership_api.dart';

class ApiService {
  final BuildContext context;

  ApiService._(this.context);

  static ApiService? _instance;

  static ApiService instance(BuildContext context) {
    _instance ??= ApiService._(context);
    return _instance!;
  }

  static const String baseUrl = "https://upplofficial.org";

  // static const String baseUrl = "https://staging.upplofficial.org/";
  static const String path = "api";
  static const String type = "member";

  // Make dio3 a static field to share it across instances
  static final Dio dio = _createDioInstance();

  // Add a flag to control request execution
  static bool _isHalted = false;

  // Function to halt execution of requests
  static void haltRequests() {
    _isHalted = true;
  }

  // Function to resume execution of requests
  static void resumeRequests() {
    _isHalted = false;
  }

  // Helper method to check if requests are halted
  Future<void> _checkHaltStatus() async {
    while (_isHalted) {
      await Future.delayed(Duration(milliseconds: 100));
    }
  }

  static Dio _createDioInstance() {
    final dio = Dio(
      BaseOptions(
        baseUrl: "$baseUrl/$path/",
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        options.headers['Authorization'] =
            'Bearer ${ConfigStorage.instance.token}';
        return handler.next(options);
      },
      onError: (DioException e, ErrorInterceptorHandler handler) async {
        if (e.response?.statusCode == 401) {
          SVProgressHUD.dismiss();
          try {
            final regenerateTokenModel = await GetAuthService.instance
                .regenerateToken(
                    ConfigStorage.instance.refreshToken, _instance!.context);
            debugPrint("regenerateToken ISSUES ${regenerateTokenModel}");
            if (regenerateTokenModel.message ==
                "Another token is already regenerated") {
              return handler.next(e); // Retry the original response
            }
            return handler.resolve(e.response!);
          } catch (error) {
            debugPrint("Token refresh error:  $error");
          }
        }
        return handler.next(e);
      },
    ));
    return dio;
  }

//Auth
  Future<RegenerateTokenModel> regenerateToken(
    String refreshToken,
    context,
  ) async {
    return GetAuthService.instance.regenerateToken(refreshToken, context);
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
    dynamic ref_id,
    int declare,
    List<String> photo,
    int? community,
    String? otherCommunity,
    context,
  ) async {
    await _checkHaltStatus();
    return GetAuthService.instance.registration(
      mobile_no,
      name,
      date_of_birth,
      gender,
      email,
      address,
      pincode,
      btc_constituency,
      district,
      party_district,
      assembly_constituency,
      priamries,
      booth,
      other_village,
      village,
      ref_id,
      declare,
      photo,
      community,
      otherCommunity,
      context,
    );
  }

  Future<LoginModel> sendOTP(String phone_number, context) async {
    await _checkHaltStatus();
    return GetAuthService.instance.sendOTP(phone_number, context);
  }

  Future<GenerateVerifyOtpModel> sendRegistrationOTP(
      String phone_number, context) async {
    await _checkHaltStatus();
    return GetAuthService.instance.sendRegistrationOTP(phone_number, context);
  }

  Future<VerifyOtpModel> verifyOTP(
      String type, phone_number, otp, terms, context) async {
    await _checkHaltStatus();
    return GetOTPService.instance
        .verifyOTP(type, phone_number, otp, terms, context);
  }

  Future<LoginModel> login(
    String phone_number,
    String otp,
    context,
  ) async {
    await _checkHaltStatus();
    return GetAuthService.instance.login(
      phone_number,
      otp,
      context,
    );
  }

  Future<LogoutResponseModel> logout(context) async {
    await _checkHaltStatus();
    return GetAuthService.instance.logout(context);
  }

  //Generate Verify OTP

  Future<GenerateVerifyOtpModel> generateVerifyOTP(
      String type, phone_number, terms, context) async {
    await _checkHaltStatus();
    return GetOTPService.instance
        .generateVerifyOTP(type, phone_number, terms, context);
  }

  //JSON
  Future<JsonDataModel> generateJSON(context) async {
    await _checkHaltStatus();
    return GetJsonService.instance.generateJSON(context);
  }

  //Membership
  Future<MembershipCardModel> getMembershipCard(
      String phone_number, context) async {
    await _checkHaltStatus();
    return GetMembershipService.instance
        .getMembershipCard(phone_number, context);
  }

  Future<MemberDetailsModel> getMemberDetails(context) async {
    await _checkHaltStatus();
    return GetMemberService.instance.getMemberDetails(context, dio);
  }

  Future<AudienceDemographyModel> getAudienceDemography(context) async {
    await _checkHaltStatus();
    return GetMemberService.instance.getAudienceDemography(context, dio);
  }

  Future<ProfileDataModel> getProfileData(context) async {
    await _checkHaltStatus();
    return GetMemberService.instance.getProfileData(context, dio);
  }

  Future<DropDownDataModel> getDropdownData(context) async {
    await _checkHaltStatus();
    return GetDropDownService.instance.getDropdownData(context);
  }

  Future<FamilyDetailsModel> getFamilyDetails(context) async {
    await _checkHaltStatus();
    return GetFamilyService.instance.getFamilyDetails(context, dio);
  }

  Future<ValidateMemberModel> checkMobileOrCodeVerify(
      String phone_number, context) async {
    await _checkHaltStatus();
    return GetReferralService.instance
        .checkMobileOrCodeVerify(phone_number, context);
  }

  Future<ReferredFamilyDetailsModel> getReferredFamilyDetails(
      context, member_id) async {
    await _checkHaltStatus();
    return GetFamilyService.instance
        .getReferredFamilyDetails(context, member_id, dio);
  }

  Future<JoinedByReferralModel> joinedByList(context, start, length,
      {bool shouldRetry = true}) async {
    await _checkHaltStatus();
    return GetMemberService.instance.joinedByList(context, start, length, dio);
  }

  Future<JoinedByReferralModel> unverifiedJoinedByList(context, start, length,
      {bool shouldRetry = true}) async {
    await _checkHaltStatus();
    return GetMemberService.instance
        .unverifiedJoinedByList(context, start, length, dio);
  }

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
    community,
    otherCommunity,
    context,
  ) async {
    await _checkHaltStatus();
    return GetMemberService.instance.updatePersonalDetails(
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
      community,
      otherCommunity,
      context,
      dio,
    );
  }

  Future<MemberSocialDetailsModel> updateSocialDetails(context, member_id,
      aleternate_number, facebook_url, twitter_url, instagram_url) async {
    await _checkHaltStatus();
    return GetMemberService.instance.updateSocialDetails(context, member_id,
        aleternate_number, facebook_url, twitter_url, instagram_url, dio);
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
    await _checkHaltStatus();
    return GetMemberService.instance.updateFamilyMemberPersonalDetails(
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
        dio);
  }

  Future<ContactDetailsUpdateModel> updateContactDetails(
      context,
      member_id,
      country,
      address,
      pincode,
      btc_constituency,
      assembly_constituency,
      district,
      party_district,
      priamries,
      booth,
      village,
      other_village,
      {bool shouldRetry = true}) async {
    return GetMemberService.instance.updateContactDetails(
        context,
        member_id,
        country,
        address,
        pincode,
        btc_constituency,
        assembly_constituency,
        district,
        party_district,
        priamries,
        booth,
        village,
        other_village,
        dio);
  }

  Future<DashboardStats> generateAnalytics(
    context,
  ) async {
    return GetAnalyticsService.instance.generateAnalytics(context);
  }
}
