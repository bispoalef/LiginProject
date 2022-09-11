import 'package:flutter/material.dart';
import 'package:login_project/services/prefs_service.dart';

import '../routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.wait([
      PrefsService.isAuth(),
      Future.delayed(const Duration(seconds: 2)),
    ]).then((value) => value[0]
        ? Navigator.pushReplacementNamed(context, Routes.HOME)
        : Navigator.pushReplacementNamed(context, Routes.LOGIN));

    // Future.delayed(const Duration(seconds: 2)).then(
    // (_) => Navigator.pushReplacementNamed(context, Routes.LOGIN),
    // );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade700,
        child: const Center(
          child: CircularProgressIndicator(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
