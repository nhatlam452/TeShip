import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:teship/features/report/models/report_type.dart';

import '../../../data/data_source/endpoint.dart';
import '../../../modules/dependency_injection/di.dart';
import '../../../modules/dio/dio_client.dart';
import '../../../modules/token_refresh/dio_token_refresh.dart';
import '../../../utils/methods/aliases.dart';
import '../../app/models/alert_model.dart';
import 'package:teship/data/responses/responses.dart';

@lazySingleton
class ReportRepository {
  ReportRepository(this._dioClient);

  late Dio _dioClient;

  Future<DC<AlertModel, ReportResponse>> getReportShop({
    required String storeId,
    required String startDate,
    required String? endDate,
  }) async {

    final dioTokenRefresh = getIt<DioTokenRefresh>();
    _dioClient = await getDio(env, dioTokenRefresh);

    final endpoint = EndPointFeatures.reportShop.url;

    final data = <String, dynamic>{
      '_id': storeId,
      'date': startDate
    };
    if (endDate != null){
      data['end_date'] = endDate;
    }

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

      final response = ReportResponse.fromJson(result.data as Map<String, dynamic>);

      print("REPORT error: ${response.error_code}");
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
  }

  Future<DC<AlertModel, ReportResponse>> getReportShip({
    required String startDate,
    required String? endDate,
  }) async {

    final dioTokenRefresh = getIt<DioTokenRefresh>();
    _dioClient = await getDio(env, dioTokenRefresh);

    final endpoint = EndPointFeatures.reportShip.url;

    final data = <String, dynamic>{
      'date': startDate
    };
    if (endDate != null){
      data['end_date'] = endDate;
    }

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

      final response = ReportResponse.fromJson(result.data as Map<String, dynamic>);

      print("REPORT error: ${response.error_code}");
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
  }
}