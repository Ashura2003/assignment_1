import 'package:assignment_1/model/simple_interest_model.dart';
import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  double? principle = 0;
  double? time = 0;
  double? rate = 0;
  double result = 0;

  // Importing Simple Interest Model
  SimpleInterestModel? simpleInterestModel;

  Widget sizedbox = const SizedBox(
    height: 8,
  );

  //Create global key for form
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Simple Interest',
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) {
                principle = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Principle',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Principle";
                }
                return null;
              },
            ),
            sizedbox,
            TextFormField(
              onChanged: (value) {
                time = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Time',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Time";
                }
                return null;
              },
            ),
            sizedbox,
            TextFormField(
              onChanged: (value) {
                rate = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Rate',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Rate";
                }
                return null;
              },
            ),
            sizedbox,
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  setState(() {
                    simpleInterestModel = SimpleInterestModel(
                        principle: principle, time: time, rate: rate);
                    result = simpleInterestModel!.calculateSimpleInterest();
                  });
                }
                //Run the code only if the data is validated
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
      ),
    );
  }
}
