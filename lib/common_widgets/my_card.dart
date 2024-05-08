import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.imageName,
    required this.productName,
    required this.productPrice,
  });

  final String imageName;
  final String productName;
  final double productPrice;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            children: [
              Flexible(
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Expanded(
                    child: Image.asset('assets/images/$imageName'),
                  ),
                ),
              ),
              Text(
                style: const TextStyle(
                  fontSize: 10,
                ),
                productName,
              ),
              Text(
                style: const TextStyle(
                  fontSize: 10,
                ),
                "\$ $productPrice",
              ),
            ],
          ),
          // child: Text(
          //   style: const TextStyle(
          //     fontSize: 20,
          //   ),
          //   "${students[index].firstName} \n ${students[index].lastName}",
          // ),
        ),
      ),
    );
  }
}
