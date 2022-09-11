
import 'package:flutter/material.dart';

import '../../controllers/login_controller.dart';
import '../../routes/routes.dart';

class custon_login_component extends StatelessWidget {
  const custon_login_component({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: controller.loader,
      builder: (_, loader, __) => loader
          ? const CircularProgressIndicator()
          : Material(
              elevation: 15,
              child: ElevatedButton(
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
              ),
            ),
    );
  }
}
