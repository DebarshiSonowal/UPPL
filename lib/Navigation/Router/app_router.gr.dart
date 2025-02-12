// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AddFamilyMemberDetailsScreen]
class AddFamilyMemberDetailsRoute
    extends PageRouteInfo<AddFamilyMemberDetailsRouteArgs> {
  AddFamilyMemberDetailsRoute({
    Key? key,
    required int id,
    required String name,
    List<PageRouteInfo>? children,
  }) : super(
          AddFamilyMemberDetailsRoute.name,
          args: AddFamilyMemberDetailsRouteArgs(
            key: key,
            id: id,
            name: name,
          ),
          initialChildren: children,
        );

  static const String name = 'AddFamilyMemberDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddFamilyMemberDetailsRouteArgs>();
      return AddFamilyMemberDetailsScreen(
        key: args.key,
        id: args.id,
        name: args.name,
      );
    },
  );
}

class AddFamilyMemberDetailsRouteArgs {
  const AddFamilyMemberDetailsRouteArgs({
    this.key,
    required this.id,
    required this.name,
  });

  final Key? key;

  final int id;

  final String name;

  @override
  String toString() {
    return 'AddFamilyMemberDetailsRouteArgs{key: $key, id: $id, name: $name}';
  }
}

/// generated route for
/// [AddMemberDetailsScreen]
class AddMemberDetailsRoute extends PageRouteInfo<AddMemberDetailsRouteArgs> {
  AddMemberDetailsRoute({
    Key? key,
    required String mobile,
    List<PageRouteInfo>? children,
  }) : super(
          AddMemberDetailsRoute.name,
          args: AddMemberDetailsRouteArgs(
            key: key,
            mobile: mobile,
          ),
          initialChildren: children,
        );

  static const String name = 'AddMemberDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddMemberDetailsRouteArgs>();
      return AddMemberDetailsScreen(
        key: args.key,
        mobile: args.mobile,
      );
    },
  );
}

class AddMemberDetailsRouteArgs {
  const AddMemberDetailsRouteArgs({
    this.key,
    required this.mobile,
  });

  final Key? key;

  final String mobile;

  @override
  String toString() {
    return 'AddMemberDetailsRouteArgs{key: $key, mobile: $mobile}';
  }
}

/// generated route for
/// [AddMemberScreen]
class AddMemberRoute extends PageRouteInfo<AddMemberRouteArgs> {
  AddMemberRoute({
    Key? key,
    String? mobile,
    List<PageRouteInfo>? children,
  }) : super(
          AddMemberRoute.name,
          args: AddMemberRouteArgs(
            key: key,
            mobile: mobile,
          ),
          initialChildren: children,
        );

  static const String name = 'AddMemberRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddMemberRouteArgs>(
          orElse: () => const AddMemberRouteArgs());
      return AddMemberScreen(
        key: args.key,
        mobile: args.mobile,
      );
    },
  );
}

class AddMemberRouteArgs {
  const AddMemberRouteArgs({
    this.key,
    this.mobile,
  });

  final Key? key;

  final String? mobile;

  @override
  String toString() {
    return 'AddMemberRouteArgs{key: $key, mobile: $mobile}';
  }
}

/// generated route for
/// [AnalyticsScreen]
class AnalyticsRoute extends PageRouteInfo<void> {
  const AnalyticsRoute({List<PageRouteInfo>? children})
      : super(
          AnalyticsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnalyticsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AnalyticsScreen();
    },
  );
}

/// generated route for
/// [CompleteProfileScreen]
class CompleteProfileRoute extends PageRouteInfo<void> {
  const CompleteProfileRoute({List<PageRouteInfo>? children})
      : super(
          CompleteProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompleteProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CompleteProfileScreen();
    },
  );
}

/// generated route for
/// [CustomImageViewerScreen]
class CustomImageViewerRoute extends PageRouteInfo<CustomImageViewerRouteArgs> {
  CustomImageViewerRoute({
    Key? key,
    required String url,
    List<PageRouteInfo>? children,
  }) : super(
          CustomImageViewerRoute.name,
          args: CustomImageViewerRouteArgs(
            key: key,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'CustomImageViewerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CustomImageViewerRouteArgs>();
      return CustomImageViewerScreen(
        key: args.key,
        url: args.url,
      );
    },
  );
}

class CustomImageViewerRouteArgs {
  const CustomImageViewerRouteArgs({
    this.key,
    required this.url,
  });

  final Key? key;

  final String url;

  @override
  String toString() {
    return 'CustomImageViewerRouteArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [DashboardScreen]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardScreen();
    },
  );
}

