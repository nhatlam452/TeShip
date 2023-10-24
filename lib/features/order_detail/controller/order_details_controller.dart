import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teship/features/order_detail/blocs/get_order_details_cubit.dart';
import 'package:teship/utils/methods/shortcuts.dart';
import '../../../data/responses/responses.dart';
import '../../../utils/helpers/bar_helper.dart';
import '../../app/models/alert_model.dart';
import '../../app/widgets/bar/bar.dart';
import '../../app/widgets/customs/base_alert_dialog.dart';
import '../../order_list/models/order_status_code.dart';
import '../presentation/details_order_screen.dart';
import 'package:teship/i18n/strings.g.dart';

extension OrderDetailsScreenExtension on DetailsOrderScreenState {
  Future<void> handleRefreshStart() {
    cubit.getOrderDetail(widget.id);
    return refreshCompleter.future;
  }

  void handleRefreshEnd() {
    refreshCompleter.complete();
    refreshCompleter = Completer();
  }

  String getTextInButtonByStatus(String status) {
    if (getOrderShipStatusCode(status) == OrderShipStatusCode.WAITING) {
      return context.t.strings.details_order.text_cancel_order;
    } else if (getOrderShipStatusCode(status) ==
        OrderShipStatusCode.NOT_SUCCESS) {
      return context.t.strings.details_order.text_order_ship_not_success;
    } else {
      return context.t.strings.details_order.text_order_ship_in_progress;
    }
  }

  void clickChangeStatusCANCEL() {
    var baseDialog = BaseAlertDialog(
      content: context.t.strings.details_order.text_message_cancel_order,
      yesOnPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
        cubit.updateOrder(widget.id);
      },
      cancelOnPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
      },
    );
    showDialog(context: context, builder: (BuildContext context) => baseDialog);
  }

  void clickValidateShip() {
    final baseDialog = BaseAlertDialog(
      content: context.t.strings.details_order.text_message_update_order,
      yesOnPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
        cubit.updateStatusSHIPOrder(
            widget.id,
            orderStatusCode ?? OrderShipStatusCode.WAITING,
            (orderStatusCode == OrderShipStatusCode.NOT_SUCCESS || orderStatusCode == OrderShipStatusCode.DELAY)
                ? reasonShipForm.control('reason').value.toString()
                : null,
            (orderStatusCode == OrderShipStatusCode.PIECE_DELIVERED)
                ? reasonShipForm.getDoubleValue('piece_delivered_amount')
                : null,
        );
      },
      cancelOnPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
      },
    );
    showDialog(context: context, builder: (BuildContext context) => baseDialog);
  }

  void updateFailSuccess(BaseResponse response) {
    handleRefreshEnd();
    if (response.error_code == ErrorCode.E_NO_ERROR) {
      widget.onRemoveOrder(widget.id);

      BarHelper.showAlert(
        context,
        barPosition: BarPosition.top,
        alert: AlertModel.alert(
          message: context.t.strings.details_order.text_cancel_order_success,
          type: AlertType.constructive,
        ),
        isTest: false,
      );
    }
  }

  void updateStatusSHIPSuccess(BaseResponse response) {
    handleRefreshEnd();
    if (response.error_code == ErrorCode.E_NO_ERROR) {
      widget.onBackToShopListOrder();

      BarHelper.showAlert(
        context,
        barPosition: BarPosition.top,
        alert: AlertModel.alert(
          message: context.t.strings.details_order.text_update_order_success,
          type: AlertType.constructive,
        ),
        isTest: false,
      );
    }
  }
}
