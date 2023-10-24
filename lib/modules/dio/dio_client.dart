import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:teship/features/app/models/env_model.dart';
import 'package:teship/modules/dio/interceptors/api_error_interceptor.dart';
import 'package:teship/modules/dio/interceptors/bad_network_error_interceptor.dart';
import 'package:teship/modules/dio/interceptors/internal_server_error_interceptor.dart';
import 'package:teship/modules/dio/interceptors/unathenticated_interceptor.dart';
import 'package:teship/modules/token_refresh/dio_token_refresh.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:sentry_dio/sentry_dio.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/utils/methods/aliases.dart';
import 'package:teship/utils/methods/shortcuts.dart';
import 'package:universal_platform/universal_platform.dart';

import '../../utils/helpers/bar_helper.dart';

Dio initDioClient(
  EnvModel env,
  DioTokenRefresh dioTokenRefresh
    ) {
  final dio = Dio();

  if (UniversalPlatform.isAndroid || UniversalPlatform.isIOS) {
    /// Allows https requests for older devices.
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;

      return client;
    };
  }

  dio.options.baseUrl = env.restApiUrl;
  dio.options.headers['Accept-Language'] =
      UniversalPlatform.isWeb ? 'en-US' : Platform.localeName.substring(0, 2);
  dio.options.connectTimeout = const Duration(seconds: 10).inMilliseconds;
  dio.options.receiveTimeout = const Duration(seconds: 10).inMilliseconds;
  dio.interceptors.add(dioTokenRefresh.fresh);
  dio.interceptors.add(BadNetworkErrorInterceptor());
  dio.interceptors.add(InternalServerErrorInterceptor());
  dio.interceptors.add(ApiErrorInterceptor());
  dio.interceptors.add(UnauthenticatedInterceptor());
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) async {
      var connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult == ConnectivityResult.none) {
        return handler.reject(DioError(requestOptions: options, error: 'Không kết nối Internet!'));
      }
      return handler.next(options);
    },
  ));
  // Sentrie's performance tracing, http breadcrumbs and
  // automatic recording of bad http requests for dio.
  dio.addSentry();

  if (env.debugApiClient) {
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    );
  }
  // dio.interceptors.add(
  //   PrettyDioLogger(
  //     requestHeader: true,
  //     requestBody: true,
  //     responseHeader: true,
  //   ),
  // );

  return dio;
}

const String APPLICATION_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String ACCEPT = "Accept";
const String AUTHORIZATION = "Authorization";
const String DEFAULT_LANGUAGE = "language";


Future<Dio> getDio(
    EnvModel env,
    DioTokenRefresh dioTokenRefresh
    ) async {
  final dio = Dio();

  if (UniversalPlatform.isAndroid || UniversalPlatform.isIOS) {
    /// Allows https requests for older devices.
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;

      return client;
    };
  }

  final _timeOut = const Duration(seconds: 10).inMilliseconds;
  final tokens = await dioTokenRefresh.fresh.token;
  final headers = {
    CONTENT_TYPE: APPLICATION_JSON,
    ACCEPT: '*/*',
    AUTHORIZATION: 'Bearer ${tokens?.accessToken ?? ''}',
  };

  dio.options = BaseOptions(
      baseUrl: env.restApiUrl,
      connectTimeout: _timeOut,
      receiveTimeout: _timeOut,
      headers: headers,
  );

  dio.interceptors.add(BadNetworkErrorInterceptor());
  dio.interceptors.add(InternalServerErrorInterceptor());
  dio.interceptors.add(ApiErrorInterceptor());
  dio.interceptors.add(UnauthenticatedInterceptor());
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) async {
      final connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult == ConnectivityResult.none) {
        return handler.reject(DioError(requestOptions: options, error: 'Không kết nối Internet!'));
      }

      return handler.next(options);
    },
  ));
  // Sentrie's performance tracing, http breadcrumbs and
  // automatic recording of bad http requests for dio.
  dio.addSentry();

  if (env.debugApiClient) {
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    );
  }
  // dio.interceptors.add(
  //   PrettyDioLogger(
  //     requestHeader: true,
  //     requestBody: true,
  //     responseHeader: true,
  //   ),
  // );

  return dio;
}