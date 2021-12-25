// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:day19_nav_practice/page/page1.dart';
import 'package:day19_nav_practice/page/page2.dart';
import 'package:day19_nav_practice/page/page3.dart';
import 'package:day19_nav_practice/page/page4.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myCurrentIndex = 0;
  final pages = [Page1(), Page2(), Page3(), Page4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: myCurrentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        //enableFeedback: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.green,
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w700,
        ),
        currentIndex: myCurrentIndex,
        onTap: (index) {
          setState(() {
            myCurrentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              myCurrentIndex == 0
                  ? Icons.home
                  : myCurrentIndex == 1
                      ? Icons.home_repair_service
                      : myCurrentIndex == 2
                          ? Icons.home_work_sharp
                          : Icons.hourglass_empty,
              size: myCurrentIndex == 1 ? 10 : 40,
            ),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
            backgroundColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
