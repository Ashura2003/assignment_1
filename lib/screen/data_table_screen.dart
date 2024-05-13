import 'package:assignment_1/app/app.dart';
import 'package:flutter/material.dart';

class DataTableScreen extends StatelessWidget {
  const DataTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Data Table',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
    );
  }
}