import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../data/data_source/endpoint.dart';
import '../../../modules/dependency_injection/di.dart';
import '../../../modules/dio/dio_client.dart';
import '../../../utils/methods/aliases.dart';
import '../../app/models/alert_model.dart';
import 'package:teship/data/responses/responses.dart';
import '../../../modules/token_refresh/dio_token_refresh.dart';

@lazySingleton
class ChangePasswordRepository {
  ChangePasswordRepository(this._dioClient);

  late Dio _dioClient;

  Future<DC<AlertModel, BaseResponse>> changePass({
    required String oldPass,
    required String newPass,
  }) async {
    final dioTokenRefresh = getIt<DioTokenRefresh>();
    _dioClient = await getDio(env, dioTokenRefresh);

    final endpoint = EndPointFeatures.changePass.url;

    final data = <String, dynamic>{
      'old_pwd': oldPass,
      'new_pwd': newPass,
    };

    logIt
      ..info('endpoint -- ${endpoint}')
      ..info('data -- ${data}');

    try {
      var result = await _dioClient.post(
        endpoint,
        data: data,
      );

      logIt
          .info('response --${result.data}');

      final response = BaseResponse.fromJson(result.data as Map<String, dynamic>);

      if (response.error_code == ErrorCode.E_NEW_PWD_IS_COINCIDE) {
        final errorAlert = AlertModel(message: ErrorCode.E_NEW_PWD_IS_COINCIDE.errorString, type: AlertType.error);
        return DC.error(errorAlert);
      }
      return DC.data(response);

    } on DioError catch (e) {
      logIt
          .info('Can not call API -- ${e.error}');

      return DC.error(AlertModel(message: e.message, type: AlertType.error));
    }
  }
}