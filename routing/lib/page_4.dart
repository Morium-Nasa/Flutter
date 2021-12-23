// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

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
        title: Text("Page 4"),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Page 4",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 100,
              ),
              MaterialButton(
                onPressed: () {},
                child: Text("Page 4"),
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
