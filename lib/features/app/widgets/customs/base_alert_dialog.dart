import 'package:flutter/material.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/utils/methods/shortcuts.dart';

class BaseAlertOneChoiceDialog extends StatelessWidget {
  const BaseAlertOneChoiceDialog({
    super.key,
    required this.content,
    this.title = "Thông báo",
    this.yes = "Đồng ý",
    this.cancelOnPressed,
  });
  //When creating please recheck 'context' if there is an error!

  final String content;
  final String? title;
  final String yes;
  final void Function()? cancelOnPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title.wrappedValue(),
        style: getTextStyle(context, CustomTextStyle.title2SemiBold20,),
        textAlign: TextAlign.center,
      ),
      content: SizedBox(
        height: 80,
        child: Column(
          children: [
            Text(
              this.content,
              style: getTextStyle(context, CustomTextStyle.subtitle2Medium16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25,),
            Container(
              color: Color(0xFFf5f5f5),
              width: double.infinity,
              height: 1,
            ),
          ],
        ),
      ),
      contentPadding: EdgeInsets.only(top: 16, bottom: 0),
      backgroundColor: Colors.white,
      shape:
      RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15)),
      actionsAlignment: MainAxisAlignment.center,
      actions: <Widget>[
        SizedBox(
          width: getDynamicWidth(context, 147),
          // height: getDynamicHeight(context, 20),
          child: TextButton(
            child: Text(this.yes,
              style: getTextStyle(context, CustomTextStyle.subtitle2Medium16).apply(color: $constants.theme.defaultThemeColor),
            ),
            // textColor: Colors.redAccent,
            onPressed: () {
              this.cancelOnPressed!();
            },
          ),
        ),
      ],
    );
  }
}
class BaseAlertDialog extends StatelessWidget {
  const BaseAlertDialog({
    super.key,
    required this.content,
    this.title = "Thông báo",
    this.cancel = "Huỷ",
    this.yes = "Đồng ý",
    this.cancelOnPressed,
    this.yesOnPressed,

  });

  final String content;
  final String? title;
  final String? cancel;
  final String yes;
  final void Function()? cancelOnPressed;
  final void Function()? yesOnPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title.wrappedValue(),
        style: getTextStyle(context, CustomTextStyle.title2SemiBold20,),
        textAlign: TextAlign.center,
      ),
      content: SizedBox(
        height: getDynamicHeight(context, 100),
        child: Column(
          children: [
            Text(
              this.content,
              style: getTextStyle(context, CustomTextStyle.subtitle2Medium16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25,),
            Container(
              color: Color(0xFFf5f5f5),
              width: double.infinity,
              height: 1,
            ),
          ],
        ),
      ),
      contentPadding: EdgeInsets.only(top: 16, bottom: 0),
      backgroundColor: Colors.white,
      shape:
      RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15)),
      actionsAlignment: MainAxisAlignment.center,
      actions: <Widget>[
        SizedBox(
          width: getDynamicWidth(context, 147),
          child: TextButton(
            child: Text(cancel.wrappedValue(),
              style: getTextStyle(context, CustomTextStyle.subtitle2Medium16).apply(color: Color(0xFFf5222d)),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              this.cancelOnPressed!();
            },
          ),
        ),
        SizedBox(
          width: getDynamicWidth(context, 150),
          child: TextButton(
            child: Text(this.yes,
              style: getTextStyle(context, CustomTextStyle.subtitle2Medium16).apply(color: $constants.theme.defaultThemeColor),
            ),
            // textColor: Colors.redAccent,
            onPressed: () {
              this.yesOnPressed!();
            },
          ),
        ),
      ],
    );
  }
}