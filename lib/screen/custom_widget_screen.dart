import 'package:assignment_1/common_widgets/my_button.dart';
import 'package:assignment_1/common_widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomWidgetScreen extends StatefulWidget {
  const CustomWidgetScreen({super.key});

  @override
  State<CustomWidgetScreen> createState() => _CustomWidgetScreenState();
}

class _CustomWidgetScreenState extends State<CustomWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    int? first;
    int? second;
    int result = 0;

    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Form(
        child: Column(
          children: [
            MyTextFormField(
              onChanged: (value) {
                first = int.parse(value);
              },
              text: "Enter first number",
              keyboardType: TextInputType.number,
            ),
            MyTextFormField(
              onChanged: (value) {
                second = int.parse(value);
              },
              text: "Enter second number",
              keyboardType: TextInputType.number,
            ),
            MyButton(
              onPressed: () {
                setState(() {
                  result = first! + second!;
                });
              },
              text: "Add",
            ),
            Text(
              style: const TextStyle(
                fontSize: 25,
              ),
              "The Sum of the numbers are : $result",
            ),
          ],
        ),
      ),
    );
  }
}
