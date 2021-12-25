import 'package:day19_nav_practice/page/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyNavPracticeD19());
}

class MyNavPracticeD19 extends StatelessWidget {
  const MyNavPracticeD19({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nav Practice D19',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
