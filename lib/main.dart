import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/login/cubit/login_cubit.dart';
import 'feature/map/google_map_screen.dart';
import 'feature/splash_screen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await FirebaseMessaging.instance.requestPermission();

  String? token = await FirebaseMessaging.instance.getToken();
  print('🔥 FCM TOKEN: $token');

  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (context) => LoginCubit())],
      child: EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
      ),
      home: GoogleMapScreen(),
    );
  }
}

/// AIzaSyAJTQ446C_TALaVVa9lvDOJmFrWjKXG0FQ
/// AIzaSyABP1bUKKxOEvezHu76iYVk8Bq457gYPi8

/*
curl -X POST https://fcm.googleapis.com/fcm/send \
-H "Authorization: key=SERVER_KEY_HERE" \
-H "Content-Type: application/json" \
-d '{
  "to": "FCM_TOKEN_HERE",
  "notification": {
    "title": "test",
    "body": "test"
  }
}'

 */
