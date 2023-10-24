import 'package:flutter/material.dart';
import 'package:teship/i18n/strings.g.dart';

enum StepCreateOrder {
  infoCustomer,
  infoOrder,
  // confirm,
}

extension StepCreateOrderExtension on StepCreateOrder {
  String textInBtn(BuildContext context){
    switch (this) {
      case StepCreateOrder.infoCustomer:
        return context.t.strings.create_order.text_continue;
      case StepCreateOrder.infoOrder:
        return context.t.strings.create_order.title;
      // case StepCreateOrder.confirm:
      //   return "";
    }
  }
}