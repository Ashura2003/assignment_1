import 'package:assignment_1/common_widgets/get_list_tile_users.dart';
import 'package:flutter/material.dart';

class SocialMediaListScreen extends StatelessWidget {
  const SocialMediaListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "New Arrivals",
          ),
        ),
        body: Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return GetListTileUser(
                  index: 1,
                  assetURL: 'assets/images/image2.jpg',
                  assetURL2: 'assets/images/image1.jpg',
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 6),
        )
        // body: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       for (int i = 0; i <= 100; i++) ...{
        //         ListTileWidget(
        //           index: i,
        //           assetURL: 'assets/images/image_1.jpeg',
        //           assetURL2: 'assets/images/image_2.png',
        //         ),
        //         const Divider(),
        //       },
        //     ],
        //   ),
        // ),
        );
    // body: ListTileWidget(assetURL: "assets/images/image_1.jpeg"));
  }
}
