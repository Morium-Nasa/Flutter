// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:routing/page_1.dart';
import 'package:routing/page_2.dart';
import 'package:routing/page_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "page1": (BuildContext context) => Page1(),
        "page2": (BuildContext context) => Page2(),
        "3": (BuildContext context) => Page3(),
      },
      home: Page1(),
    );
  }
}
