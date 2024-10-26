import 'package:auto_route/auto_route.dart';
import 'package:uppl/Constants/routes.dart';

import '../../UI/AddMember/add_member_details_screen.dart';
import '../../UI/AddMember/add_member_screen.dart';
import '../../UI/AddMember/save_member_details_screen.dart';
import '../../UI/Auth/forget_password_screen.dart';
import '../../UI/Auth/forgot_password_otp_screen.dart';
import '../../UI/Auth/login_otp_screen.dart';
import '../../UI/Auth/login_screen.dart';
import '../../UI/Auth/provide_details_screen.dart';
import '../../UI/Auth/saved_details_screen.dart';
import '../../UI/Auth/signup_screen.dart';
import '../../UI/Dashboard/dashboard_screen.dart';
import '../../UI/Home/home_screen.dart';
import '../../UI/Profile/complete_profile.dart';
import '../../UI/Profile/profile_screen.dart';
import '../../UI/Splash/splash_screen.dart';

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
          page: LoginRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.loginOtpScreen,
          page: LoginOtpRoute.page,
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
          path: CustomRoutes.profileScreen,
          page: ProfileRoute.page,
        ),
        AutoRoute(
          path: CustomRoutes.completeProfileScreen,
          page: CompleteProfileRoute.page,
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
      ];
}
