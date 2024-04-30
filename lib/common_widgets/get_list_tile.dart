import 'package:assignment_1/screen/output_screen.dart';
import 'package:flutter/material.dart';

class GetListTile extends StatelessWidget {
  const GetListTile({
    required this.imageName,
    required this.index,
    super.key,
  });

  final int index;

  final String imageName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(
          'assets/images/$imageName',
        ),
      ),
      title: Text("User $index"),
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
