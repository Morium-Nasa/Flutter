// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Drwr extends StatelessWidget {
  const Drwr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 250,
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.orange.withOpacity(0.6),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/tanvir.jpg"),
                              maxRadius: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Tanvir Ahammed Sobuj",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "tanvirahammedsobuj@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            MaterialButton(
                              minWidth: 240,
                              onPressed: () {},
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5.0),
                            // padding: EdgeInsets.all(20.0),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                ),
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "Add Leads",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.all(2.0),
                            // padding: EdgeInsets.all(20.0),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "Points Redemtions",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.all(2.0),
                            // padding: EdgeInsets.all(20.0),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                ),
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "Add Leads",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.all(2.0),
                            // padding: EdgeInsets.all(20.0),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.exposure_plus_1,
                                  color: Colors.white,
                                ),
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "Points",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.all(2.0),
                            // padding: EdgeInsets.all(20.0),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "Profile",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.all(2.0),
                            // padding: EdgeInsets.all(20.0),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.assessment_rounded,
                                  color: Colors.white,
                                ),
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "Dashboard",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.all(2.0),
                            // padding: EdgeInsets.all(20.0),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.home,
                                  color: Colors.white,
                                ),
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "Home",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                          Divider(
                            thickness: 2.0,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Communicate",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(2.0),
                            // padding: EdgeInsets.all(20.0),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "Privacy Policy",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.all(2.0),
                            // padding: EdgeInsets.all(20.0),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.call,
                                  color: Colors.white,
                                ),
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "Contact Us",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.all(2.0),
                            // padding: EdgeInsets.all(20.0),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.memory_rounded,
                                  color: Colors.white,
                                ),
                                label: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "About Us",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 5,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
