import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';
import 'package:teship/data/responses/responses.dart';
import 'package:teship/features/app/models/alert_model.dart';

import '../../modules/dependency_injection/di.dart';
import '../../modules/dio/dio_client.dart';
import '../../modules/token_refresh/dio_token_refresh.dart';
import '../../utils/methods/aliases.dart';
import 'endpoint.dart';

abstract class RemoteDataSource {
  Future<DC<AlertModel, AuthenticationResponse>> login(String phone, String password);
  // Future<DC<AlertModel, OrderListResponse>> getOrderList(String storeID);
}

class RemoteDataSourceImplementer implements RemoteDataSource {
  late Dio _dioClient;

  RemoteDataSourceImplementer(this._dioClient);

  Future<DC<AlertModel, Map<String, dynamic>>> baseCall(Map<String, dynamic> data, EndPointFeatures endpoint) async {
    final dioTokenRefresh = getIt<DioTokenRefresh>();
    _dioClient = await getDio(env, dioTokenRefresh);

    logIt
      ..info('endpoint -- ${endpoint}')
      ..info('request -- ${data}');

    try {
      var result = await _dioClient.post(
        data: data,
        endpoint.url,
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

  @override
  Future<DC<AlertModel, AuthenticationResponse>> login(String phone, String password) async {

    final data = <String, dynamic>{
      'phone': phone,
      'password': password,
    };

    const endpoint = EndPointFeatures.login;
    final result = await baseCall(data, endpoint);
    final response = AuthenticationResponse.fromJson(result as Map<String, dynamic>);

    if (response.error_code != ErrorCode.E_NO_ERROR){
      final alert = AlertModel.alert(
        message: response.error_code!.errorString,
        type: AlertType.destructive,
      );
      return DC.error(alert);
    }
    return DC.data(response);

    // logIt
    //   ..info('endpoint -- ${endpoint}')
    //   ..info('request -- ${data}');
    //
    //
    // try {
    //   var result = await _dioClient.post(
    //     endpoint,
    //     data: data,
    //   );
    //
    //   logIt
    //       .info('response --${result.data}');
    //
    //   final response =  AuthenticationResponse.fromJson(result.data as Map<String, dynamic>);
    //
    //   if (response.error_code != ErrorCode.E_NO_ERROR){
    //     final alert = AlertModel.alert(
    //       message: response.error_code!.errorString,
    //       type: AlertType.destructive,
    //     );
    //     return DC.error(alert);
    //   }
    //
    //   return DC.data(response);
    //
    // } on DioError catch (e) {
    //   logIt
    //       .info('Can not call API -- ${e.error}');
    //
    //   return DC.error(AlertModel(message: e.message, type: AlertType.error));
    // }
  }

  // @override
  // Future<DC<AlertModel, OrderListResponse>> getOrderList(String storeID) async {
  //   final data = <String, dynamic>{
  //     'store_id': storeID,
  //   };
  //
  //   const endpoint = EndPointFeatures.orderList;
  //   final result = baseCall(data, endpoint);
  //   final response = OrderListResponse.fromJson(result as Map<String, dynamic>);
  //   return DC.data(response);
  // }
}