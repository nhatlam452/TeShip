import 'package:flutter/material.dart';
import 'package:teship/theme/text/app_text_theme.dart';
import 'package:teship/utils/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../font/fontweight_manager.dart';

part 'app_typography.freezed.dart';

@freezed
class AppTypography with _$AppTypography {
  factory AppTypography({
    required AppTextTheme black,
    required AppTextTheme white,
  }) = _AppTypography;

  const AppTypography._();

  factory AppTypography.create({required String fontFamily}) => AppTypography(
    black: _createTextTheme(fontFamily, $constants.palette.black),
    white: _createTextTheme(fontFamily, $constants.palette.white),
  );

  Typography get materialTypography => Typography.material2021(
    platform: null,
    black: black.materialTextTheme,
    white: white.materialTextTheme,
  );

  static AppTextTheme _createTextTheme(String fontFamily, Color color) => AppTextTheme(
    heading1Bold40: TextStyle(
      debugLabel: 'appTextTheme heading1Bold40',
      color: color,
      fontSize: 40,
      fontWeight: FontWeightManager.bold,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.2,
    ),
    heading2Bold32: TextStyle(
      debugLabel: 'appTextTheme heading2Bold32',
      color: color,
      fontSize: 32,
      fontWeight: FontWeightManager.bold,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.2,
    ),
    heading3Bold24: TextStyle(
      debugLabel: 'appTextTheme heading3Bold24',
      color: color,
      fontSize: 24,
      fontWeight: FontWeightManager.bold,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.2,
    ),
    heading4Bold20: TextStyle(
      debugLabel: 'appTextTheme heading4Bold20',
      color: color,
      fontSize: 20,
      fontWeight: FontWeightManager.bold,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.2,
    ),
    heading5Bold16: TextStyle(
      debugLabel: 'appTextTheme heading5Bold16',
      color: color,
      fontSize: 16,
      fontWeight: FontWeightManager.bold,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.2,
    ),
    heading6Bold14: TextStyle(
      debugLabel: 'appTextTheme heading6Bold14',
      color: color,
      fontSize: 14,
      fontWeight: FontWeightManager.bold,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.2,
    ),
    title1SemiBold24: TextStyle(
      debugLabel: 'appTextTheme title1SemiBold24',
      color: color,
      fontSize: 24,
      fontWeight: FontWeightManager.semiBold,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.2,
    ),
    title2SemiBold20: TextStyle(
      debugLabel: 'appTextTheme title2SemiBold20',
      color: color,
      fontSize: 20,
      fontWeight: FontWeightManager.semiBold,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.2,
    ),
    subtitle1Medium20: TextStyle(
      debugLabel: 'appTextTheme subtitle1Medium20',
      color: color,
      fontSize: 20,
      fontWeight: FontWeightManager.medium,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.2,
    ),
    subtitle2Medium16: TextStyle(
      debugLabel: 'appTextTheme subtitle2Medium16',
      color: color,
      fontSize: 16,
      fontWeight: FontWeightManager.medium,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.2,
    ),
    body1Regular16: TextStyle(
      debugLabel: 'appTextTheme body1Regular16',
      color: color,
      fontSize: 16,
      fontWeight: FontWeightManager.regular,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.2,
    ),
    body2Regular14: TextStyle(
      debugLabel: 'appTextTheme body2Regular14',
      color: color,
      fontSize: 14,
      fontWeight: FontWeightManager.regular,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.2,
    ),
    text1Italic16: TextStyle(
      debugLabel: 'appTextTheme text1Italic16',
      color: color,
      fontSize: 16,
      fontStyle: FontStyle.italic,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.2,
    ),
    text2ExtraRegular12: TextStyle(
      debugLabel: 'appTextTheme text2ExtraRegular12',
      color: color,
      fontSize: 12,
      fontWeight: FontWeightManager.regular,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.2,
    ),
    text3ExtraRegular12: TextStyle(
      debugLabel: 'appTextTheme text3ExtraRegular12',
      color: color,
      fontSize: 12,
      fontWeight: FontWeightManager.regular,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.2,
    ),
  );
}
