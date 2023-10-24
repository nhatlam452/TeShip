import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teship/features/app/models/alert_model.dart';
import 'package:teship/features/auth/login/networking/auth_repository.dart';
import 'package:teship/modules/token_refresh/dio_token_refresh.dart';
import 'package:teship/features/app/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fresh_graphql/fresh_graphql.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:teship/utils/methods/shortcuts.dart';

import '../../../../data/responses/responses.dart';
import '../../../../modules/dependency_injection/di.dart';
import '../../../app/blocs/app_cubit.dart';

part 'auth_cubit.freezed.dart';

part 'auth_state.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authRepository, this._dioTokenRefresh)
      : super(const AuthState.loading()) {
    _dioTokenRefresh.fresh.authenticationStatus.listen((event) async {
      switch (event) {
        case AuthenticationStatus.initial:
          emit(const AuthState.unauthenticated());
          break;
        case AuthenticationStatus.unauthenticated:
          emit(const AuthState.unauthenticated());
          break;
        case AuthenticationStatus.authenticated:
          final auth = await _dioTokenRefresh.fresh.token;
          final userInfo = await getUserInfo();
          final userPermission = $PermissionUserFromJson(userInfo?.permission.wrappedValue() ?? '');
          getIt<AppCubit>().changeMode(
            isShopMode: userPermission == PermissionUser.SHOP,
          );
          print("DEBUG:AuthCubit authenticated: ${auth!.user.toJson()}");
          emit(AuthState.authenticated(user: auth!.user));
          break;
      }
    });
  }

  final AuthRepository _authRepository;
  final DioTokenRefresh _dioTokenRefresh;

  Future<void> login({
    required String username,
    required String password,
  }) async {
    print("DEBUG: AuthCubit : username: $username");

    emit(const AuthState.loading());
    final String deviceToken = await getNotificationToken() ?? '';
    final response = await _authRepository.login(
      username: username,
      password: password,
      deviceToken: deviceToken,
    );

    response.pick(
      onError: (alert) => emit(AuthState.failed(alert: alert)),
      onData: (auth) async {
        await _dioTokenRefresh.fresh.setToken(auth);

        // Change Permision
        final userInfo = await getUserInfo();
        final userPermission = $PermissionUserFromJson(userInfo?.permission.wrappedValue() ?? '');
        getIt<AppCubit>().changeMode(
          isShopMode: userPermission == PermissionUser.SHOP,
        );
      },
    );
  }

  Future<void> logOut() async {
    if (state is _AuthAuthenticatedState) {
      final previousState = state;
      emit(const AuthState.loading());

      final tokens = await _dioTokenRefresh.fresh.token;
      final response = await _authRepository.logout(auth: tokens!);

      response.pick(
        onError: (alert) {
          emit(AuthState.failed(alert: alert));
          emit(previousState);
        },
        onNoData: () async {
          await _dioTokenRefresh.fresh.clearToken();
          await clearUserInfo();
          getIt<AppCubit>().changePageIndex(index: 0);
          Sentry.configureScope((scope) {
            scope.setUser(null);
          });
        },
      );
    }
  }
}
