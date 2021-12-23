// ignore_for_file: unused_import, avoid_print, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:routing/page_2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

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
        title: Text("Page 1"),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Page 1",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 100,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, "page2");

                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
                },
                child: Text("Page 1"),
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
