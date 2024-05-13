import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stack Screen",
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.brown[800],
              ),
            ),
            Center(
              child: Container(
                height: 80,
                width: 80,
                color: Colors.brown,
              ),
            ),
            Center(
              child: Container(
                height: 60,
                width: 60,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
