// ignore_for_file: prefer_const_constructors
import 'package:dialog_practice/pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyDialogPractice());

class MyDialogPractice extends StatelessWidget {
  const MyDialogPractice({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialog Practice',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
    );
  }
}
