import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:login_project/models/post_model.dart';
import 'package:login_project/repositories/home_repository.dart';

class HomeRepositoryMock extends HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    var value = await rootBundle.loadString('lib/assets/data/data.json');
    List postJson = jsonDecode(value);
    return postJson.map((e) => PostModel.fromJson(e)).toList();
  }
}
