import 'package:assignment_1/screen/output_screen.dart';
import 'package:flutter/material.dart';

class GetListTileStudent extends StatelessWidget {
  const GetListTileStudent({
    this.imageName,
    required this.firstName,
    required this.lastName,
    required this.address,
    required this.index,
    super.key,
  });

  final String firstName;
  final String lastName;
  final String address;
  final String? imageName;
  final int index;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> studentsList = [];
    studentsList.add({
      'fname': firstName,
      'lname': lastName,
      'address': address,
    });
    final student = studentsList[index];
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(
          'assets/images/$imageName!',
        ),
      ),
      title: Text("${student['fname']} ${student['lname']}"),
      subtitle: const Text("data"),
      trailing: Wrap(spacing: 8, children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.delete))
      ]),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return OutputScreen(fullName: 'User $index');
            },
          ),
        );
      },
    );
  }
}
