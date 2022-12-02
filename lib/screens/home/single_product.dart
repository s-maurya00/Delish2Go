// import 'package:flutter/material.dart';
// import 'package:pls_project/config/colors.dart';

// class SingleProduct extends StatelessWidget {
//   final String productImage;
//   final String productName;
//   final Function onTap;

//   SingleProduct(
//       {required this.productImage,
//       required this.productName,
//       required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           Container(
//             margin: EdgeInsets.only(right: 10),
//             height: 230,
//             width: 165,
//             decoration: BoxDecoration(
//               color: Color(0xffd9dad9),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 GestureDetector(
//                   onTap: onTap,
//                   child: Container(
//                     height: 150,
//                     padding: EdgeInsets.all(5),
//                     width: double.infinity,
//                     child: Image.network(
//                       productImage,
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 2,
//                   child: Padding(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           productName,
//                           style: TextStyle(
//                             color: textColor,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           '50\$/50 Gram',
//                           style: TextStyle(
//                             color: Colors.grey,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:delish2go/config/colors.dart';

class SingleProduct extends StatelessWidget {
  final String productImage;
  final String productName;
  final Function onTap;

  SingleProduct(
      {required this.productImage,
      required this.productName,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: 200,
            //  height: 230,
            width: 160,
            decoration: BoxDecoration(
              // color: Color(0xffd9dad9),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 2, child: Image.asset('assets/1.jpeg')),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Krispy Creme',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'St. Georgece Terrace',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 5),
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(children: [
                                  Expanded(
                                      child: Text(
                                    '25 min',
                                    style: TextStyle(fontSize: 10),
                                  )),
                                  Center(
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      size: 20,
                                      color: Colors.yellow,
                                    ),
                                  )
                                ]),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.remove,
                                      size: 15,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      '1',
                                      style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.add,
                                      size: 15,
                                      color: Colors.orange,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
