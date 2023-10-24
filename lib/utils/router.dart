import 'package:auto_route/auto_route.dart';
import 'package:teship/features/app/app_navigator.dart';
import 'package:teship/features/app/app_wrapper.dart';

import 'package:teship/features/auth/login/presentation/login_screen.dart';
import 'package:teship/features/forgot_password/presentation/forgot_pass_screen.dart';
import 'package:teship/features/store_detail/presentation/store_detail_screen.dart';

import '../features/change_info/presentation/change_info_screen.dart';
import '../features/change_password/presentation/change_password_screen.dart';
import '../features/forgot_password_success/presentation/forgot_password_success_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: AppWrapper,
      initial: true,
      children: [
        AutoRoute(
          path: 'login',
          page: LoginScreen,
        ),
        AutoRoute(
          path: 'forgot_password',
          page: ForgotPassScreen,
        ),
        AutoRoute(
          path: 'forgot_password_success',
          page: ForgotPasswordSuccessScreen,
        ),
        AutoRoute(
          path: 'home',
          page: AppNavigator,
        ),
        AutoRoute(
          path: 'change_info',
          page: ChangeInfoScreen,
        ),
        AutoRoute(
          path: 'change_pass',
          page: ChangePasswordScreen,
        ),
        AutoRoute(
          path: 'change_pass',
          page: StoreDetailScreen,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
