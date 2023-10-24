// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:reactive_forms/reactive_forms.dart' as _i12;

import '../data/responses/responses.dart' as _i13;
import '../features/app/app_navigator.dart' as _i5;
import '../features/app/app_wrapper.dart' as _i1;
import '../features/auth/login/blocs/auth_cubit.dart' as _i11;
import '../features/auth/login/presentation/login_screen.dart' as _i2;
import '../features/change_info/presentation/change_info_screen.dart' as _i6;
import '../features/change_password/presentation/change_password_screen.dart'
    as _i7;
import '../features/forgot_password/presentation/forgot_pass_screen.dart'
    as _i3;
import '../features/forgot_password_success/presentation/forgot_password_success_screen.dart'
    as _i4;
import '../features/store_detail/presentation/store_detail_screen.dart' as _i8;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AppWrapperRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AppWrapper(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.LoginScreen(
          key: args.key,
          cubit: args.cubit,
          form: args.form,
        ),
      );
    },
    ForgotPassScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ForgotPassScreen(),
      );
    },
    ForgotPasswordSuccessScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ForgotPasswordSuccessScreen(),
      );
    },
    AppNavigatorRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.AppNavigator(),
      );
    },
    ChangeInfoScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ChangeInfoScreen(),
      );
    },
    ChangePasswordScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ChangePasswordScreen(),
      );
    },
    StoreDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<StoreDetailScreenRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.StoreDetailScreen(
          key: args.key,
          storeModel: args.storeModel,
        ),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          AppWrapperRoute.name,
          path: '/',
          children: [
            _i9.RouteConfig(
              LoginScreenRoute.name,
              path: 'login',
              parent: AppWrapperRoute.name,
            ),
            _i9.RouteConfig(
              ForgotPassScreenRoute.name,
              path: 'forgot_password',
              parent: AppWrapperRoute.name,
            ),
            _i9.RouteConfig(
              ForgotPasswordSuccessScreenRoute.name,
              path: 'forgot_password_success',
              parent: AppWrapperRoute.name,
            ),
            _i9.RouteConfig(
              AppNavigatorRoute.name,
              path: 'home',
              parent: AppWrapperRoute.name,
            ),
            _i9.RouteConfig(
              ChangeInfoScreenRoute.name,
              path: 'change_info',
              parent: AppWrapperRoute.name,
            ),
            _i9.RouteConfig(
              ChangePasswordScreenRoute.name,
              path: 'change_pass',
              parent: AppWrapperRoute.name,
            ),
            _i9.RouteConfig(
              StoreDetailScreenRoute.name,
              path: 'change_pass',
              parent: AppWrapperRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.AppWrapper]
class AppWrapperRoute extends _i9.PageRouteInfo<void> {
  const AppWrapperRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AppWrapperRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'AppWrapperRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i9.PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({
    _i10.Key? key,
    _i11.AuthCubit? cubit,
    _i12.FormGroup? form,
  }) : super(
          LoginScreenRoute.name,
          path: 'login',
          args: LoginScreenRouteArgs(
            key: key,
            cubit: cubit,
            form: form,
          ),
        );

  static const String name = 'LoginScreenRoute';
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({
    this.key,
    this.cubit,
    this.form,
  });

  final _i10.Key? key;

  final _i11.AuthCubit? cubit;

  final _i12.FormGroup? form;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key, cubit: $cubit, form: $form}';
  }
}

/// generated route for
/// [_i3.ForgotPassScreen]
class ForgotPassScreenRoute extends _i9.PageRouteInfo<void> {
  const ForgotPassScreenRoute()
      : super(
          ForgotPassScreenRoute.name,
          path: 'forgot_password',
        );

  static const String name = 'ForgotPassScreenRoute';
}

/// generated route for
/// [_i4.ForgotPasswordSuccessScreen]
class ForgotPasswordSuccessScreenRoute extends _i9.PageRouteInfo<void> {
  const ForgotPasswordSuccessScreenRoute()
      : super(
          ForgotPasswordSuccessScreenRoute.name,
          path: 'forgot_password_success',
        );

  static const String name = 'ForgotPasswordSuccessScreenRoute';
}

/// generated route for
/// [_i5.AppNavigator]
class AppNavigatorRoute extends _i9.PageRouteInfo<void> {
  const AppNavigatorRoute()
      : super(
          AppNavigatorRoute.name,
          path: 'home',
        );

  static const String name = 'AppNavigatorRoute';
}

/// generated route for
/// [_i6.ChangeInfoScreen]
class ChangeInfoScreenRoute extends _i9.PageRouteInfo<void> {
  const ChangeInfoScreenRoute()
      : super(
          ChangeInfoScreenRoute.name,
          path: 'change_info',
        );

  static const String name = 'ChangeInfoScreenRoute';
}

/// generated route for
/// [_i7.ChangePasswordScreen]
class ChangePasswordScreenRoute extends _i9.PageRouteInfo<void> {
  const ChangePasswordScreenRoute()
      : super(
          ChangePasswordScreenRoute.name,
          path: 'change_pass',
        );

  static const String name = 'ChangePasswordScreenRoute';
}

/// generated route for
/// [_i8.StoreDetailScreen]
class StoreDetailScreenRoute
    extends _i9.PageRouteInfo<StoreDetailScreenRouteArgs> {
  StoreDetailScreenRoute({
    _i10.Key? key,
    required _i13.StoreModelResponse storeModel,
  }) : super(
          StoreDetailScreenRoute.name,
          path: 'change_pass',
          args: StoreDetailScreenRouteArgs(
            key: key,
            storeModel: storeModel,
          ),
        );

  static const String name = 'StoreDetailScreenRoute';
}

class StoreDetailScreenRouteArgs {
  const StoreDetailScreenRouteArgs({
    this.key,
    required this.storeModel,
  });

  final _i10.Key? key;

  final _i13.StoreModelResponse storeModel;

  @override
  String toString() {
    return 'StoreDetailScreenRouteArgs{key: $key, storeModel: $storeModel}';
  }
}
