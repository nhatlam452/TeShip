import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:teship/modules/dependency_injection/di.dart';
import 'package:teship/utils/methods/aliases.dart';
import 'package:teship/utils/router.gr.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../modules/token_refresh/dio_token_refresh.dart';
import '../auth/login/blocs/auth_cubit.dart';

class AppWrapper extends StatefulWidget {
  const AppWrapper({super.key});

  @override
  State<AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> with WidgetsBindingObserver {
  final GlobalKey _key = GlobalKey();

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Future<void> didChangePlatformBrightness() async {
    super.didChangePlatformBrightness();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          // Remove splash screen after initialization.
          FlutterNativeSplash.remove();
          initFirebase();
          state.whenOrNull<AuthState?>(
            authenticated: (_) {
              context.router.replaceAll([const AppNavigatorRoute()]);
            },
            unauthenticated: () {
              context.router.replaceAll([LoginScreenRoute()]);
            },
            failed: (err) {
              logIt.info('AppWrapper: failed: ${err.message}');
            },
            loading: () {
              logIt.info('AppWrapper: loading');
            },
          );
        },
        child: RepaintBoundary(
          key: _key,
          child: const AutoRouter(),
        ),
      ),
    );
  }

  void initFirebase() async {
    String deviceToken = await getDeviceToken() ?? '';
    print("###### PRINT DEVICE TOKEN TO USE FOR PUSH NOTIFCIATION ###### ");
    print(deviceToken);
    print("######################");
    
    final notificationBox = await Hive.openBox('notificationBox');
    notificationBox.put('device_token', deviceToken);
    await notificationBox.close();

    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      if(message.notification != null) {
        print ('Message also contained a notification: ${message.notification}');
        print('Title: ${message.notification?.title}');
        print('Body: ${message.notification?.body}');
        print('Payload: ${message.data}');
      }
    });
  }
  //get device token to use for push notification
  Future<String> getDeviceToken() async {
    print('getDeviceToken Firebase');
    FirebaseMessaging.instance.requestPermission();
    FirebaseMessaging _firebaseMessage = FirebaseMessaging.instance;
    String? deviceToken = await _firebaseMessage.getToken();
    return (deviceToken == null) ? '' : deviceToken;
  }

  Future<void> handleBackgroundMessage(RemoteMessage message) async {
    print('Title: ${message.notification?.title}');
    print('Body: ${message.notification?.body}');
    print('Payload: ${message.data}');
  }

  void handleMessage (RemoteMessage? message) {
    if (message == null) return;
    final dioTokenRefresh = getIt<DioTokenRefresh>();
    if(dioTokenRefresh.fresh.authenticationStatus == AuthorizationStatus.authorized) {
      context.router.replaceAll([const AppNavigatorRoute()]);
    }
    else {
      context.router.replaceAll([LoginScreenRoute()]);
    }
  }
}
