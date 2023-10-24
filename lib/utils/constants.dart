import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teship/features/report/presentation/report_screen.dart';
import 'package:teship/features/setting/presentation/setting_screen.dart';
import 'package:teship/features/store_list/presentation/store_list_screen.dart';
import 'package:teship/i18n/strings.g.dart';

import '../features/create_order/presentation/create_order_screen.dart';
import '../features/order_list/presentation/order_list_screen.dart';

final $constants = Constants();

@immutable
class Constants {
  final appTitle = 'TeShip';
  final version = '0.1.1 (staging)';
  // final url = 'https://jl-family.com/v1/delivery-service';
  final url = 'https://api.teship.net/v1/delivery-service';

  /// Theme defaults.
  late final theme = _Theme();

  /// Animation durations.
  late final times = _Times();

  /// Rounded edge corner radiuses.
  late final corners = _Corners();

  /// Padding and margin values.
  late final insets = _Insets();

  /// Text shadows.
  late final shadows = _Shadows();

  /// Color $constants.palette.
  late final palette = _Palette();

  /// API configuration.
  late final api = _API();

  /// Navigation configuration.
  late final navigation = _Navigation();

  late final shipNavigation = _ShipNavigation();

  late final currentMoney = 0.0;
}

@immutable
class _Times {
  final Duration fast = const Duration(milliseconds: 300);
  final Duration med = const Duration(milliseconds: 600);
  final Duration slow = const Duration(milliseconds: 900);
  final Duration pageTransition = const Duration(milliseconds: 200);
}

@immutable
class _Corners {
  late final double sm = 4;
  late final double md = 8;
  late final double lg = 32;
}

@immutable
class _Insets {
  late final double xxs = 4;
  late final double xs = 8;
  late final double sm = 16;
  late final double md = 24;
  late final double lg = 32;
  late final double xl = 48;
  late final double xxl = 56;
  late final double offset = 80;
}

@immutable
class _Shadows {
  final textSoft = [
    Shadow(
        color: Colors.black.withOpacity(0.25),
        offset: const Offset(0, 2),
        blurRadius: 4),
  ];
  final text = [
    Shadow(
        color: Colors.black.withOpacity(0.6),
        offset: const Offset(0, 2),
        blurRadius: 2),
  ];
  final textStrong = [
    Shadow(
        color: Colors.black.withOpacity(0.6),
        offset: const Offset(0, 4),
        blurRadius: 6),
  ];
}

@immutable
class _Palette {
  final List<Color> themes = [
    const Color(0xFFFF0000),
    const Color(0xFFFF8000),
    const Color(0xFFFCCC1A),
    const Color(0xFF66B032),
    const Color(0xFF00FFFF),
    const Color(0xFF0000FF),
    const Color(0xFF0080FF),
    const Color(0xFFFF00FF),
  ];

  final white = const Color(0xFFFFFFFF);
  final black = const Color(0xFF000000);
  final grey = const Color(0xFF9E9E9E);
  final red = const Color(0xFFFF0000);
  final orange = const Color(0xFFFF8000);
  final yellow = const Color(0xFFFCCC1A);
  final green = const Color(0xFF66B032);
  final cyan = const Color(0xFF00FFFF);
  final blue = const Color(0xFF0000FF);
  final purple = const Color(0xFF0080FF);
  final magenta = const Color(0xFFFF00FF);
}

@immutable
class _Theme {
  final tryToGetColorPaletteFromWallpaper = true;
  final defaultThemeColor = Color(0xFF008c8c);
  final defaultColorDisable = Color(0xFFb3b3b3);
  final defaultFontFamily = 'Montserrat';
  final double defaultElevation = 0;
  final double defaultBorderRadius = 8;
}

@immutable
class _API {
  final maxItemToBeFetchedAtOneTime = 5;
}

@immutable
class _Navigation {
  /// Appbar configuration.
  List<AppBar> appbars(BuildContext context) => [
        AppBar(
          toolbarHeight: 0,
          shadowColor: Colors.transparent,
        ),
        AppBar(
          elevation: 0,
          title: Text(
            context.t.strings.create_order.title,
          ),
        ),
        AppBar(
          elevation: 0,
          title: Text(
              context.t.strings.navigation.bottom.report,
          ),
        ),
        AppBar(
          elevation: 0,
          title: Text(
            context.t.strings.navigation.bottom.setting,
          ),
        ),
      ];

