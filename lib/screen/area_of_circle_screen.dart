import 'package:assignment_1/model/area_of_circle_model.dart';
import 'package:flutter/material.dart';

class AreaCircleScreen extends StatefulWidget {
  const AreaCircleScreen({super.key});

  @override
  State<AreaCircleScreen> createState() => _AreaCircleScreenState();
}

class _AreaCircleScreenState extends State<AreaCircleScreen> {
  double? radius;
  double result = 0;

  //Relationship
  // Loosely coupled
  AreaOfCircleModel? areaCircleModel;

  // Create global key for form
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Area of Circle calculator',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              // Enter fradius
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  radius = double.parse(value);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                    //ErrorBoder
                  ),
                  hintText: 'Enter radius',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter radius to calculate";
                  } else {
                    return null;
                  }
                },
              ),

              const SizedBox(
                height: 8,
              ),

              ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    setState(
                      () {
                        areaCircleModel = AreaOfCircleModel(
                          radius: radius!,
                        );
                        result = areaCircleModel!.areaOfCircle();
                      },
                    );
                  }
                },
                child: const Text('Calculate'),
              ),
              const SizedBox(
                height: 8,
              ),
              RichText(
                text: TextSpan(
                    text: "A",
                    style: const TextStyle(
                      backgroundColor: Colors.green,
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "rea of Circle is : $result",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.normal),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
