import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flexible Example'),
        ),
        body: Flex(
          direction: Axis.vertical, // Vertical arrangement
          children: <Widget>[
            Flexible(
              flex: 1, // This widget will take 1/3 of the available space
              child: Container(
                color: Colors.red,
                child: const Center(
                  child: Text('Widget 1'),
                ),
              ),
            ),
            Flexible(
              flex: 2, // This widget will take 2/3 of the available space
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Text('Widget 2'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
