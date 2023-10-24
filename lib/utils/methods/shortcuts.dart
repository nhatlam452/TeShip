import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:teship/features/app/models/alert_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/responses/responses.dart';
import '../../features/app/widgets/customs/base_alert_dialog.dart';
import '../../features/auth/login/blocs/auth_cubit.dart';
import '../../modules/dependency_injection/di.dart';
import '../constants.dart';
import 'package:teship/features/app/models/user_model.dart';
import 'package:hive/hive.dart';

Future<void> clearUserInfo() async {
  final boxExists = await Hive.boxExists('userInfo');
  if (!boxExists) return null;

  final userInfoBox = await Hive.openBox('userInfo');
  await userInfoBox.deleteFromDisk();
}

Future<UserModel?>? getUserInfo() async {
  final boxExists = await Hive.boxExists('userInfo');
  if (!boxExists) return null;

  final userInfoBox = await Hive.openBox('userInfo');
  final savedEmail = (userInfoBox.get('email') as String?).wrappedValue();
  final savedPhone = (userInfoBox.get('phone') as String?).wrappedValue();
  final savedStoreId = (userInfoBox.get('store_id') as String?).wrappedValue();
  final savedStoreCode = (userInfoBox.get('store_code') as String?).wrappedValue();
  final savedName = (userInfoBox.get('name') as String?).wrappedValue();
  final savedPermission = (userInfoBox.get('permission') as String?).wrappedValue();
  final savedAddress = (userInfoBox.get('address') as String?).wrappedValue();

  return UserModel(
    id: savedStoreId.wrappedValue(),
    phone: savedPhone.wrappedValue(),
    email: savedEmail.wrappedValue(),
    storeId: savedStoreId.wrappedValue(),
    storeCode: savedStoreCode.wrappedValue(),
    name: savedName.wrappedValue(),
    address: savedAddress.wrappedValue(),
    permission: savedPermission.wrappedValue(),
  );
}

Future<String?>? getNotificationToken() async {
  final boxExists = await Hive.boxExists('notificationBox');
  if (!boxExists) return null;

  final userInfoBox = await Hive.openBox('notificationBox');
  final String savedToken = (userInfoBox.get('device_token') as String?).wrappedValue();

  return savedToken;
}

Future<String?>? getChooseStoreIdInShipMode() async {
  final boxExists = await Hive.boxExists('store');
  if (!boxExists) return null;

  final storeBox = await Hive.openBox('store');
  return (storeBox.get('store_id') as String?).wrappedValue();
}

