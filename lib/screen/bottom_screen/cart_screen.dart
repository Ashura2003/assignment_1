import 'package:assignment_1/model/item_model.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<ItemModel> lstItems = [
    ItemModel(itemId: 1, itemName: 'Laptop', itemPrice: 120000),
    ItemModel(itemId: 2, itemName: 'Phone', itemPrice: 20000),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DataTable(
        headingRowColor: MaterialStateColor.resolveWith(
          (states) => Colors.grey,
        ),
        border: TableBorder.all(),
        columns: const [
          DataColumn(
            label: Expanded(
              child: Center(
                child: Text("Name"),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Center(
                child: Text("Price"),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Center(
                child: Text("Action"),
              ),
            ),
          ),
        ],
        rows: [
          // DataRow(
          //   cells: [
          //     DataCell(
          //       Center(
          //         child: Text(
          //           lstItems[0].itemName,
          //         ),
          //       ),
          //     ),
          //     DataCell(
          //       Center(
          //         child: Text(
          //           lstItems[0].itemPrice.toString(),
          //         ),
          //       ),
          //     ),
          //     DataCell(
          //       Center(
          //         child: ElevatedButton(
          //           onPressed: () {},
          //           child: const Text("Remove"),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // DataRow(
          //   cells: [
          //     DataCell(
          //       Center(
          //         child: Text(
          //           lstItems[1].itemName,
          //         ),
          //       ),
          //     ),
          //     DataCell(
          //       Center(
          //         child: Text(
          //           lstItems[1].itemPrice.toString(),
          //         ),
          //       ),
          //     ),
          //     DataCell(
          //       Center(
          //         child: Expanded(
          //           child: Wrap(
          //             children: [
          //               Expanded(
          //                 child: ElevatedButton(
          //                   onPressed: () {},
          //                   child: const Icon(
          //                     Icons.edit,
          //                   ),
          //                 ),
          //               ),
          //               Expanded(
          //                 child: ElevatedButton(
          //                   onPressed: () {},
          //                   child: const Icon(
          //                     Icons.delete,
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),

          //   ],
          // )
          for (int i = 0; i < lstItems.length; i++) ...{
            DataRow(
              cells: [
                DataCell(
                  Center(
                    child: Text(
                      lstItems[i].itemName,
                    ),
                  ),
                ),
                DataCell(
                  Center(
                    child: Text(
                      lstItems[i].itemPrice.toString(),
                    ),
                  ),
                ),
                DataCell(
                  Row(
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.white,
                          ),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.edit,
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.white,
                          ),
                        ),
                        onPressed: () {
                          
                        },
                        child: const Icon(
                          Icons.delete,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          }
        ],
      ),
    );
  }
}
