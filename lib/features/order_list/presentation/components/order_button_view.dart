import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:teship/features/order_list/models/order_status_code.dart';
import 'package:teship/features/report/models/report_type.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/utils/methods/shortcuts.dart';

class OrderButtonView extends StatefulWidget {
  const OrderButtonView({super.key, required this.onClickItem, required this.isChoose, required this.reportType});

  final OrderShipStatusCode reportType; //current type
  final bool isChoose;
  final void Function() onClickItem;
  @override
  State<StatefulWidget> createState() => _ReportButtonViewState();
}

class _ReportButtonViewState extends State<OrderButtonView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onClickItem,
      child: Container(
        height: getDynamicHeight(context, 40),
        margin: EdgeInsets.symmetric(horizontal: 4),
        padding: EdgeInsets.symmetric(horizontal: 8),
        // width: getDynamicWidth(context, 130),
        decoration: BoxDecoration(
          color: Color(0xFFF3F1F1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Center(
            child: Text(
              widget.reportType.getText(context),
              style: getTextStyle(context, (widget.isChoose) ? CustomTextStyle.heading5Bold16 : CustomTextStyle.body1Regular16).apply(
                color: (widget.isChoose) ? $constants.theme.defaultThemeColor : Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}