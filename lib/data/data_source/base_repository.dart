import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:teship/data/responses/responses.dart';

import '../../features/app/models/alert_model.dart';
import '../../modules/dependency_injection/di.dart';
import '../../modules/dio/dio_client.dart';
import '../../modules/token_refresh/dio_token_refresh.dart';
import '../../utils/methods/aliases.dart';
import 'endpoint.dart';

@lazySingleton
class BaseRepository {
  BaseRepository(this._dioClient);

  late Dio _dioClient;

  Future<DC<AlertModel, Map<String, dynamic>>> post({
    Map<String, dynamic>? request,
    required EndPointFeatures endpoint,
  }) async {
    final dioTokenRefresh = getIt<DioTokenRefresh>();
    _dioClient = await getDio(env, dioTokenRefresh);

    logIt
      ..info('endpoint -- ${endpoint.url}')
      ..info('data -- ${request}');

    try {
      var result = await _dioClient.post(
        endpoint.url,
        data: request,
      );

      logIt
          .info('response --${result.data}');

      return DC.data(result.data as Map<String, dynamic>);

    } on DioError catch (e) {
      logIt
          .info('Can not call API -- ${e.error}');

      return DC.error(AlertModel(message: e.message, type: AlertType.error));
    }
  }
}