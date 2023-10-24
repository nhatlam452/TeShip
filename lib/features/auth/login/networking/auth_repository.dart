import 'dart:async';

import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';
import 'package:teship/features/app/models/alert_model.dart';
import 'package:teship/features/app/models/auth_model.dart';
import 'package:teship/features/app/models/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:teship/modules/dependency_injection/di.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:teship/features/auth/login/models/user_jwt_model.dart';
import 'package:hive/hive.dart';

import '../../../../data/data_source/endpoint.dart';
import '../../../../data/responses/responses.dart';
import '../../../../modules/dio/dio_client.dart';
import '../../../../modules/token_refresh/dio_token_refresh.dart';
import '../../../../utils/methods/aliases.dart';
import '../../../../utils/methods/shortcuts.dart';

@lazySingleton
class AuthRepository {
  AuthRepository(this._dioClient);

  late Dio _dioClient;

  Future<DC<AlertModel, AuthModel>> login({
    required String username,
    required String password,
    required String deviceToken,
  }) async {

    final dioTokenRefresh = getIt<DioTokenRefresh>();
    _dioClient = await getDio(env, dioTokenRefresh);

    final data = <String, dynamic>{
      'phone': username,
      'password': password,
      'device_token': deviceToken,
    };

    final endpoint = EndPointFeatures.login.url;

    logIt
      ..info('endpoint -- ${endpoint}')
      ..info('request -- ${data}');


    try {
      var result = await _dioClient.post(
        endpoint,
        data: data,
      );

      logIt
          .info('response --${result.data}');

      // return response.data;
      final response = AuthenticationResponse.fromJson(result.data as Map<String, dynamic>);

      if (response.error_code != ErrorCode.E_NO_ERROR){
        final alert = AlertModel.alert(
          message: response.error_code!.errorString,
          type: AlertType.destructive,
        );
        return DC.error(alert);
      }

      final jwt = JWT.decode(response.data?.token ?? '');

      print("""
      decode JWT: \n${jwt.payload}
      """);
      //store data user to Hive
      final userJWT = UserJWTModel.fromJson(jwt.payload as Map<String, dynamic>);
      //
      final userInfoBox = await Hive.openBox('userInfo');
      userInfoBox.put('phone', userJWT.payload.phone);
      userInfoBox.put('email', userJWT.payload.email);
      userInfoBox.put('store_id', userJWT.payload.store_id);
      userInfoBox.put('store_code', userJWT.payload.store_code);
      userInfoBox.put('name', userJWT.payload.name);
      userInfoBox.put('address', userJWT.payload.address);
      userInfoBox.put('permission', userJWT.payload.permission);


      await userInfoBox.close();

      final user = UserModel(
        id: userJWT.payload.store_id,
        phone: userJWT.payload.phone,
        email: userJWT.payload.email,
        storeId: userJWT.payload.store_id,
        storeCode: userJWT.payload.store_code,
        name: userJWT.payload.name,
        address: userJWT.payload.address,
        permission: userJWT.payload.permission,
      );

      final auth = AuthModel(
        tokenType: 'Bearer ',
        accessToken: response.data?.token ?? '',
        refreshToken: response.data?.refreshToken ?? '',
        user: user,
      );

      return DC.data(auth);

    } on DioError catch (e) {
      logIt
          .info('Can not call API -- ${e.error}');

      return DC.error(AlertModel(message: e.message, type: AlertType.error));
    }
  }

  Future<DC<AlertModel, void>> logout({required AuthModel auth}) async {
    try {
      // TODO: Implement custom logout operation with auth model.
      return DC.data(null);
    } on DioError catch (e) {
      logIt
          .info('Can not call API -- ${e.error}');

      return DC.error(AlertModel(message: e.message, type: AlertType.error));
    }
  }
}
