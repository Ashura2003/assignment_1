// import 'package:assignment_1/common_widgets/get_list_tile_users.dart';
// import 'package:flutter/material.dart';

// class ListTileScreen extends StatelessWidget {
//   const ListTileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "List Tile Screen",
//         ),
//         backgroundColor: Colors.cyan[400],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             for (int i = 1; i <= 50; i++) ...{
//               if (i % 2 == 0) ...{
//                 GetListTileUser(
//                   imageName: 'image2.jpg',
//                   index: i,
//                 ),
//               } else ...{
//                 GetListTileUsers(
//                   imageName: 'image1.jpg',
//                   index: i,
//                 )
//               }
//             }
//           ],
//         ),
//       ),
//     );
//   }
// }
