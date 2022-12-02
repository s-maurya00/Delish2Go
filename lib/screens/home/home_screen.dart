import 'package:flutter/material.dart';

import 'package:delish2go/screens/home/drawer_side.dart';
import 'package:delish2go/screens/product_overview/product_overview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _buildHerbsProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Herbs Seasonings'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Image.asset(
                      'assets/1.jpeg',
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductOverview(
                                  productImage:
                                      "https://cdn.shopify.com/s/files/1/0279/6329/3831/products/IMG_7057_1024x1024.jpg?v=1649306527",
                                  productName: "choco",
                                )));
                  },
                ),
                const Text(
                  'Food',
                ),
              ]),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Image.asset(
                      'assets/1.jpeg',
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductOverview(
                                  productImage:
                                      "https://cdn.shopify.com/s/files/1/0279/6329/3831/products/IMG_7057_1024x1024.jpg?v=1649306527",
                                  productName: "choco",
                                )));
                  },
                ),
                const Text(
                  'Food',
                ),
              ]),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Image.asset(
                      'assets/1.jpeg',
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductOverview(
                                  productImage:
                                      "https://cdn.shopify.com/s/files/1/0279/6329/3831/products/IMG_7057_1024x1024.jpg?v=1649306527",
                                  productName: "choco",
                                )));
                  },
                ),
                const Text(
                  'Food',
                ),
              ]),
            ],
          ),
        ),
      ],
    );
  }

  // Widget _buildRootProduct(context) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 20),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: const [
  //             Text('Herbs Seasonings'),
  //             Text(
  //               'view all',
  //               style: TextStyle(color: Colors.grey),
  //             ),
  //           ],
  //         ),
  //       ),
  //       SingleChildScrollView(
  //         scrollDirection: Axis.horizontal,
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Column(mainAxisAlignment: MainAxisAlignment.center, children: [
  //               GestureDetector(
  //                 child: Image.asset(
  //                   'assets/1.jpeg',
  //                 ),
  //                 onTap: () {
  //                   Navigator.push(
  //                       context,
  //                       MaterialPageRoute(
  //                           builder: (context) => ProductOverview(
  //                                 productImage:
  //                                     "https://cdn.shopify.com/s/files/1/0279/6329/3831/products/IMG_7057_1024x1024.jpg?v=1649306527",
  //                                 productName: "choco",
  //                               )));
  //                 },
  //               ),
  //               Text(
  //                 'Flutter',
  //                 // textDirection: TextDirection.ltr,
  //               ),
  //             ]),
  //             Column(children: [
  //               GestureDetector(
  //                 child: Image.asset(
  //                   'assets/1.jpeg',
  //                 ),
  //                 onTap: () {
  //                   Navigator.push(
  //                       context,
  //                       MaterialPageRoute(
  //                           builder: (context) => ProductOverview(
  //                                 productImage:
  //                                     "https://cdn.shopify.com/s/files/1/0279/6329/3831/products/IMG_7057_1024x1024.jpg?v=1649306527",
  //                                 productName: "choco",
  //                               )));
  //                 },
  //               ),
  //               Text(
  //                 'Flutter',
  //                 // textDirection: TextDirection.ltr,
  //               ),
  //             ]),
  //             Column(children: [
  //               GestureDetector(
  //                 child: Image.asset(
  //                   'assets/1.jpeg',
  //                 ),
  //                 onTap: () {
  //                   Navigator.push(
  //                       context,
  //                       MaterialPageRoute(
  //                           builder: (context) => ProductOverview(
  //                                 productImage:
  //                                     "https://cdn.shopify.com/s/files/1/0279/6329/3831/products/IMG_7057_1024x1024.jpg?v=1649306527",
  //                                 productName: "choco",
  //                               )));
  //                 },
  //               ),
  //               Text(
  //                 'Flutter',
  //                 // textDirection: TextDirection.ltr,
  //               ),
  //             ]),
  //           ],
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(icon, size: 32),
      title: Text(
        title,
        style: const TextStyle(color: Colors.black45),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerSide(),
      appBar: AppBar(
        backgroundColor: const Color(0xffd6b738),
        elevation: 5.0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: const [
          CircleAvatar(
            radius: 20,
            backgroundColor: Color.fromARGB(255, 225, 201, 168),
            child: Icon(
              Icons.shopping_cart,
              size: 20,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromARGB(255, 225, 201, 168),
              child: Icon(
                Icons.search,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvdje_pBrtBDzZS23tvb5uueIyeIe4LSpkgA&usqp=CAU"),
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Row(
                children: [
                  Expanded(
                    // flex: 2,
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 130, bottom: 10),
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: const BoxDecoration(
                              color: Color(0xffd1ad17),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Delish',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.green,
                                      blurRadius: 3,
                                      offset: Offset(3, 3),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          '30% Off',
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'On all items',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Featured Partners'),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildHerbsProduct(context),
                  // _buildFreshProduct(context),
                  // _buildRootProduct(context),
                  // _buildHerbsProduct(context),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Restaurants Near You'),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildHerbsProduct(context),
                  // _buildFreshProduct(context),
                  // _buildRootProduct(context),
                  // _buildHerbsProduct(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
