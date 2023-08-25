import 'package:flutter/material.dart';
import 'package:flutter_application_5/models/home_item_model.dart';
import 'package:flutter_application_5/widgets/item_category.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});
  final List<ItemModel> ProductList = const [
    ItemModel(
      image: 'assets/apple.jpg',
      name: 'Apple mac book air',
    ),
    ItemModel(
      image: 'assets/iphone.jpg',
      name: 'Apple iphone 14 pro max',
    ),
    ItemModel(
      image: 'assets/labtop.jpg',
      name: 'Dell Vostro',
    ),
    ItemModel(
      image: 'assets/phone.jpg',
      name: 'samsung galaxy A34',
    ),
    ItemModel(
      image: 'assets/watch.jpg',
      name: 'Apple watch sereis 8',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      
      body: ListView.builder(
        itemCount: ProductList.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemCategory(
              itemData: ProductList[index], categorysColor: Colors.deepPurple);
        },
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class Page1 extends StatefulWidget {
//   const Page1({super.key});

//   @override
//   State<Page1> createState() => _Page1State();
// }

// class _Page1State extends State<Page1> {
//   @override
//   Widget build(BuildContext context) {
//     Map product = {"name": "Galaxy", "category": "Mobile", "price": "120"};

//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Image.asset(
//                 'assets/flash_logo.png',
//                 width: 400,
//                 height: 100,
//               ),
//               const Center(
//                   child: Text(
//                 "Home Page",
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               )),
//               Column(
//                 children: [
//                   Card(
//                     elevation: 8.0,
//                     margin: const EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: Colors.deepPurple,
//                           borderRadius: BorderRadius.circular(35)),
//                       child: ListTile(
//                           contentPadding: const EdgeInsets.symmetric(
//                               horizontal: 10, vertical: 10),
//                           title: Text(
//                             product['name'],
//                             style: const TextStyle(
//                                 color: Colors.white, fontWeight: FontWeight.bold),
//                           ),
//                           subtitle: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 product['category'],
//                                 style: const TextStyle(
//                                     color: Colors.white,
//                                     fontStyle: FontStyle.italic),
//                               ),
//                               Text(
//                                 product['price'],
//                                 style: const TextStyle(
//                                     color: Colors.white,
//                                     fontStyle: FontStyle.italic),
//                               ),
//                             ],
//                           )),
//                     ),
//                   ),
//                   Card(
//                     elevation: 8.0,
//                     margin: const EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: Colors.deepPurple,
//                           borderRadius: BorderRadius.circular(35)),
//                       child: ListTile(
//                           contentPadding: const EdgeInsets.symmetric(
//                               horizontal: 10, vertical: 10),
//                           title: Text(
//                             product['name'],
//                             style: const TextStyle(
//                                 color: Colors.white, fontWeight: FontWeight.bold),
//                           ),
//                           subtitle: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 product['category'],
//                                 style: const TextStyle(
//                                     color: Colors.white,
//                                     fontStyle: FontStyle.italic),
//                               ),
//                               Text(
//                                 product['price'],
//                                 style: const TextStyle(
//                                     color: Colors.white,
//                                     fontStyle: FontStyle.italic),
//                               ),
//                             ],
//                           )),
//                     ),
//                   ),
//                   Card(
//                     elevation: 8.0,
//                     margin: const EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: Colors.deepPurple,
//                           borderRadius: BorderRadius.circular(35)),
//                       child: ListTile(
//                           contentPadding: const EdgeInsets.symmetric(
//                               horizontal: 10, vertical: 10),
//                           title: Text(
//                             product['name'],
//                             style: const TextStyle(
//                                 color: Colors.white, fontWeight: FontWeight.bold),
//                           ),
//                           subtitle: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 product['category'],
//                                 style: const TextStyle(
//                                     color: Colors.white,
//                                     fontStyle: FontStyle.italic),
//                               ),
//                               Text(
//                                 product['price'],
//                                 style: const TextStyle(
//                                     color: Colors.white,
//                                     fontStyle: FontStyle.italic),
//                               ),
//                             ],
//                           )),
//                     ),
//                   ),
//                   Card(
//                     elevation: 8.0,
//                     margin: const EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: Colors.deepPurple,
//                           borderRadius: BorderRadius.circular(35)),
//                       child: ListTile(
//                           contentPadding: const EdgeInsets.symmetric(
//                               horizontal: 10, vertical: 10),
//                           title: Text(
//                             product['name'],
//                             style: const TextStyle(
//                                 color: Colors.white, fontWeight: FontWeight.bold),
//                           ),
//                           subtitle: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 product['category'],
//                                 style: const TextStyle(
//                                     color: Colors.white,
//                                     fontStyle: FontStyle.italic),
//                               ),
//                               Text(
//                                 product['price'],
//                                 style: const TextStyle(
//                                     color: Colors.white,
//                                     fontStyle: FontStyle.italic),
//                               ),
//                             ],
//                           )),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//    );
//   }
// }