import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';
import 'package:teship/data/data_source/endpoint.dart';
import 'package:teship/data/responses/responses.dart';
import 'package:teship/modules/dio/dio_client.dart';

import '../../../modules/dependency_injection/di.dart';
import '../../../modules/dio/dio_exception_handler.dart';
import '../../../modules/token_refresh/dio_token_refresh.dart';
import '../../../utils/methods/aliases.dart';
import '../../app/models/alert_model.dart';


@lazySingleton
class StoreListRepository {
  StoreListRepository(this._dioClient);
  late Dio _dioClient;

  Future<DC<AlertModel, StoreListResponse>> getStores() async {
    return dioExceptionHandler<StoreListResponse>(() async {
      try {
        final dioTokenRefresh = getIt<DioTokenRefresh>();
        _dioClient = await getDio(env, dioTokenRefresh);

        final endpoint = EndPointFeatures.storeList.url;

        final data = <String, dynamic>{
          'offset': 0,
          'limit': 100
        };

        logIt
          ..info('endpoint -- ${endpoint}');

        Response<dynamic> result = await _dioClient.get(endpoint, queryParameters: data);

        logIt
            .info('response --${result.data}');

        final response = StoreListResponse.fromJson(result.data as Map<String, dynamic>);

        if (response.error_code != ErrorCode.E_NO_ERROR){
          final alert = AlertModel.alert(
            message: response.error_code!.errorString,
            type: AlertType.destructive,
          );
          return DC.error(alert);
        }

        return DC.data(response);
      } on DioError catch (e) {
        logIt
            .info('Can not call API -- ${e.error}');

        return DC.error(AlertModel(message: e.message, type: AlertType.error));
      }
    });
  }
}