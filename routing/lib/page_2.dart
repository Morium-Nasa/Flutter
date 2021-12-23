// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:routing/page_3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
        title: Text("Page 2"),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Page 2",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 100,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, "3");
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Page3()));
                },
                child: Text("Go Page 3"),
                color: Colors.redAccent,
                height: 100,
                minWidth: 80,
              ),
              SizedBox(
                height: 100,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  //Navigator.pop(context);
                },
                child: Text("Go back page 1"),
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
