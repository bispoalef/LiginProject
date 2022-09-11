import 'package:flutter/material.dart';

import '../../controllers/login_controller.dart';
import '../../routes/routes.dart';

class Btn extends StatelessWidget {
  const Btn({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        controller.auth().then(
          (result) {
            if (result == true) {
              Navigator.pushReplacementNamed(
                (context),
                Routes.HOME,
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(seconds: 2),
                  elevation: 5,
                  content: Text(
                    'Login ou senha inválida',
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }
          },
        );
      },
      child: const Text('LOGIN'),
    );
  }
}