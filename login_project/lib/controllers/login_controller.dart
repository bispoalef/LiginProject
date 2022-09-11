import 'package:flutter/cupertino.dart';
import 'package:login_project/services/prefs_service.dart';

class LoginController {
  ValueNotifier<bool> loader = ValueNotifier<bool>(false);

  String? _login;
  setLogin(String value) => _login = value;

  String? _senha;
  setSenha(String value) => _senha = value;

  Future<bool> auth() async {
    loader.value = true;

    await Future.delayed(const Duration(seconds: 2));
    loader.value = false;
    if (_login == '1' && _senha == '1') {
      PrefsService.save(_login!);
      return true;
    }
    return false;
  }
}
