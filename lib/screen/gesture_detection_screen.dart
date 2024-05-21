import 'package:flutter/material.dart';

class GestureDetectionScreen extends StatelessWidget {
  const GestureDetectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            debugPrint("I am clicked");
          },
          child: const Text(
            "Click me!",
          ),
        ),
      ),
    );
  }
}
