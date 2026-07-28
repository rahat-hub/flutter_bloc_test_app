
import 'package:flutter/material.dart';

class UsernameField extends StatelessWidget {
  const UsernameField({this.labelText = 'Username', this.onChanged, super.key});

  final String labelText;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
      onChanged: onChanged,
    );
  }
}
