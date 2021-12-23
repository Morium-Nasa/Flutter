import 'package:flutter/material.dart';
import 'package:listview_builder_xm/pages/home.dart';

void main() => runApp(const ListviewBuilderXM());

class ListviewBuilderXM extends StatelessWidget {
  const ListviewBuilderXM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Listview Builder XM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