void showAlertDialog(BuildContext context,String string) {

  // set up the buttons

  Widget continueButton = TextButton(
    child: Text("Continue"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  var alert = AlertDialog(
    title: Text("Kiểm tra đơn hàng"),
    content: Text(string),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

Widget getLineDivider(double? size, {double? height = 1}) {
  return Container(
    color: $constants.theme.defaultColorDisable,
    width: size ?? double.infinity,
    height: height,
  );
}
Widget loaderView() {
  return SpinKitFadingCircle(
    itemBuilder: (BuildContext context, int index) {
      return CircleAvatar(
        backgroundColor: $constants.theme.defaultThemeColor,
      );
    },
  );
}

Widget defaultErrorView(AlertModel alert) => BaseAlertOneChoiceDialog(
  content: alert.message,
  cancelOnPressed: (){
    if (alert.message == ErrorCode.E_USER_AUTH.errorString) {
      getIt<AuthCubit>().logOut();
    }
    else if (alert.message == "Không kết nối Internet!"){
      launch('App-Prefs:root=WIFI');
    }
  },
);

Size getSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

//812 là size height của design
double getDynamicHeight(BuildContext context, double height) {
  return height / getSize(context).height * 812;
}

//375 là size width của design
double getDynamicWidth(BuildContext context, double width) {
  return width / getSize(context).width * 375;
}

double getStatusBarHeight(BuildContext context) {
  return MediaQuery.of(context).padding.top;
}

double getSliverBarHeight(BuildContext context) {
  return getStatusBarHeight(context) + kToolbarHeight;
}

double getAppBarHeight() {
  return AppBar().preferredSize.height;
}

double getBottomBarHeight() {
  return kBottomNavigationBarHeight;
}

ColorScheme getTheme(BuildContext context) {
  return Theme.of(context).colorScheme;
}

ColorScheme getPrimaryContainer(BuildContext context) {
  return Theme.of(context).colorScheme;
}

bool isDarkMode(BuildContext context) {
  return Theme.of(context).brightness == Brightness.dark;
}

TextTheme getTextTheme(BuildContext context) {
  return Theme.of(context).textTheme;
}

TextStyle getTextStyle(BuildContext context, CustomTextStyle style) {
  return style.getTextStyle(context);
}

String getYesterdayYYYYMMDD(){
  final nowDate = DateTime.now();
  var yesterday = DateTime(nowDate.year, nowDate.month, nowDate.day - 1);
  return '${yesterday.year.toString()}-${yesterday.month.toString().padLeft(2, '0')}-${yesterday.day.toString().padLeft(2, '0')}';
}

String getTomorrowYYYYMMDD(){
  final nowDate = DateTime.now();
  var tomorrow = DateTime(nowDate.year, nowDate.month, nowDate.day + 1);
  return '${tomorrow.year.toString()}-${tomorrow.month.toString().padLeft(2, '0')}-${tomorrow.day.toString().padLeft(2, '0')}';
}

String getNowDayYYYYMMDD(){
  final nowDate = DateTime.now();
  return '${nowDate.year.toString()}-${nowDate.month.toString().padLeft(2, '0')}-${nowDate.day.toString().padLeft(2, '0')}';
}

String getSevenDayPastNowYYYYMMDD(){
  final nowDate = DateTime.now();
  var endWeekDate = DateTime(nowDate.year, nowDate.month, nowDate.day - 7);
  return '${endWeekDate.year.toString()}-${endWeekDate.month.toString().padLeft(2, '0')}-${endWeekDate.day.toString().padLeft(2, '0')}';
}

extension ParseToTextTheme on CustomTextStyle {

  TextStyle getTextStyle(BuildContext context) {
    switch (this) {
      case CustomTextStyle.heading1Bold40:
        return Theme.of(context).textTheme.displayLarge ?? TextStyle();
      case CustomTextStyle.heading2Bold32:
        return Theme.of(context).textTheme.displayMedium ?? TextStyle();
      case CustomTextStyle.heading3Bold24:
        return Theme.of(context).textTheme.displaySmall ?? TextStyle();
      case CustomTextStyle.heading4Bold20:
        return Theme.of(context).textTheme.headlineLarge ?? TextStyle();
      case CustomTextStyle.heading5Bold16:
        return Theme.of(context).textTheme.headlineMedium ?? TextStyle();
      case CustomTextStyle.heading6Bold14:
        return Theme.of(context).textTheme.headlineSmall ?? TextStyle();
      case CustomTextStyle.title1SemiBold24:
        return Theme.of(context).textTheme.titleLarge ?? TextStyle();
      case CustomTextStyle.title2SemiBold20:
        return Theme.of(context).textTheme.titleMedium ?? TextStyle();
      case CustomTextStyle.subtitle1Medium20:
        return Theme.of(context).textTheme.titleSmall ?? TextStyle();
      case CustomTextStyle.subtitle2Medium16:
        return Theme.of(context).textTheme.bodyLarge ?? TextStyle();
      case CustomTextStyle.body1Regular16:
        return Theme.of(context).textTheme.bodyMedium ?? TextStyle();
      case CustomTextStyle.body2Regular14:
        return Theme.of(context).textTheme.bodySmall ?? TextStyle();
      case CustomTextStyle.text1Italic16:
        return Theme.of(context).textTheme.labelLarge ?? TextStyle();
      case CustomTextStyle.text2ExtraRegular12:
        return Theme.of(context).textTheme.labelMedium ?? TextStyle();
      case CustomTextStyle.text3ExtraRegular12:
        return Theme.of(context).textTheme.labelSmall ?? TextStyle();
    }
  }
}

Color getPrimaryColor(BuildContext context) {
  return ElevationOverlay.colorWithOverlay(getTheme(context).surface, getTheme(context).primary, 3);
}

Color getCustomOnPrimaryColor(BuildContext context) {
  return getTheme(context).primary.withOpacity(0.5);
/*   return ElevationOverlay.colorWithOverlay(
    getTheme(context).primary,
    getTheme(context).background,
    isDarkMode(context) ? 1000 : 500,
  ); */
}

String colorToHex(Color c) {
  return "#${(c.value.toRadixString(16))..padLeft(8, '0').toUpperCase()}";
}

Color hexToColor(String h) {
  return Color(int.parse(h, radix: 16));
}

LinearGradient colorsToGradient(List<Color> colors, {double opacity = 1}) {
  return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: colors.map((c) => c.withOpacity(opacity)).toList(),
  );
}

T? cast<T>(x) => x is T ? x : null;

bool boolNotNull(dynamic value){
  final result = cast<bool>(value);
  return result != null ? result : false;
}

extension StringNotNull on String? {
  String wrappedValue() {
    return this ?? '';
  }
  double toDouble() {
    return this == '' || this == null ? 0.0 : double.parse(this ?? '0');
  }
  int toInt() {
    return this == '' || this == null ? 0 : int.parse(this ?? '0');
  }
}
extension DoubleNotNull on double? {
  double wrappedValue() {
    return this ?? 0.0;
  }
}
extension IntNotNull on int? {
  int wrappedValue() {
    return this ?? 0;
  }
}

extension IntCurrency on int {
  String formatCurrency() {
    final oCcy = NumberFormat("#,##0", "en_US");
    return "${oCcy.format(this)} VND";
  }
}
extension DoubleCurrency on double {
  String formatCurrencyNoVND() {
    final oCcy = NumberFormat("#,##0", "en_US");
    return oCcy.format(this);
  }
  String formatCurrency() {
    final oCcy = NumberFormat("#,##0", "en_US");
    return "${oCcy.format(this)} VND";
  }
}

extension DoubleToDateString on double {
  DateTime toDateTime() {
    return DateTime.fromMillisecondsSinceEpoch((this * 1000).toInt());
  }
}

extension DateTimeExtension on DateTime {

  String toDDMMYYYYString() {
    return "${this.day.toString().padLeft(2, '0')}/${this.month.toString().padLeft(2, '0')}/${this.year.toString()}";
  }

  String toDDMMYYYYhhmmString() {
    return "${this.day.toString().padLeft(2, '0')}/${this.month.toString().padLeft(2, '0')}/${this.year} ${this.hour.toString().padLeft(2, '0')}:${this.minute.toString().padLeft(2, '0')}";
  }

  String tohhmmString() {
    return "${this.hour.toString().padLeft(2, '0')}:${this.minute.toString().padLeft(2, '0')}";
  }
}

extension FormGroupExtension on FormGroup {
  double getDoubleValue(String formGroupName) {
    return this.control(formGroupName).value.toString() == '' ? 0.0 : double.parse(this.control(formGroupName).value.toString().replaceAll(',', ''));
  }
  int getIntValue(String formGroupName) {
    return this.control(formGroupName).value.toString() == '' ? 0 : int.parse(this.control(formGroupName).value.toString().replaceAll(',', ''));
  }
}

//Validation pattern
String valiationPhonePattern() => r'(^(?:[+0]9)?[0-9]{10,12}$)';
String valiationEmailPattern() => r'(^(?:[+0]9)?[0-9]{10,12}$)';