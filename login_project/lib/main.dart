import 'package:flutter/material.dart';
import 'package:login_project/components/routes.dart';
import 'package:login_project/pages/login.dart';
import 'package:login_project/pages/home_page.dart';
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
        Routes.SPLASH: (_) => const SplashScreen(),
        Routes.LOGIN: (_) => LoginScreen(),
        Routes.HOME: (_) => const HomePage(),
      },
    );
  }
}