  /// Bottom navigation configuration.
  List<Widget> bottomNavigationScreens() => const [
    OrderListScreen(),
    CreateOrderScreen(),
    ReportScreen(),
    SettingScreen(),
  ];

  List<BottomNavigationBarItem> bottomNavigationItems(BuildContext context) => [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/images/auth/ic_home_gray.svg',
        color: $constants.theme.defaultColorDisable,
      ),
      activeIcon: SvgPicture.asset(
        'assets/images/auth/ic_home_gray.svg',
        color: $constants.theme.defaultThemeColor,
      ),
      label: context.t.strings.navigation.bottom.home,
      ),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(
            'assets/images/auth/ic_create_order_gray.svg',
          color: $constants.theme.defaultColorDisable,
        ),
      activeIcon: SvgPicture.asset(
          'assets/images/auth/ic_create_order_gray.svg',
          color: $constants.theme.defaultThemeColor,
        ),
        label: context.t.strings.navigation.bottom.create_order,
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/images/auth/ic_report_gray.svg',
          color: $constants.theme.defaultColorDisable,
        ),
        activeIcon: SvgPicture.asset(
          'assets/images/auth/ic_report_gray.svg',
          color: $constants.theme.defaultThemeColor,
        ),
        label: context.t.strings.navigation.bottom.report,
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/images/auth/ic_profile_gray.svg',
          color: $constants.theme.defaultColorDisable,
        ),
        activeIcon: SvgPicture.asset(
          'assets/images/auth/ic_profile_gray.svg',
          color: $constants.theme.defaultThemeColor,
        ),
        label: context.t.strings.navigation.bottom.setting,
      ),
    ];
}

@immutable
class _ShipNavigation {
  /// Appbar configuration.
  List<AppBar> appbars(BuildContext context) => [
    AppBar(
      toolbarHeight: 0,
      shadowColor: Colors.transparent,
    ),
    AppBar(
      toolbarHeight: 0,
      shadowColor: Colors.transparent,
    ),
    AppBar(
      title: Text(
          context.t.strings.navigation.bottom.report,
      ),
    ),
    AppBar(
      elevation: 0,
      title: Text(
        context.t.strings.navigation.bottom.setting,
      ),
    ),
  ];

  /// Bottom navigation configuration.
  List<Widget> bottomNavigationScreens() => const [
    StoreListScreen(),
    OrderListScreen(),
    ReportScreen(),
    SettingScreen(),
  ];

  List<BottomNavigationBarItem> bottomNavigationItems(BuildContext context) => [
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/images/auth/ic_home_gray.svg',
        color: $constants.theme.defaultColorDisable,
      ),
      activeIcon: SvgPicture.asset(
        'assets/images/auth/ic_home_gray.svg',
        color: $constants.theme.defaultThemeColor,
      ),
      label: context.t.strings.navigation.bottom.home,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/images/auth/ic_order_gray.svg',
        color: $constants.theme.defaultColorDisable,
      ),
      activeIcon: SvgPicture.asset(
        'assets/images/auth/ic_order_gray.svg',
        color: $constants.theme.defaultThemeColor,
      ),
      label: context.t.strings.navigation.bottom.order,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/images/auth/ic_report_gray.svg',
        color: $constants.theme.defaultColorDisable,
      ),
      activeIcon: SvgPicture.asset(
        'assets/images/auth/ic_report_gray.svg',
        color: $constants.theme.defaultThemeColor,
      ),
      label: context.t.strings.navigation.bottom.report,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/images/auth/ic_profile_gray.svg',
        color: $constants.theme.defaultColorDisable,
      ),
      activeIcon: SvgPicture.asset(
        'assets/images/auth/ic_profile_gray.svg',
        color: $constants.theme.defaultThemeColor,
      ),
      label: context.t.strings.navigation.bottom.setting,
    ),
  ];
}
enum CustomTextStyle {
  heading1Bold40,
  heading2Bold32,
  heading3Bold24,
  heading4Bold20,
  heading5Bold16,
  heading6Bold14,
  title1SemiBold24,
  title2SemiBold20,
  subtitle1Medium20,
  subtitle2Medium16,
  body1Regular16,
  body2Regular14,
  text1Italic16,
  text2ExtraRegular12,
  text3ExtraRegular12,
}
