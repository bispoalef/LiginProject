import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.shade500,
              ),
              child: Icon(
                Icons.people,
                size: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            Container(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.shade100,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: const [
                    TextField(
                      decoration: InputDecoration(label: Text('Login')),
                    ),
                    TextField(
                        decoration: InputDecoration(label: Text('Senha')),
                        obscureText: true)
                  ],
                ),
              ),
            ),
            Container(height: 15),
            ElevatedButton(onPressed: () {}, child: const Text('LOGIN')),
          ],
        ),
      ),
    );
  }
}
