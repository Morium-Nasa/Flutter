// ignore_for_file: avoid_print, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

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
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                ),
                tooltip: "Mr Green",
                color: Colors.green,
                iconSize: 30,
                enableFeedback: true,
                splashRadius: 30,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Button 2",
                  style: TextStyle(color: Colors.white),
                ),
                height: 100,
                color: Colors.pinkAccent,
              ),
              FloatingActionButton(
                onPressed: () {
                  print("HI Mr Green");
                },
                child: Icon(Icons.menu),
              ),
              InkWell(
                onTap: () {
                  print("aghfjkasdfbksdjbfdbns");
                },
                child: Container(
                  width: 150,
                  height: 100,
                  color: Colors.blueAccent,
                  child: Image.network(
                      "data:image/jpeg;base64,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"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("POPPPPP");
                },
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  width: 150,
                  height: 100,
                  color: Colors.blueAccent,
                  child: Image.network(
                      "data:image/jpeg;base64,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"),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text("Button 4"),
                color: Colors.redAccent,
                height: 100,
                minWidth: 80,
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("Button 5"),
              ),
              TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Icon(Icons.menu), Text("YoYO")],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
