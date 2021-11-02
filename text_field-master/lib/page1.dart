import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  // Page2({ Key? key,this.email,this.password }) : super(key: key);
  Page2({this.email, this.password});
  final String? email, password;
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("${widget.email}"),
          Text("${widget.password}"),
        ],
      ),
    );
  }
}
