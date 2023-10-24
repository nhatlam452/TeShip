import 'package:teship/i18n/strings.g.dart';
import 'package:flutter/material.dart';

enum ReportType {
  TODAY, YESTERDAY, IN_WEEK
}

extension ReportTypeString on ReportType {
  String text(BuildContext context) {
    switch(this){
      case ReportType.TODAY:
        return context.t.strings.report.text_today;
      case ReportType.YESTERDAY:
        return context.t.strings.report.text_yesterday;
      case ReportType.IN_WEEK:
        return context.t.strings.report.text_seven_day;
    }
  }
}