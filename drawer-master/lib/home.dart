// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:day16_hw/drawer.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: Text("Drawer"),
        backgroundColor: Colors.red[300],
        // leading: IconButton(
        //     onPressed: () => _scaffoldkey.currentState!.openDrawer(),
        //     icon: Icon(Icons.)),
      ),
      key: _scaffoldkey,
      drawer: Drwr(),

      body: Container(
decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/t.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        
      ),
      
    );
  }
}
