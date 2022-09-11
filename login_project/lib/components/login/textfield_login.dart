// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  String text;
  void Function(String)? onChange;

  TextFieldLogin({
    Key? key,
    required this.text,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(label: Text(text)),
      onChanged: onChange,
    );
  }
}
