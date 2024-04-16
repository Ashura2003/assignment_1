import 'package:flutter/material.dart';

class SwapNumberScreen extends StatefulWidget {
  const SwapNumberScreen({super.key});

  @override
  State<SwapNumberScreen> createState() => _SwapNumberScreenState();
}

class _SwapNumberScreenState extends State<SwapNumberScreen> {
  int first = 0;
  int second = 0;
  String? result;
  Widget sizedbox = const SizedBox(
    height: 8,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swap Number'),
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              first = int.parse(value);
            },
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter the first number'),
          ),
          sizedbox,
          TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              second = int.parse(value);
            },
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter the second number'),
          ),
          sizedbox,
          ElevatedButton(
            onPressed: () {
              setState(() {});
              first = first + second;
              second = first - second;
              first = first - second;
            },
            child: const Text('Swap'),
          ),
          sizedbox,
          Text(
            style: const TextStyle(fontSize: 30),
            'The first number is $first and the second number is $second',
          )
        ],
      ),
    );
  }

  swapNumbers({required int first, required int second}) {
    return 'Now the fisrt number is $first and the second number is $second';
  }
}
