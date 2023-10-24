import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';
import 'package:teship/data/responses/responses.dart';
import 'package:teship/modules/dependency_injection/di.dart';
import 'package:teship/modules/dio/dio_client.dart';
import 'package:teship/modules/token_refresh/dio_token_refresh.dart';
import 'package:teship/utils/methods/aliases.dart';

import '../../features/app/models/alert_model.dart';

class ApiProvider {
  late final Dio _dioClient;
  ApiProvider(this._dioClient);

  Future<dynamic> get(String endpoint, {Map<String, dynamic>? queryParameters}) async {
    final response = await _dioClient.get(
      endpoint,
      queryParameters: queryParameters,
    );
    return response.data;
  }

  Future<dynamic> postNotHeader(String endpoint, {Map<String, dynamic>? data}) async {

    logIt
      ..info('endpoint -- ${endpoint}')
      ..info('request -- ${data}');

    try {
      var response = await _dioClient.post(
       endpoint,
        data: data,
      );

      logIt
        .info('response --${response.data}');

      return response.data;
    } on DioError catch (e) {
      logIt
        .info('Can not call API -- ${e.error}');

      throw Exception(e.message);
    }
  }

  Future<DC<AlertModel, dynamic>> postTEST(String endpoint, {Map<String, dynamic>? data}) async {
    DioTokenRefresh dioTokenRefresh = getIt<DioTokenRefresh>();
    _dioClient = await getDio(env, dioTokenRefresh);
    logIt
      ..info('endpoint -- ${endpoint}')
      ..info('request -- ${data}');

    try {
      var result = await _dioClient.post(
        endpoint,
        data: data,
      );

      final baseResponse = BaseResponse.fromJson(result.data as Map<String, dynamic>);

      if (baseResponse.error_code != ErrorCode.E_NO_ERROR){
        final alert = AlertModel.alert(
          message: baseResponse.error_code!.errorString,
          type: AlertType.destructive,
        );
        return DC.error(alert);
      }

    logIt
        .info('response --${result.data}');

    return DC.data(result.data);

  } on DioError catch (e) {
      logIt
          .info('Can not call API -- ${e.error}');

      return DC.error(AlertModel(message: e.message, type: AlertType.error));
    }
  }
}