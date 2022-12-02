import 'package:flutter/material.dart';

import 'package:delish2go/screens/home/home_screen.dart';
import '../my_profile/my_profile.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({super.key});

  Widget listTile(
      {required IconData icon,
      required String title,
      required Function() onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, size: 32),
      title: Text(
        title,
        style: const TextStyle(color: Colors.black45),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xffd1ad17),
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 43,
                    child:
                        CircleAvatar(radius: 40, backgroundColor: Colors.red),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Welcome Guest"),
                      const SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 30,
                        child: MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(
                              width: 2,
                            ),
                          ),
                          child: const Text("Login"),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            listTile(
                icon: Icons.home_outlined,
                title: "Home",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                }),
            listTile(
                icon: Icons.shopping_cart_outlined,
                title: "Review Cart",
                onTap: () {}),
            listTile(
                icon: Icons.person_outlined,
                title: "My Profile",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyProfile(),
                      ));
                }),
            listTile(
                icon: Icons.notifications_outlined,
                title: "Notification",
                onTap: () {}),
            listTile(
                icon: Icons.star_outlined,
                title: "Rating and Review",
                onTap: () {}),
            listTile(
                icon: Icons.favorite_outline,
                title: "Raise a Complaint",
                onTap: () {}),
            listTile(icon: Icons.copy_outlined, title: "Rating", onTap: () {}),
            listTile(
                icon: Icons.format_quote_outlined, title: "FAQs", onTap: () {}),
            Container(
              height: 350,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 8),
                    child: Text(
                      "Contact Support",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text("Call Us: "),
                      SizedBox(
                        width: 10,
                      ),
                      Text("+91 98638 25308"),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // const SingleChildScrollView(
                  //   scrollDirection: Axis.horizontal,
                  // ),
                  Row(
                    children: const [
                      Text("Mail Us: "),
                      SizedBox(
                        width: 10,
                      ),
                      Text("delish2Go@food.com"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
