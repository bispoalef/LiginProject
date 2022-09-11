import 'package:flutter/material.dart';
import 'package:login_project/models/post_model.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PostModel;

    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Detalhes',
        textAlign: TextAlign.center,
      )),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueAccent,
              ),
              child: Text(
                'Autor: ${args.id}',
                style: const TextStyle(
                  fontSize: 28,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.lightBlueAccent,
              ),
              child: Text(
                args.title.toUpperCase(),
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue.shade100,
              ),
              child: Text(
                args.body,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
