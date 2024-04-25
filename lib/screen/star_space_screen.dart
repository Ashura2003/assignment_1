import 'package:flutter/material.dart';

class StarSpaceScreen extends StatelessWidget {
  const StarSpaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stars"),
        backgroundColor: Colors.greenAccent[200],
      ),
      body: Container(
        color: Colors.blueAccent[100],
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
            ),
            Spacer(),
            Icon(
              Icons.star,
            ),
            Icon(
              Icons.star,
            ),
          ],
        ),
      ),
    );
  }
}
