import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Day6());
}

class Day6 extends StatelessWidget {
  const Day6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("HELLO HABIBI!"),
        ),
        body: Container(
          child: Center(
              child: Column(
            children: [
              Text("Coulmn",
                  style: TextStyle(fontSize: 50.0, color: Colors.blue)),
              Text("Coulmn",
                  style: TextStyle(fontSize: 50.0, color: Colors.green)),
              Text("Coulmn",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
              Text("Coulmn",
                  style: TextStyle(fontSize: 50.0, color: Colors.red)),
            ],
          )),
        ),
      ),
    );
  }
}

