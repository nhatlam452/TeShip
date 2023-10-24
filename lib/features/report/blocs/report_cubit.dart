import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teship/features/report/models/report_type.dart';
import '../../../data/responses/responses.dart';
import '../../../modules/dependency_injection/di.dart';
import '../../../utils/methods/shortcuts.dart';
import '../../app/blocs/app_cubit.dart';
import '../../app/models/alert_model.dart';
import '../networking/report_repository.dart';

part 'report_cubit.freezed.dart';
part 'report_state.dart';

@lazySingleton
class ReportCubit extends Cubit<ReportState> {
  ReportCubit(this._reportRepository)
      : super(const ReportState.loading());

  final ReportRepository _reportRepository;

  Future<void> getReportShop(ReportType reportType) async {
    emit(const ReportState.loading());

    final userInfo = await getUserInfo();
    final storeId = userInfo?.storeId ?? '';
    if(userInfo == null) {
      final authError = AlertModel.alert(
        message: ErrorCode.E_USER_AUTH.errorString,
        type: AlertType.destructive,
      );
      emit(ReportState.failed(alert: authError));
    }

    //yesterday thì lấy hôm qua còn 'hôm nay', '7 ngày qua' thì ngày hôm nay
    var startDate = '';
    String? endDate;
    switch (reportType) {
      case ReportType.TODAY:
        startDate = getNowDayYYYYMMDD();
        break;
      case ReportType.YESTERDAY:
        startDate = getYesterdayYYYYMMDD();
        break;
      case ReportType.IN_WEEK:
        startDate = getSevenDayPastNowYYYYMMDD();
        endDate = getTomorrowYYYYMMDD();
        break;
    }
    // (reportType != ReportType.YESTERDAY) ? getNowDayYYYYMMDD() : getYesterdayYYYYMMDD() ;
    // String? endDate = (reportType == ReportType.IN_WEEK) ? getSevenDayPastNowYYYYMMDD() : null;

    final data = <String, dynamic>{
      '_id': storeId,
      'date': startDate,
    };

    if(endDate != null) {
      data['end_day'] = endDate;
    }

    print("Test report: data: ${data}");

    final response = (getIt<AppCubit>().state.isShopMode) ? await _reportRepository.getReportShop(
        storeId: storeId,
        startDate: startDate,
        endDate: endDate)
    : await _reportRepository.getReportShip(startDate: startDate, endDate: endDate);

    response.pick(
      onError: (error) {
        emit(ReportState.failed(alert: error));
      },
      onData: (response) {
        emit(ReportState.success(response: response));
      },
    );
  }

}