import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:teship/features/app/blocs/app_cubit.dart';
import 'package:teship/i18n/strings.g.dart';
import 'package:teship/modules/dependency_injection/di.dart';
import 'package:teship/utils/constants.dart';
import 'package:teship/utils/methods/aliases.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:statsfl/statsfl.dart';
import 'package:teship/utils/methods/shortcuts.dart';

import '../../theme/text/app_typography.dart';

class App extends StatelessWidget {
  App({super.key});

  final AppTypography appTypography =
      AppTypography.create(fontFamily: $constants.theme.defaultFontFamily);

  @override
  Widget build(BuildContext context) {
    return StatsFl(
      maxFps: 120,
      align: Alignment.bottomRight,
      isEnabled: false,
      child: BlocProvider(
        create: (context) => getIt<AppCubit>(),
        child: BlocBuilder<AppCubit, AppState>(
          builder: (context, state) {

            return MaterialApp.router(
              /// Theme configuration.
              theme: ThemeData(
                // colorScheme: ColorScheme.fromSeed(seedColor: $constants.theme.defaultThemeColor),
                scaffoldBackgroundColor: Colors.white,
                textTheme: appTypography.black.materialTextTheme,
                typography: appTypography.materialTypography,
                inputDecorationTheme: InputDecorationTheme(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: $constants.theme.defaultThemeColor, width: 2),
                  ),
                ),
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.white,
                  titleTextStyle:
                      getTextStyle(context, CustomTextStyle.title1SemiBold24),
                  centerTitle: false,
                  iconTheme: const IconThemeData(
                    color: Colors.black,
                  ),
                ),
              ),

              /// Environment configuration.
              title: $constants.appTitle,
              debugShowCheckedModeBanner: env.debugShowCheckedModeBanner,
              debugShowMaterialGrid: env.debugShowMaterialGrid,

              /// AutoRouter configuration.
              routerDelegate: AutoRouterDelegate(
                appRouter,
                // Sentrie's tracking navigation events with the usage of autorouter.
                navigatorObservers: () => [
                  SentryNavigatorObserver(),
                ],
              ),
              routeInformationParser: appRouter.defaultRouteParser(),

              /// EasyLocalization configuration.
              locale: TranslationProvider.of(context).flutterLocale,
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
            );
          },
        ),
      ),
    );
  }
}
