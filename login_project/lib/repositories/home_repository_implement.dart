import 'package:dio/dio.dart';
import 'package:login_project/models/post_model.dart';
import 'package:login_project/repositories/home_repository.dart';

class HomerepositoryImplement implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');

          
      return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
    } catch (e) {
      print(e);
    }
    return [];
  }
}
