import 'package:flutter/material.dart';

class GetListTile extends StatelessWidget {
  const GetListTile({
    required this.index,
    super.key,
  });

  final int index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person),
      title: Text("User $index"),
      subtitle: const Text("data"),
      trailing: Wrap(spacing: 8, children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.delete))
      ]),
      onTap: () {
        debugPrint('User $index tapped');
      },
    );
  }
}
