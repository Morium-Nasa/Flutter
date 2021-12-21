import 'package:flutter/material.dart';
import 'package:gridview_xm/home.dart';
import 'package:gridview_xm/profile.dart';

void main() => runApp(MyGridViewXm());

class MyGridViewXm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
