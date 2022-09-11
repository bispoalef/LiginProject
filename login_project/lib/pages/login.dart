import 'package:flutter/material.dart';
import 'package:login_project/components/routes.dart';
import 'package:login_project/controllers/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginController controller = LoginController();
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              elevation: 15,
              color: Colors.blue.shade500,
              borderRadius: BorderRadius.circular(100),
              child: Icon(
                Icons.people,
                size: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            Container(height: 15),
            Material(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue.shade100,
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(label: Text('Login')),
                      onChanged: controller.setLogin,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        label: Text('Senha'),
                      ),
                      obscureText: true,
                      onChanged: controller.setSenha,
                    )
                  ],
                ),
              ),
            ),
            Container(height: 15),
            ValueListenableBuilder<bool>(
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
                                Navigator.pushNamed(
                                  (context),
                                  Routes.HOME,
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
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
            ),
          ],
        ),
      ),
    );
  }
}
