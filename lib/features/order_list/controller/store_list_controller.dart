import 'dart:async';

import 'package:teship/features/order_list/models/order_list_data_extension.dart';
import 'package:teship/features/order_list/models/order_status_code.dart';
import 'package:teship/utils/methods/shortcuts.dart';
import 'package:flutter/material.dart';

import '../../../../i18n/strings.g.dart';
import '../presentation/order_list_screen.dart';

extension ShopOrderListController on OrderListScreenState {

  void initDataUser() async {
    final userInfo = await getUserInfo();
    final name = userInfo?.name ?? "%&%*";
    storeId = userInfo?.storeId ?? '';
    setState(() {
      greeting = context.t.strings.dashboard.greeting(name: name);
    });
  }

  void onClickReload() async {
    print("haha onClickReload");
    selectedDate = null;
    orderShipStatusCode = OrderShipStatusCode.WAITING;
    await cubit.getOrders();
  }

  Future<void> selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        currentData = allData.getAllOrderListFrom(selectedDate,orderShipStatusCode.getRequestText().toLowerCase());
      });
    }
  }
  void onChangeReportType(int index) {
    setState(() {
      orderShipStatusCode = OrderShipStatusCode.values[index];
      print("order ${orderShipStatusCode.getRequestText().toLowerCase()}");
      currentData = allData.getAllOrderListFrom(selectedDate,orderShipStatusCode.getRequestText().toLowerCase());
    });
  }


  void initData() {
    initDataUser();
    selectedDate = null;
    currentData = allData.getAllOrderListFrom(selectedDate,orderShipStatusCode.getRequestText().toLowerCase());
  }
}
