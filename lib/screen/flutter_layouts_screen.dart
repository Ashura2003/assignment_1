import 'package:flutter/material.dart';

class FlutterLayoutsScreen extends StatelessWidget {
  const FlutterLayoutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Layouts",
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        color: Colors.blueAccent[100],
        height: 50,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(Icons.phone),
                Text("Call"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.route),
                Text("Route"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.share),
                Text("Share"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
