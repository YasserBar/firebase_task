import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_task/firebase_options.dart';
import 'package:flutter/material.dart';

import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform
      // options: FirebaseOptions(
      //   apiKey: kIsWeb
      //       ? const String.fromEnvironment('web_apiKey')
      //       : TargetPlatform.android == defaultTargetPlatform
      //           ? const String.fromEnvironment('android_apiKey', defaultValue: '')
      //           : const String.fromEnvironment('ios_apiKey', defaultValue: ''),
      //   appId: kIsWeb
      //       ? const String.fromEnvironment('web_appId')
      //       : TargetPlatform.android == defaultTargetPlatform
      //           ? const String.fromEnvironment('android_appId', defaultValue: '')
      //           : const String.fromEnvironment('ios_appId', defaultValue: ''),
      //   messagingSenderId: const String.fromEnvironment('messagingSenderId'),
      //   projectId: const String.fromEnvironment('projectId'),
      //   storageBucket: const String.fromEnvironment('storageBucket'),
      //   authDomain: kIsWeb ? const String.fromEnvironment('authDomain') : null,
      //   measurementId: kIsWeb ? const String.fromEnvironment('measurementId') : null,
      //   iosClientId: TargetPlatform.iOS == defaultTargetPlatform
      //       ? const String.fromEnvironment('iosClientId', defaultValue: '')
      //       : null,
      //   iosBundleId: TargetPlatform.iOS == defaultTargetPlatform
      //       ? const String.fromEnvironment('iosBundleId', defaultValue: '')
      //       : null,
      // ),
      );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
