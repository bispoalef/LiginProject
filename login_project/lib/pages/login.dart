import 'package:flutter/material.dart';
import 'package:login_project/controllers/login_controller.dart';
import '../components/login/button.dart';
import '../components/login/form_login_senha.dart';

class LoginScreen extends StatelessWidget {
  LoginController controller = LoginController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
                size: size.height * 0.3,
              ),
            ),
            Container(height: 15),
            LoginSenha(controller: controller),
            Container(height: 15),
            ValueListenableBuilder<bool>(
              valueListenable: controller.loader,
              builder: (_, loader, __) => loader
                  ? const CircularProgressIndicator()
                  : Material(
                      elevation: 15,
                      child: Btn(controller: controller),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}


