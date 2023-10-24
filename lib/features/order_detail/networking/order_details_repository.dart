import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:teship/data/responses/responses.dart';
import 'package:teship/utils/methods/shortcuts.dart';

import '../../../../modules/dio/dio_exception_handler.dart';
import '../../../data/data_source/endpoint.dart';
import '../../../modules/dependency_injection/di.dart';
import '../../../modules/dio/dio_client.dart';
import '../../../modules/token_refresh/dio_token_refresh.dart';
import '../../../utils/methods/aliases.dart';
import '../../app/models/alert_model.dart';
import '../../order_list/models/order_status_code.dart';

@lazySingleton
class GetOrderDetailsRepository {
  GetOrderDetailsRepository(this._dioClient);

  late Dio _dioClient;
  Future<DC<AlertModel, OrderDetailsDataResponse>> getData(String orderId) async {
    return dioExceptionHandler<OrderDetailsDataResponse>(() async {
      try {
        final dioTokenRefresh = getIt<DioTokenRefresh>();
        _dioClient = await getDio(env, dioTokenRefresh);

        final data = <String, dynamic>{
          'id': orderId,
        };

        print('Header -- ${_dioClient.options.headers}');

        final result = await _dioClient.get(EndPointFeatures.orderDetail.url, queryParameters: data);

        final response = OrderDetailsResponse.fromJson(result.data as Map<String, dynamic>);

        print("HAHA response: ${response.toJson()}");

        if (response.error_code != ErrorCode.E_NO_ERROR){
          final alert = AlertModel.alert(
            message: response.error_code!.errorString,
            type: AlertType.destructive,
          );
          return DC.error(alert);
        }

        return DC.data(response.data as OrderDetailsDataResponse?);
      } catch (e) {
        return DC.error(AlertModel(message: e.toString(),type: AlertType.error));
      }
    });
  }

  Future<DC<AlertModel, BaseResponse>> updateFailOrder({
    required String orderId
  }) async {

    final dioTokenRefresh = getIt<DioTokenRefresh>();
    _dioClient = await getDio(env, dioTokenRefresh);

    final endpoint = EndPointFeatures.updateOrder.url;

    final data = <String, dynamic>{
      '_id': orderId,
      'status': OrderShipStatusCode.CANCEL.getRequestText()
    };


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

      final response = BaseResponse.fromJson(result.data as Map<String, dynamic>);

      return DC.data(response);

    } on DioError catch (e) {
      logIt
          .info('Can not call API -- ${e.error}');

      return DC.error(AlertModel(message: e.message, type: AlertType.error));
    }
  }


  Future<DC<AlertModel, BaseResponse>> updateStatusSHIP({
    required String orderId,required OrderShipStatusCode statusCode,String? message, double? totalAmount,
  }) async {

    final dioTokenRefresh = getIt<DioTokenRefresh>();
    _dioClient = await getDio(env, dioTokenRefresh);

    final endpoint = EndPointFeatures.updateOrder.url;


    final data = <String, dynamic>{
      '_id': orderId,
      'status': statusCode.getRequestText(),
    };

    if (statusCode == OrderShipStatusCode.NOT_SUCCESS || statusCode == OrderShipStatusCode.DELAY){
      data['message'] = message ?? '';
    }
    if (statusCode == OrderShipStatusCode.PIECE_DELIVERED){
      data['total_amount'] = totalAmount ?? 0 ;
    }

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

      final response = BaseResponse.fromJson(result.data as Map<String, dynamic>);

      return DC.data(response);

    } on DioError catch (e) {
      logIt
          .info('Can not call API -- ${e.error}');

      return DC.error(AlertModel(message: e.message, type: AlertType.error));
    }
  }
}
