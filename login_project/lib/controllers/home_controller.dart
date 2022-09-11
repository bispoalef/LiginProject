// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:login_project/models/post_model.dart';
import 'package:login_project/repositories/home_repository.dart';

class HomeController {
  final HomeRepository homeRepository;

  HomeController({required this.homeRepository});

  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

  fetch() async {
    posts.value = await homeRepository.getList();
  }
}