/// generated route for
/// [EditProfileScreen]
class EditProfileRoute extends PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({
    Key? key,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          EditProfileRoute.name,
          args: EditProfileRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditProfileRouteArgs>();
      return EditProfileScreen(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'EditProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [FamilyViewDetailsMemberScreen]
class FamilyViewDetailsMemberRoute
    extends PageRouteInfo<FamilyViewDetailsMemberRouteArgs> {
  FamilyViewDetailsMemberRoute({
    Key? key,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          FamilyViewDetailsMemberRoute.name,
          args: FamilyViewDetailsMemberRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'FamilyViewDetailsMemberRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FamilyViewDetailsMemberRouteArgs>();
      return FamilyViewDetailsMemberScreen(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class FamilyViewDetailsMemberRouteArgs {
  const FamilyViewDetailsMemberRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'FamilyViewDetailsMemberRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [ForgetPasswordScreen]
class ForgetPasswordRoute extends PageRouteInfo<void> {
  const ForgetPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ForgetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ForgetPasswordScreen();
    },
  );
}

/// generated route for
/// [ForgotPasswordOtpScreen]
class ForgotPasswordOtpRoute extends PageRouteInfo<void> {
  const ForgotPasswordOtpRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPasswordOtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordOtpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ForgotPasswordOtpScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [JoinedReferralViewDetailsMemberScreen]
class JoinedReferralViewDetailsMemberRoute
    extends PageRouteInfo<JoinedReferralViewDetailsMemberRouteArgs> {
  JoinedReferralViewDetailsMemberRoute({
    Key? key,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          JoinedReferralViewDetailsMemberRoute.name,
          args: JoinedReferralViewDetailsMemberRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'JoinedReferralViewDetailsMemberRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<JoinedReferralViewDetailsMemberRouteArgs>();
      return JoinedReferralViewDetailsMemberScreen(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class JoinedReferralViewDetailsMemberRouteArgs {
  const JoinedReferralViewDetailsMemberRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'JoinedReferralViewDetailsMemberRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [LoginOtpScreen]
class LoginOtpRoute extends PageRouteInfo<void> {
  const LoginOtpRoute({List<PageRouteInfo>? children})
      : super(
          LoginOtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginOtpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginOtpScreen();
    },
  );
}

/// generated route for
/// [LoginOtpVerifyScreen]
class LoginOtpVerifyRoute extends PageRouteInfo<LoginOtpVerifyRouteArgs> {
  LoginOtpVerifyRoute({
    Key? key,
    required String phonenumber,
    List<PageRouteInfo>? children,
  }) : super(
          LoginOtpVerifyRoute.name,
          args: LoginOtpVerifyRouteArgs(
            key: key,
            phonenumber: phonenumber,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginOtpVerifyRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginOtpVerifyRouteArgs>();
      return LoginOtpVerifyScreen(
        key: args.key,
        phonenumber: args.phonenumber,
      );
    },
  );
}

class LoginOtpVerifyRouteArgs {
  const LoginOtpVerifyRouteArgs({
    this.key,
    required this.phonenumber,
  });

  final Key? key;

  final String phonenumber;

  @override
  String toString() {
    return 'LoginOtpVerifyRouteArgs{key: $key, phonenumber: $phonenumber}';
  }
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginScreen();
    },
  );
}

/// generated route for
/// [MemberDataScreen]
class MemberDataRoute extends PageRouteInfo<MemberDataRouteArgs> {
  MemberDataRoute({
    Key? key,
    required int index,
    List<PageRouteInfo>? children,
  }) : super(
          MemberDataRoute.name,
          args: MemberDataRouteArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'MemberDataRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MemberDataRouteArgs>();
      return MemberDataScreen(
        key: args.key,
        index: args.index,
      );
    },
  );
}

class MemberDataRouteArgs {
  const MemberDataRouteArgs({
    this.key,
    required this.index,
  });

  final Key? key;

  final int index;

  @override
  String toString() {
    return 'MemberDataRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileScreen();
    },
  );
}

/// generated route for
/// [ProvideDetailsScreen]
class ProvideDetailsRoute extends PageRouteInfo<ProvideDetailsRouteArgs> {
  ProvideDetailsRoute({
    Key? key,
    required String mobile,
    List<PageRouteInfo>? children,
  }) : super(
          ProvideDetailsRoute.name,
          args: ProvideDetailsRouteArgs(
            key: key,
            mobile: mobile,
          ),
          initialChildren: children,
        );

  static const String name = 'ProvideDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProvideDetailsRouteArgs>();
      return ProvideDetailsScreen(
        key: args.key,
        mobile: args.mobile,
      );
    },
  );
}

class ProvideDetailsRouteArgs {
  const ProvideDetailsRouteArgs({
    this.key,
    required this.mobile,
  });

  final Key? key;

  final String mobile;

  @override
  String toString() {
    return 'ProvideDetailsRouteArgs{key: $key, mobile: $mobile}';
  }
}

/// generated route for
/// [ReferralFamilyViewDetailsMemberScreen]
class ReferralFamilyViewDetailsMemberRoute
    extends PageRouteInfo<ReferralFamilyViewDetailsMemberRouteArgs> {
  ReferralFamilyViewDetailsMemberRoute({
    Key? key,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          ReferralFamilyViewDetailsMemberRoute.name,
          args: ReferralFamilyViewDetailsMemberRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ReferralFamilyViewDetailsMemberRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReferralFamilyViewDetailsMemberRouteArgs>();
      return ReferralFamilyViewDetailsMemberScreen(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class ReferralFamilyViewDetailsMemberRouteArgs {
  const ReferralFamilyViewDetailsMemberRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'ReferralFamilyViewDetailsMemberRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [SaveMemberDetailsScreen]
class SaveMemberDetailsRoute extends PageRouteInfo<void> {
  const SaveMemberDetailsRoute({List<PageRouteInfo>? children})
      : super(
          SaveMemberDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SaveMemberDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SaveMemberDetailsScreen();
    },
  );
}

/// generated route for
/// [SavedDetailsScreen]
class SavedDetailsRoute extends PageRouteInfo<void> {
  const SavedDetailsRoute({List<PageRouteInfo>? children})
      : super(
          SavedDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SavedDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SavedDetailsScreen();
    },
  );
}

/// generated route for
/// [SignupOtpScreen]
class SignupOtpRoute extends PageRouteInfo<SignupOtpRouteArgs> {
  SignupOtpRoute({
    Key? key,
    required String phonenumber,
    List<PageRouteInfo>? children,
  }) : super(
          SignupOtpRoute.name,
          args: SignupOtpRouteArgs(
            key: key,
            phonenumber: phonenumber,
          ),
          initialChildren: children,
        );

  static const String name = 'SignupOtpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignupOtpRouteArgs>();
      return SignupOtpScreen(
        key: args.key,
        phonenumber: args.phonenumber,
      );
    },
  );
}

class SignupOtpRouteArgs {
  const SignupOtpRouteArgs({
    this.key,
    required this.phonenumber,
  });

  final Key? key;

  final String phonenumber;

  @override
  String toString() {
    return 'SignupOtpRouteArgs{key: $key, phonenumber: $phonenumber}';
  }
}

/// generated route for
/// [SignupScreen]
class SignupRoute extends PageRouteInfo<void> {
  const SignupRoute({List<PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignupScreen();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return SplashScreen();
    },
  );
}

/// generated route for
/// [UpdateFamilyDetailsScreen]
class UpdateFamilyDetailsRoute extends PageRouteInfo<void> {
  const UpdateFamilyDetailsRoute({List<PageRouteInfo>? children})
      : super(
          UpdateFamilyDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateFamilyDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UpdateFamilyDetailsScreen();
    },
  );
}

/// generated route for
/// [UpdateFamilyProfileScreen]
class UpdateFamilyProfileRoute extends PageRouteInfo<void> {
  const UpdateFamilyProfileRoute({List<PageRouteInfo>? children})
      : super(
          UpdateFamilyProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateFamilyProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UpdateFamilyProfileScreen();
    },
  );
}

/// generated route for
/// [UpdateOwnFamilyDetailsScreen]
class UpdateOwnFamilyDetailsRoute extends PageRouteInfo<void> {
  const UpdateOwnFamilyDetailsRoute({List<PageRouteInfo>? children})
      : super(
          UpdateOwnFamilyDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateOwnFamilyDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UpdateOwnFamilyDetailsScreen();
    },
  );
}

/// generated route for
/// [ValidationScreen]
class ValidationRoute extends PageRouteInfo<void> {
  const ValidationRoute({List<PageRouteInfo>? children})
      : super(
          ValidationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ValidationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ValidationScreen();
    },
  );
}

/// generated route for
/// [VerifiedScreen]
class VerifiedRoute extends PageRouteInfo<VerifiedRouteArgs> {
  VerifiedRoute({
    Key? key,
    required String mobile,
    List<PageRouteInfo>? children,
  }) : super(
          VerifiedRoute.name,
          args: VerifiedRouteArgs(
            key: key,
            mobile: mobile,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifiedRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerifiedRouteArgs>();
      return VerifiedScreen(
        key: args.key,
        mobile: args.mobile,
      );
    },
  );
}

class VerifiedRouteArgs {
  const VerifiedRouteArgs({
    this.key,
    required this.mobile,
  });

  final Key? key;

  final String mobile;

  @override
  String toString() {
    return 'VerifiedRouteArgs{key: $key, mobile: $mobile}';
  }
}

/// generated route for
/// [ViewListScreen]
class ViewListRoute extends PageRouteInfo<void> {
  const ViewListRoute({List<PageRouteInfo>? children})
      : super(
          ViewListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ViewListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ViewListScreen();
    },
  );
}
