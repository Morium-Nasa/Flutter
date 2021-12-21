// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listview_builder_animation/page/home_page.dart';

void main() => runApp(const MyListviewBuilderWithAnimation());

class MyListviewBuilderWithAnimation extends StatelessWidget {
  const MyListviewBuilderWithAnimation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listview Builder With Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
