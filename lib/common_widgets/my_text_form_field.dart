import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    required this.onChanged,
    required this.text,
    this.keyboardType,
    super.key,
  });

  final ValueChanged<String> onChanged;
  final String text;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType ?? TextInputType.name,
      decoration: InputDecoration(
        labelText: text,
        border: const OutlineInputBorder(),
      ),
      onChanged: onChanged,
      validator: (value) {
        if (value!.isEmpty) {
          return "Please Enter the required value";
        }
        return null;
      },
    );
  }
}
