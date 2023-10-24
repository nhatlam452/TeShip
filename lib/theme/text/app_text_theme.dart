import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_text_theme.freezed.dart';

typedef MaterialTextTheme = TextTheme;

@freezed
class AppTextTheme with _$AppTextTheme {
  factory AppTextTheme({
    required TextStyle heading1Bold40,
    required TextStyle heading2Bold32,
    required TextStyle heading3Bold24,
    required TextStyle heading4Bold20,
    required TextStyle heading5Bold16,
    required TextStyle heading6Bold14,
    required TextStyle title1SemiBold24,
    required TextStyle title2SemiBold20,
    required TextStyle subtitle1Medium20,
    required TextStyle subtitle2Medium16,
    required TextStyle body1Regular16,
    required TextStyle body2Regular14,
    required TextStyle text1Italic16,
    required TextStyle text2ExtraRegular12,
    required TextStyle text3ExtraRegular12,
  }) = _AppTextTheme;

  const AppTextTheme._();

  MaterialTextTheme get materialTextTheme => MaterialTextTheme(
    displayLarge: heading1Bold40,
    displayMedium: heading2Bold32,
    displaySmall: heading3Bold24,
    headlineLarge: heading4Bold20,
    headlineMedium: heading5Bold16,
    headlineSmall: heading6Bold14,
    titleLarge: title1SemiBold24,
    titleMedium: title2SemiBold20,
    titleSmall: subtitle1Medium20,
    bodyLarge: subtitle2Medium16,
    bodyMedium: body1Regular16,
    bodySmall: body2Regular14,
    labelLarge: text1Italic16,
    labelMedium: text2ExtraRegular12,
    labelSmall: text3ExtraRegular12,
  );
}