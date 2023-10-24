import 'package:dio/dio.dart';
import 'package:teship/modules/dio/dio_client.dart';
import 'package:teship/modules/token_refresh/dio_token_refresh.dart';
import 'package:injectable/injectable.dart';
import 'package:teship/features/app/models/env_model.dart';

@module
abstract class DioInjection {
  Dio dio(EnvModel env, DioTokenRefresh dioTokenRefresh) => initDioClient(env, dioTokenRefresh);
}
