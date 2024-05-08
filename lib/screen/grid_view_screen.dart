import 'package:assignment_1/common_widgets/my_card.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View Screen"),
        backgroundColor: Colors.tealAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return const MyCard(
                  imageName: "image1.jpg",
                  productName: "Hollow Knight",
                  productPrice: 14,
                );
              }),
          // child: Expanded(
          //   child: GridView.count(
          //     primary: false,
          //     padding: const EdgeInsets.all(20),
          //     crossAxisSpacing: 5,
          //     mainAxisSpacing: 5,
          //     crossAxisCount: 2,
          //     children: <Widget>[
          //       const SizedBox(
          //         height: 100,
          //         // padding: const EdgeInsets.all(8),
          //         child: MyCard(
          //           imageName: "image1.jpg",
          //           productName: "Hollow Knight",
          //           productPrice: 14,
          //         ),
          //       ),
          //       Container(
          //         // padding: const EdgeInsets.all(5),
          //         child: const MyCard(
          //           imageName: "image1.jpg",
          //           productName: "Hollow Knight",
          //           productPrice: 14,
          //         ),
          //       ),
          //       Container(
          //         // padding: const EdgeInsets.all(8),
          //         child: const MyCard(
          //           imageName: "image1.jpg",
          //           productName: "Hollow Knight",
          //           productPrice: 14,
          //         ),
          //       ),
          //       Container(
          //         // padding: const EdgeInsets.all(8),
          //         child: const MyCard(
          //           imageName: "image1.jpg",
          //           productName: "Hollow Knight",
          //           productPrice: 14,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
