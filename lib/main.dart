import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:teship/features/app/app.dart';
import 'package:teship/i18n/strings.g.dart';
import 'package:teship/modules/bloc_observer/observer.dart';
import 'package:teship/modules/dependency_injection/di.dart';
import 'package:teship/modules/sentry/sentry_module.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:teship/utils/methods/aliases.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:teship/utils/methods/hive_storage.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(
    () async {
      // Preserve splash screen until authentication complete.
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ).catchError((error) {
        logIt
          ..info('Erorr firebase -- $error');
      });
      FirebaseMessaging messaging = FirebaseMessaging.instance;
      messaging.subscribeToTopic ('all_devices');
      await messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );
      await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );

      // Use device locale.
      LocaleSettings.useDeviceLocale();

      // Removes leading # from the url running on web.
      setPathUrlStrategy();

      // Configures dependency injection to init modules and singletons.
      await configureDependencyInjection();

      // Configures Hive databases.
      await setupHive();

      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ));

      if (UniversalPlatform.isAndroid) {
        // Increases android devices preferred refresh rate to its maximum.
        await FlutterDisplayMode.setHighRefreshRate();
      }

      if (UniversalPlatform.isAndroid || UniversalPlatform.isIOS) {
        // Sets up allowed device orientations and other settings for the app.
        await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
        );
      }

      // This setting smoothes transition color for LinearGradient.

      // Inits sentry for error tracking.
      await initializeSentry();

      // Set bloc observer and hydrated bloc storage.
      Bloc.observer = Observer();
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: UniversalPlatform.isWeb
            ? HydratedStorage.webStorageDirectory
            : await getApplicationDocumentsDirectory(),
      );

      return runApp(
        // Sentrie's performance tracing for AssetBundles.
        DefaultAssetBundle(
          bundle: SentryAssetBundle(),
          child: TranslationProvider(
            child: App(),
          ),
        ),
      );
    },
    (exception, stackTrace) async {
      await Sentry.captureException(
        exception,
        stackTrace: stackTrace,
      );
    },
  );
}
