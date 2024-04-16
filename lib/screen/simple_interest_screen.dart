import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  double? principle;
  double? time;
  double? rate;
  double result = 0;
  Widget sizedbox = const SizedBox(
    height: 8,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Simple Interest',
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              principle = double.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Principle',
            ),
          ),
          sizedbox,
          TextField(
            onChanged: (value) {
              time = double.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Time',
            ),
          ),
          sizedbox,
          TextField(
            onChanged: (value) {
              rate = double.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Rate',
            ),
          ),
          sizedbox,
          ElevatedButton(
            onPressed: () {
              setState(() {
                result = simpleInterest(
                    principle: principle, time: time, rate: rate);
              });
            },
            child: const Text("Calculate"),
          ),
          Text(
            style: const TextStyle(
              fontSize: 25,
            ),
            "The simple interest is : $result",
          )
        ],
      ),
    );
  }

  double simpleInterest({double? principle, double? time, double? rate}) {
    return ((principle ?? 1) * (time ?? 1) * (rate ?? 1) / 100);
  }
}
