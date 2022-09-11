import 'package:flutter/material.dart';
import 'package:login_project/controllers/login_controller.dart';

import '../components/login/custon_login_component.dart';
import '../widgets/textfield_login.dart';

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
                    TextFieldLogin(
                      label: 'Login',
                      onChanged: controller.setLogin,
                    ),
                    TextFieldLogin(
                      label: 'Senha',
                      onChanged: controller.setSenha,
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            ),
            Container(height: 15),
            custon_login_component(controller: controller),
          ],
        ),
      ),
    );
  }
}
