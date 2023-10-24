import 'package:flutter/material.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/i18n/strings.g.dart';

import '../../../utils/methods/aliases.dart';

enum OrderShipStatusCode {
  WAITING,
  IN_PROGRESS,
  SUCCESS,
  PIECE_DELIVERED,
  NOT_SUCCESS,
  CANCEL,
  DELAY
}

extension OrderShipStatusCodeExtension on OrderShipStatusCode {
  String getText(BuildContext context) {
    switch (this) {
      case OrderShipStatusCode.WAITING:
        return context.t.strings.order_deliver.text_waiting;
      case OrderShipStatusCode.IN_PROGRESS:
        return context.t.strings.order_deliver.text_inprogress;
      case OrderShipStatusCode.SUCCESS:
        return context.t.strings.order_deliver.text_success;
      case OrderShipStatusCode.NOT_SUCCESS:
        return context.t.strings.order_deliver.text_not_success;
      case OrderShipStatusCode.PIECE_DELIVERED:
        return context.t.strings.order_deliver.text_piece_delivered;
      case OrderShipStatusCode.CANCEL:
        return context.t.strings.order_deliver.text_cancel;
      case OrderShipStatusCode.DELAY:
        return "Hẹn giao";
    }
  }
  Color getTextColor() {
    switch (this) {
      case OrderShipStatusCode.WAITING:
        return $constants.theme.defaultColorDisable;

      case OrderShipStatusCode.IN_PROGRESS:
        return Color(0xFFFFB800);

      case OrderShipStatusCode.SUCCESS:
        return Color(0xFF2EB553);

      case OrderShipStatusCode.NOT_SUCCESS:
        return Color(0xFFF5222D);

      case OrderShipStatusCode.PIECE_DELIVERED:
        return Color(0xFF2EB553);

      case OrderShipStatusCode.CANCEL:
        return Colors.black;
      case OrderShipStatusCode.DELAY :
        return Colors.deepOrange;
    }
  }

  String getRequestText() {
    switch (this) {
      case OrderShipStatusCode.WAITING:
        return 'wait';
      case OrderShipStatusCode.IN_PROGRESS:
        return 'delivering';
      case OrderShipStatusCode.SUCCESS:
        return 'success';
      case OrderShipStatusCode.NOT_SUCCESS:
        return 'fail';
      case OrderShipStatusCode.PIECE_DELIVERED:
        return 'partial_success';
      case OrderShipStatusCode.CANCEL:
        return 'cancel';
      case OrderShipStatusCode.DELAY :
        return 'delay';
    }
  }
}

OrderShipStatusCode getOrderShipStatusCode(String value) {
  switch (value) {
    case 'Chờ giao':
      return OrderShipStatusCode.WAITING;
    case 'wait':
      return OrderShipStatusCode.WAITING;
    case 'Đang giao':
      return OrderShipStatusCode.IN_PROGRESS;
    case 'delivering':
      return OrderShipStatusCode.IN_PROGRESS;
    case 'Giao thành công':
      return OrderShipStatusCode.SUCCESS;
    case 'success':
      return OrderShipStatusCode.SUCCESS;
    case 'Giao không thành công':
      return OrderShipStatusCode.NOT_SUCCESS;
    case 'fail':
      return OrderShipStatusCode.NOT_SUCCESS;
    case 'Giao một phần':
      return OrderShipStatusCode.PIECE_DELIVERED;
    case 'partial_success':
      return OrderShipStatusCode.PIECE_DELIVERED;
    case 'Đã huỷ':
      return OrderShipStatusCode.CANCEL;
    case 'cancel':
      return OrderShipStatusCode.CANCEL;
    case 'Hẹn giao':
      return OrderShipStatusCode.DELAY;
    case 'delay':
      return OrderShipStatusCode.DELAY;
    default:
      logIt
        ..info('ERROR -- Could not parse ErrorCode: $value');
      throw new ArgumentError.value(value, 'value',
          'Could not parse "ErrorCode": $value');
  }
}

