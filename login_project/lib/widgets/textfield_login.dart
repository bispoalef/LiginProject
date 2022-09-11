// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  final String label;
  final Function(String) onChanged;
  final bool obscureText;

  const TextFieldLogin({
    Key? key,
    required this.label,
    required this.onChanged,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(label: Text(label)),
      onChanged: onChanged,
      obscureText: obscureText,
    );
  }
}
