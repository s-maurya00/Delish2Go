import 'package:flutter/material.dart';

import 'package:delish2go/screens/home/drawer_side.dart';

import 'package:delish2go/config/colors.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  Widget listTile({IconData? icon, required String title}) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        const Divider(
          height: 1,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          backgroundColor: const Color(0xffd6b738),
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 5.0,
          title: const Text(
            "My Profile",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        drawer: const DrawerSide(),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  color: primaryColor,
                ),
                Container(
                    height: 548,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: scaffoldBackgroundColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        )),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                width: 250,
                                height: 80,
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sushil Maurya",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: textColor),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text("sushil@somaiya.edu"),
                                      ],
                                    ),
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: primaryColor,
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundColor:
                                            scaffoldBackgroundColor,
                                        child: Icon(
                                          Icons.edit,
                                          color: primaryColor,
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                        listTile(
                          icon: Icons.shop_outlined,
                          title: "My Orders",
                        ),
                        listTile(
                          icon: Icons.location_on_outlined,
                          title: "My Delivery Address",
                        ),
                        listTile(
                          icon: Icons.person_outline,
                          title: "Refer A Friend",
                        ),
                        listTile(
                          icon: Icons.file_copy_outlined,
                          title: "Terms & Conditions",
                        ),
                        listTile(
                          icon: Icons.policy_outlined,
                          title: "Privacy Policy",
                        ),
                        listTile(
                          icon: Icons.add_chart,
                          title: "About",
                        ),
                        listTile(
                          icon: Icons.exit_to_app_outlined,
                          title: "Log out",
                        ),
                      ],
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 30),
              child: CircleAvatar(
                  radius: 50,
                  backgroundColor: primaryColor,
                  child: CircleAvatar(
                    backgroundImage: const NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png"),
                    radius: 45,
                    backgroundColor: scaffoldBackgroundColor,
                  )),
            )
          ],
        ));
  }
}
