import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:teship/features/create_order/models/order_model.dart';

import '../../../data/data_source/endpoint.dart';
import '../../../modules/dependency_injection/di.dart';
import '../../../modules/dio/dio_client.dart';
import '../../../modules/token_refresh/dio_token_refresh.dart';
import '../../../utils/methods/aliases.dart';
import '../../app/models/alert_model.dart';
import 'package:teship/data/responses/responses.dart';


@lazySingleton
class CreateOrderRepository {
  CreateOrderRepository(this._dioClient);

  late Dio _dioClient;

  Future<DC<AlertModel, BaseResponse>> createOrder({
    required OrderModel request,
  }) async {

    final dioTokenRefresh = getIt<DioTokenRefresh>();
    _dioClient = await getDio(env, dioTokenRefresh);

    final endpoint = EndPointFeatures.createOrder.url;

    final data = request.toRequestModel();

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

      return DC.data(response);

    } on DioError catch (e) {
      logIt
          .info('Can not call API -- ${e.error}');

      return DC.error(AlertModel(message: e.message, type: AlertType.error));
    }
  }
}