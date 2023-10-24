// ignore: eol_at_end_of_file

import 'package:teship/data/responses/responses.dart';
import 'package:teship/features/order_list/models/order_status_code.dart';
import 'package:teship/utils/methods/shortcuts.dart';

extension OrderListDataProgress on List<OrderResponse> {
  List<double> getAllEpochTimeString() {
    return this.map((order) => order.createdTime.wrappedValue()).toList();
  }

  List<DateTime> getAllDateTime() {
    final arrEpochTimeString = this.getAllEpochTimeString();
    return arrEpochTimeString
        .map((epochTime) => epochTime.toDateTime())
        .toList();
  }

  List<OrderResponse> getAllOrderListFrom(DateTime? dateNow, String? status) {
    return where((order) {
      if (dateNow == null || status == null) {
        if (dateNow == null) {
          return order.status == status;
        }
        if (status == null) {
          return order.createdTime.wrappedValue().toDateTime().day ==
                  dateNow.day &&
              order.createdTime.wrappedValue().toDateTime().month ==
                  dateNow.month &&
              order.createdTime.wrappedValue().toDateTime().year ==
                  dateNow.year;
        }
      }
      return order.createdTime.wrappedValue().toDateTime().day == dateNow.day &&
          order.createdTime.wrappedValue().toDateTime().month ==
              dateNow.month &&
          order.createdTime.wrappedValue().toDateTime().year == dateNow.year &&
          order.status == status;
    }).toList();
  }
}

extension OrderResponseExtension on OrderResponse? {
  OrderResponse wrappedValue() {
    return this == null
        ? OrderResponse(
            '',
            '',
            DateTime.now().microsecondsSinceEpoch.toDouble(),
            '',
            '',
            10000,
            'wait',
            '',
            '',
            OrderType.NORMAL,
            '',
            20000,
            '')
        : this!;
  }
}
