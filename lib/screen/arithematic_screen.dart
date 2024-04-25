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
  int result = 0;

  String group = 'MyGroup';

  ArithematicModel? arithematicModel;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Arithematic Calculations",
        ),
      ),
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
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
              ListTile(
                title: const Text('Add'),
                leading: Radio(
                  value: 'add',
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(
                      () {
                        group = value!;
                      },
                    );
                  },
                ),
              ),
              ListTile(
                title: const Text('Subtract'),
                leading: Radio(
                  value: 'subtract',
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(
                      () {
                        group = value!;
                      },
                    );
                  },
                ),
              ),
              ListTile(
                title: const Text('Multiply'),
                leading: Radio(
                  value: 'multiply',
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(
                      () {
                        group = value!;
                      },
                    );
                  },
                ),
              ),
              ListTile(
                title: const Text('Divide'),
                leading: Radio(
                  value: 'divide',
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(
                      () {
                        group = value!;
                      },
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      arithematicModel = ArithematicModel(
                        first: first!,
                        second: second!,
                      );
                      if (group == 'add') {
                        result = arithematicModel!.addition();
                      } else if (group == 'subtract') {
                        result = arithematicModel!.subtraction();
                      } else if (group == 'multiply') {
                        result = arithematicModel!.multiply();
                      } else if (group == 'divide') {
                        result = arithematicModel!.divide();
                      }
                    });
                  }
                },
                child: const Text(
                  "Calculate",
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
      ),
    );
  }
}
