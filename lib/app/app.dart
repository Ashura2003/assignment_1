import 'package:assignment_1/screen/grid_view_screen.dart';
import 'package:assignment_1/screen/social_media_list_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SocialMediaListScreen(),
    );
  }
}
