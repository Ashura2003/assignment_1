import 'package:assignment_1/model/arithematic_model.dart';
import 'package:flutter/material.dart';

class ArithematicScreen extends StatefulWidget {
  const ArithematicScreen({super.key});

  @override
  State<ArithematicScreen> createState() => _ArithematicScreenState();
}

class _ArithematicScreenState extends State<ArithematicScreen> {
  @override
  int? first;
  int? second;
  int result =0;

  ArithematicModel? arithematicModel;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              key: formKey,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                first = int.parse(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter first number",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter first number";
                }
                return null;
              },
            ),
            TextFormField(
              key: formKey,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                second = int.parse(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter second number",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Second Number";
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  setState(() {
                    arithematicModel = ArithematicModel(
                      first: first!,
                      second: second!,
                    );
                    result = arithematicModel!.addition();
                  });
                }
              },
              child: const Text(
                "Sum",
              ),
            ),
            Text(
              style: const TextStyle(
                fontSize: 25,
              ),
              "The sum of the two numbers is : $result",
            )
          ],
        ),
      ),
    );
  }
}


