import 'package:flutter/material.dart';
import 'package:login_project/pages/login.dart';
import 'package:login_project/pages/page_app.dart';
import 'package:login_project/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashScreen(),
        '/login': (_) => LoginScreen(),
        '/app': (_) => const PageApp(),
      },
    );
  }
}
