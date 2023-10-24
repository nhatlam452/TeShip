import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';
import 'package:teship/data/data_source/endpoint.dart';
import 'package:teship/data/responses/responses.dart';
import 'package:teship/modules/dio/dio_client.dart';

import '../../../../modules/dio/dio_exception_handler.dart';
import '../../../modules/dependency_injection/di.dart';
import '../../../modules/token_refresh/dio_token_refresh.dart';
import '../../../utils/methods/aliases.dart';
import '../../app/models/alert_model.dart';
@lazySingleton
class ShopOrderListRepository {
  ShopOrderListRepository(this._dioClient);
  late Dio _dioClient;
  Future<DC<AlertModel, OrderListResponse>> getOrders(String storeID) async {
    return dioExceptionHandler<OrderListResponse>(() async {
      try {
        final dioTokenRefresh = getIt<DioTokenRefresh>();
        _dioClient = await getDio(env, dioTokenRefresh);

        final endpoint = EndPointFeatures.orderList.url;
        final data = <String, dynamic>{
          'store_id': storeID,
          'offset': 0,
          'limit': 100
        };

        logIt
          ..info('endpoint -- ${endpoint}')
          ..info('request -- ${data}');


        var result = await _dioClient.get(endpoint, queryParameters: data);

        final response = OrderListResponse.fromJson(result.data as Map<String, dynamic>);

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
