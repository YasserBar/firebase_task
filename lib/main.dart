import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_task/firebase_options.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: String.fromEnvironment('apiKey'),
        appId: String.fromEnvironment('appId'),
        messagingSenderId: String.fromEnvironment('messagingSenderId'),
        projectId: String.fromEnvironment('projectId'),
        authDomain: String.fromEnvironment('authDomain'),
        storageBucket: String.fromEnvironment('storageBucket'),
        measurementId: String.fromEnvironment('measurementId'),
      ),
    );
  } else {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  }
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
