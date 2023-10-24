import 'package:flutter/material.dart';
import 'package:teship/features/app/models/alert_model.dart';
import 'package:teship/features/app/widgets/bar/bar.dart';
import 'package:teship/i18n/strings.g.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

@immutable
abstract class BarHelper {
  const BarHelper._();

  static void showAlert(
    BuildContext context, {
    required AlertModel alert,
    BarPosition barPosition = BarPosition.top,
    bool isTest = false,
  }) {
    Bar<void> bar;
    final message = alert.translatable ? (context.t[alert.message] as String) : alert.message;

    if (alert.type == AlertType.constructive) {
      bar = _createAlertModal(
        message: message,
        iconWidget: const Icon(
          MdiIcons.checkCircle,
          color: Colors.white,
        ),
        color: const Color(0xFF40DBA3),
        barPosition: barPosition,
        isTest: isTest,
      );
    } else if (alert.type == AlertType.destructive) {
      bar = _createAlertModal(
        message: message,
        iconWidget: const Icon(
          MdiIcons.alertCircle,
          color: Colors.white,
        ),
        color: const Color(0xFFE4756D),
        barPosition: barPosition,
      );
    } else if (alert.type == AlertType.error) {
      bar = _createAlertModal(
        message: message,
        iconWidget: const SizedBox(),
        color: Colors.red,
        barPosition: barPosition,
      );
    } else if (alert.type == AlertType.notification) {
      bar = _createAlertModal(
        message: message,
        color: Colors.grey,
        barPosition: barPosition,
        iconWidget: Container(
          height: 24,
          width: 24,
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
            border: Border.fromBorderSide(BorderSide(color: Colors.white, width: 2)),
          ),
          margin: const EdgeInsets.all(4),
        ),
      );
    } else if (alert.type == AlertType.quiet) {
      return;
    } else {
      bar = _createAlertModal(
        message: message,
        iconWidget: const SizedBox(),
        color: Colors.red,
        barPosition: barPosition,
      );
    }

    if (isTest) {
      showDialog<void>(
        context: context,
        builder: (_) {
          return bar;
        },
      );
    } else {
      bar.show(context);
    }
  }

  static Bar<void> _createAlertModal({
    required String message,
    required Widget iconWidget,
    required Color color,
    String? title,
    BarPosition barPosition = BarPosition.top,
    bool isTest = false,
    Duration duration = const Duration(seconds: 3),
  }) {
    return Bar<void>(
      title: title,
      message: message,
      barPosition: barPosition,
      icon: Padding(
        padding: const EdgeInsets.all(8),
        child: iconWidget,
      ),
      maxHeight: 60,
      backgroundColor: color,
      messageSize: 18,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      margin: const EdgeInsets.all(8),
      shouldIconPulse: false,
      isDismissible: false,
      duration: isTest ? const Duration(seconds: 1) : duration,
      animationDuration: isTest ? const Duration(milliseconds: 250) : const Duration(seconds: 1),
    );
  }
}