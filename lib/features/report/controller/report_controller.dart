
import 'dart:async';

import '../models/report_type.dart';
import '../presentation/report_screen.dart';

extension ReportScreenStateExtension on ReportScreenState {
  Future<void> handleRefreshStart() {
    cubit.getReportShop(reportDataType);
    return refreshCompleter.future;
  }

  void handleRefreshEnd() {
    refreshCompleter.complete();
    refreshCompleter = Completer();
  }

  void onChangeReportType(int index) {
    setState(() {
      reportDataType = ReportType.values[index];
      cubit.getReportShop(reportDataType);
    });
  }
} 