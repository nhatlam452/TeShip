// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i13;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:fresh_dio/fresh_dio.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i7;
import 'package:teship/data/data_source/base_repository.dart' as _i19;
import 'package:teship/features/app/blocs/app_cubit.dart' as _i3;
import 'package:teship/features/app/models/auth_model.dart' as _i10;
import 'package:teship/features/app/models/env_model.dart' as _i5;
import 'package:teship/features/auth/login/blocs/auth_cubit.dart' as _i26;
import 'package:teship/features/auth/login/networking/auth_repository.dart'
    as _i18;
import 'package:teship/features/change_password/blocs/change_password_cubit.dart'
    as _i27;
import 'package:teship/features/change_password/networking/change_password_repository.dart'
    as _i20;
import 'package:teship/features/create_order/blocs/create_order_cubit.dart'
    as _i28;
import 'package:teship/features/create_order/networking/create_order_repository.dart'
    as _i21;
import 'package:teship/features/order_detail/blocs/get_order_details_cubit.dart'
    as _i22;
import 'package:teship/features/order_detail/networking/order_details_repository.dart'
    as _i14;
import 'package:teship/features/order_list/blocs/get_order_list_cubit.dart'
    as _i23;
import 'package:teship/features/order_list/networking/order_list_repository.dart'
    as _i16;
import 'package:teship/features/report/blocs/report_cubit.dart' as _i24;
import 'package:teship/features/report/networking/report_repository.dart'
    as _i15;
import 'package:teship/features/store_list/blocs/store_list_cubit.dart' as _i25;
import 'package:teship/features/store_list/networking/store_list_repository.dart'
    as _i17;
import 'package:teship/modules/dependency_injection/dio_client_di.dart' as _i30;
import 'package:teship/modules/dependency_injection/network_info_di.dart'
    as _i32;
import 'package:teship/modules/dependency_injection/router_di.dart' as _i29;
import 'package:teship/modules/dependency_injection/secure_storage_di.dart'
    as _i31;
import 'package:teship/modules/secure_storage/secure_auth_storage.dart' as _i11;
import 'package:teship/modules/token_refresh/dio_token_refresh.dart' as _i12;
import 'package:teship/utils/helpers/logging_helper.dart' as _i8;
import 'package:teship/utils/router.gr.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final routerInjection = _$RouterInjection();
    final secureStorageInjection = _$SecureStorageInjection();
    final networkInfoInjection = _$NetworkInfoInjection();
    final dioInjection = _$DioInjection();
    gh.lazySingleton<_i3.AppCubit>(() => _i3.AppCubit());
    gh.factory<_i4.AppRouter>(() => routerInjection.router());
    await gh.singletonAsync<_i5.EnvModel>(
      () => _i5.EnvModel.create(),
      preResolve: true,
    );
    gh.factory<_i6.FlutterSecureStorage>(
        () => secureStorageInjection.storage());
    gh.factory<_i7.InternetConnectionCheckerPlus>(
        () => networkInfoInjection.networkInfo);
    gh.singleton<_i8.LoggingHelper>(_i8.LoggingHelper());
    gh.lazySingleton<_i9.TokenStorage<_i10.AuthModel>>(
        () => _i11.SecureAuthStorage(gh<_i6.FlutterSecureStorage>()));
    gh.lazySingleton<_i12.DioTokenRefresh>(
        () => _i12.DioTokenRefresh(gh<_i9.TokenStorage<_i10.AuthModel>>()));
    gh.factory<_i13.Dio>(() => dioInjection.dio(
          gh<_i5.EnvModel>(),
          gh<_i12.DioTokenRefresh>(),
        ));
    gh.lazySingleton<_i14.GetOrderDetailsRepository>(
        () => _i14.GetOrderDetailsRepository(gh<_i13.Dio>()));
    gh.lazySingleton<_i15.ReportRepository>(
        () => _i15.ReportRepository(gh<_i13.Dio>()));
    gh.lazySingleton<_i16.ShopOrderListRepository>(
        () => _i16.ShopOrderListRepository(gh<_i13.Dio>()));
    gh.lazySingleton<_i17.StoreListRepository>(
        () => _i17.StoreListRepository(gh<_i13.Dio>()));
    gh.lazySingleton<_i18.AuthRepository>(
        () => _i18.AuthRepository(gh<_i13.Dio>()));
    gh.lazySingleton<_i19.BaseRepository>(
        () => _i19.BaseRepository(gh<_i13.Dio>()));
    gh.lazySingleton<_i20.ChangePasswordRepository>(
        () => _i20.ChangePasswordRepository(gh<_i13.Dio>()));
    gh.lazySingleton<_i21.CreateOrderRepository>(
        () => _i21.CreateOrderRepository(gh<_i13.Dio>()));
    gh.lazySingleton<_i22.GetOrderDetailsCubit>(
        () => _i22.GetOrderDetailsCubit(gh<_i14.GetOrderDetailsRepository>()));
    gh.factory<_i23.GetOrderListCubit>(
        () => _i23.GetOrderListCubit(gh<_i16.ShopOrderListRepository>()));
    gh.lazySingleton<_i24.ReportCubit>(
        () => _i24.ReportCubit(gh<_i15.ReportRepository>()));
    gh.factory<_i25.StoreListCubit>(
        () => _i25.StoreListCubit(gh<_i17.StoreListRepository>()));
    gh.lazySingleton<_i26.AuthCubit>(() => _i26.AuthCubit(
          gh<_i18.AuthRepository>(),
          gh<_i12.DioTokenRefresh>(),
        ));
    gh.lazySingleton<_i27.ChangePasswordCubit>(
        () => _i27.ChangePasswordCubit(gh<_i20.ChangePasswordRepository>()));
    gh.lazySingleton<_i28.CreateOrderCubit>(
        () => _i28.CreateOrderCubit(gh<_i21.CreateOrderRepository>()));
    return this;
  }
}

class _$RouterInjection extends _i29.RouterInjection {}

class _$DioInjection extends _i30.DioInjection {}

class _$SecureStorageInjection extends _i31.SecureStorageInjection {}

class _$NetworkInfoInjection extends _i32.NetworkInfoInjection {}
