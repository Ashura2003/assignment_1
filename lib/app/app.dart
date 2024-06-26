import 'package:assignment_1/screen/gesture_detection_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GestureDetectionScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
