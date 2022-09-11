import 'package:flutter/material.dart';
import 'package:login_project/controllers/home_controller.dart';
import 'package:login_project/models/post_model.dart';
import 'package:login_project/repositories/home_repository_implement.dart';
import 'package:login_project/services/prefs_service.dart';

import '../routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller =
      HomeController(homeRepository: HomerepositoryImplement());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App'),
        actions: [
          IconButton(
            onPressed: () {
              PrefsService.logout();
              Navigator.of(context).pushNamedAndRemoveUntil(
                Routes.LOGIN,
                (_) => true,
              );
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: ValueListenableBuilder<List<PostModel>>(
        valueListenable: _controller.posts,
        builder: (_, list, __) {
          return ListView.separated(
            separatorBuilder: (_, __) => const Divider(),
            itemCount: list.length,
            itemBuilder: ((_, index) => GestureDetector(
                  onTap: () => Navigator.of(context)
                      .pushNamed(Routes.HOME_DETAIL, arguments: list[index]),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(list[index].id.toString()),
                    ),
                    title: Text(list[index].title),
                    trailing: const Icon(Icons.arrow_forward),
                  ),
                )),
          );
        },
      ),
    );
  }
}
