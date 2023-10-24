import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:teship/features/report/models/report_type.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/utils/methods/shortcuts.dart';

class ReportButtonView extends StatefulWidget {
  const ReportButtonView({super.key, required this.onClickItem, required this.isChoose, required this.reportType});

  final ReportType reportType; //current type
  final bool isChoose;
  final void Function() onClickItem;
  @override
  State<StatefulWidget> createState() => _ReportButtonViewState();
}

class _ReportButtonViewState extends State<ReportButtonView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onClickItem,
      child: Container(
        height: getDynamicHeight(context, 40),
        // width: getDynamicWidth(context, 130),
        decoration: BoxDecoration(
          color: Color(0xFFF3F1F1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            widget.reportType.text(context),
            style: getTextStyle(context, (widget.isChoose) ? CustomTextStyle.heading5Bold16 : CustomTextStyle.body1Regular16).apply(
              color: (widget.isChoose) ? $constants.theme.defaultThemeColor : Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}