// ignore_for_file: avoid_print, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("HI Mr Green");
        },
        child: Icon(Icons.menu),
        elevation: 20,
        mini: true,
        isExtended: true,
      ),
      appBar: AppBar(
        title: Text("Page 3"),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Page 3",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 100,
              ),
              MaterialButton(
                onPressed: () {},
                child: Text("Page 3"),
                color: Colors.redAccent,
                height: 100,
                minWidth: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
