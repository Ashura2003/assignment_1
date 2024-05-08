import 'package:assignment_1/common_widgets/my_button.dart';
import 'package:assignment_1/common_widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';

class StudentDetailsScreen extends StatefulWidget {
  const StudentDetailsScreen({super.key});

  @override
  State<StudentDetailsScreen> createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  String? firstName;
  String? lastName;
  String? address;
  List<Map<String, String>> studentsList = [];
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    const gap = SizedBox(
      height: 8,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Student Details",
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                MyTextFormField(
                    onChanged: (value) {
                      setState(() {
                        firstName = value;
                      });
                    },
                    text: "Enter first name"),
                gap,
                MyTextFormField(
                    onChanged: (value) {
                      setState(() {
                        lastName = value;
                      });
                    },
                    text: "Enter last name"),
                gap,
                MyTextFormField(
                    onChanged: (value) {
                      setState(() {
                        address = value;
                      });
                    },
                    text: "Enter address"),
                gap,
                SizedBox(
                  width: 250,
                  child: MyButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        setState(() {
                          studentsList.add({
                            'fname': firstName!,
                            'lname': lastName!,
                            'address': address!
                          });
                        });
                      }
                    },
                    text: "Save Details",
                  ),
                ),
                gap,
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Expanded(
                      child: ListView.builder(
                        itemCount: studentsList.length,
                        itemBuilder: (context, index) {
                          final student = studentsList[index];
                          return ListTile(
                            leading: const CircleAvatar(
                              foregroundImage: AssetImage(
                                'assets/images/image1.jpg',
                              ),
                            ),
                            title: Text(
                              "${student['fname']} ${student['lname']}",
                            ),
                            subtitle: Text(
                              "${student['address']}",
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
