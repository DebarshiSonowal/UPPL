import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:uppl/Constants/routes.dart';

import '../../UI/AddMember/Widgets/add_family_member_details_screen.dart';
import '../../UI/AddMember/add_member_details_screen.dart';
import '../../UI/AddMember/add_member_screen.dart';
import '../../UI/AddMember/save_member_details_screen.dart';
import '../../UI/Auth/edit_profile_screen.dart';
import '../../UI/Auth/forget_password_screen.dart';
import '../../UI/Auth/forgot_password_otp_screen.dart';
import '../../UI/Auth/login_otp_screen.dart';
import '../../UI/Auth/login_otp_verify_screen.dart';
import '../../UI/Auth/login_screen.dart';
import '../../UI/Auth/provide_details_screen.dart';
import '../../UI/Auth/saved_details_screen.dart';
import '../../UI/Auth/signup_otp_screen.dart';
import '../../UI/Auth/signup_screen.dart';
import '../../UI/Common/image_viewer.dart';
import '../../UI/Dashboard/dashboard_screen.dart';
import '../../UI/Dashboard/family_view_details_member.dart';
import '../../UI/Dashboard/joined_referral_view_details_member.dart';
import '../../UI/Dashboard/member_data_screen.dart';
import '../../UI/Dashboard/referral_family_view_details_member.dart';
import '../../UI/Dashboard/view_list_screen.dart';
import '../../UI/Family/update_family_details_screen.dart';
import '../../UI/Family/update_own_family_details.dart';
import '../../UI/Home/home_screen.dart';
import '../../UI/Profile/Widgets/validation_screen.dart';
import '../../UI/Profile/complete_profile.dart';
import '../../UI/Profile/profile_screen.dart';
import '../../UI/Profile/update_family_profile.dart';
import '../../UI/Splash/splash_screen.dart';
import '../../UI/Verified/verified_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        // add your routes here
        AutoRoute(
          path: CustomRoutes.splashScreen,
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: CustomRoutes.loginScreen,
          page: LoginOtpRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.loginOtpScreen,
          page: LoginOtpRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.loginOtpVerifyScreen,
          page: LoginOtpVerifyRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.signupOtpVerifyScreen,
          page: SignupOtpRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.signupScreen,
          page: SignupRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.forgotPasswordScreen,
          page: ForgetPasswordRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.forgotPasswordOtpScreen,
          page: ForgotPasswordOtpRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.provideDetailsScreen,
          page: ProvideDetailsRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.savedDetailsScreen,
          page: SavedDetailsRoute.page,
        ),

        //Home
        AutoRoute(
          path: CustomRoutes.homeScreen,
          page: HomeRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.dashboardScreen,
          page: DashboardRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.viewListScreen,
          page: ViewListRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.viewDetailsMemberScreen,
          page: JoinedReferralViewDetailsMemberRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.referralFamilyViewDetailsMemberScreen,
          page: ReferralFamilyViewDetailsMemberRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.familyViewDetailsMemberScreen,
          page: FamilyViewDetailsMemberRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.profileScreen,
          page: ProfileRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.completeProfileScreen,
          page: CompleteProfileRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.updateFamilyDetailsScreen,
          page: UpdateFamilyDetailsRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.updateMyFamilyDetailsScreen,
          page: UpdateOwnFamilyDetailsRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.validationScreen,
          page: ValidationRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.editProfileScreen,
          page: EditProfileRoute.page,
        ),

        //Add
        AutoRoute(
          path: CustomRoutes.addMemberScreen,
          page: AddMemberRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.addMemberDetailsScreen,
          page: AddMemberDetailsRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.saveMemberDetailsScreen,
          page: SaveMemberDetailsRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.addFamilyMemberDetailsScreen,
          page: AddFamilyMemberDetailsRoute.page,
        ),

        //Image
        AutoRoute(
          path: CustomRoutes.customImageViewer,
          page: CustomImageViewerRoute.page,
        ),

        //verification
        AutoRoute(
          path: CustomRoutes.verifiedScreen,
          page: VerifiedRoute.page,
        ),
      ];
}
