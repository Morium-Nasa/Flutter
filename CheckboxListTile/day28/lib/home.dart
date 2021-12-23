import 'package:day28/newpage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => NewPage()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child:
            Lottie.asset('asset/anim.json', animate: true, fit: BoxFit.cover),
      ),
    );
  }
}
