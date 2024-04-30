import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final String? fullName;
  const OutputScreen({required this.fullName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Output $fullName",
        ),
      ),
      body: Center(
        child: Text(
          "Hello $fullName",
        ),
      ),
    );
  }
}
