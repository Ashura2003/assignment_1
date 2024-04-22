import 'package:assignment_1/model/swap_number_model.dart';
import 'package:flutter/material.dart';

class SwapNumberScreen extends StatefulWidget {
  const SwapNumberScreen({super.key});

  @override
  State<SwapNumberScreen> createState() => _SwapNumberScreenState();
}

class _SwapNumberScreenState extends State<SwapNumberScreen> {
  int first = 0;
  int second = 0;
  String result = '';

  SwapNumberModel? swapNumberModel;

  Widget sizedbox = const SizedBox(
    height: 8,
  );

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swap Number'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  first = int.parse(value);
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter the first number',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter the first number";
                }
                return null;
              },
            ),
            sizedbox,
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  second = int.parse(value);
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter the second number',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter the second number";
                }
                return null;
              },
            ),
            sizedbox,
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  setState(() {
                    swapNumberModel =
                        SwapNumberModel(first: first, second: second);
                    result = swapNumberModel!.swapNumbers();
                  });
                }
              },
              child: const Text('Swap'),
            ),
            sizedbox,
            Text(
              style: const TextStyle(
                fontSize: 30,
              ),
              'The first number is $first and the second number is $second',
            )
          ],
        ),
      ),
    );
  }
}
