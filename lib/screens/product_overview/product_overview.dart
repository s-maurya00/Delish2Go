// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:delish2go/config/colors.dart';

enum SigninCharacter { fill, outline }
class ProductOverview extends StatefulWidget {
  //const ProductOverview({super.key, required this.productName, required this.productImage});
  final String productName;
  final String productImage;
  const ProductOverview({required this.productImage, required this.productName});
  
  @override
  // ignore: library_private_types_in_public_api
  _ProductOverviewState createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {

  Widget bottomNavigatorBar({
    required Color iconColor,
    required Color backgroundColor,
    required Color color,
    required String title,
    required IconData iconData,
    // required Function onTap,
    
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 17,
              color: Colors.yellowAccent,
              
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(color: color),
              
              
            ),
          ],)
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigatorBar(
            iconColor: Colors.grey,
            backgroundColor: textColor, 
            color: Colors.white10, 
          
          title: "Add to Wishlist",
          iconData: Icons.favorite_outline,

          ),
          bottomNavigatorBar(
            backgroundColor: primaryColor, 
            color: textColor, 
          iconColor: Colors.white70,
          title: "Go to Cart",
          iconData: Icons.shop_outlined,

          ),
        ],
        ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.yellowAccent),
        title: const Text(
          "Product Overview",
          style: TextStyle(color: Colors.black),
        ),

      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              width:double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text(widget.productName,),
                    subtitle: Text("\$50"),
                  ),
                  Container(
                    height: 250,
                    padding: const EdgeInsets.all(40),
                    child: Image.network(widget.productImage,)

                  ),
                  // Container(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   width: double.infinity,
                  //   child: Text("Available options",
                  //   textAlign: TextAlign.start,
                  //   style: TextStyle(
                  //     color: textColor,
                  //     fontWeight: FontWeight.w600, 
                  //   ),
                  //   ),
                  // ),
                  // Padding(padding: const EdgeInsets.symmetric(
                  //   horizontal: 10,),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Row(
                  //         children: [
                  //           CircleAvatar(
                  //             radius: 3,
                  //             backgroundColor: Colors.green[700],
                  //           ),
                  //           Radio(
                  //             activeColor: Colors.green[700],
                  //             onChanged: (value){
                                
                  //             },
                  //           )
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  //   )
                   Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: ListView(
                children: [
                  Text(
                    "About This Product",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "of a customer. Wikipedi In marketing, a product is an object or system made available for consumer use; it is anything that can be offered to a market to satisfy the desire or need of a customer. Wikipedi",
                    style: TextStyle(
                      fontSize: 16,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
                ],)
            ),
            )
        ],),
      );
  }
  }