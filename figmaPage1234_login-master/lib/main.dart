import 'package:flutter/material.dart';
import 'package:task_app/screen/pages/login.dart';
import 'package:task_app/screen/stepper/stepper1.dart';
import 'package:task_app/screen/stepper/stepper2.dart';
import 'package:task_app/screen/stepper/stepper3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      "stepper1": (BuildContext context) => StepperOne(),
      "stepper2": (BuildContext context) => StepperTwo(),
      "stepper3": (BuildContext context) => StepperThree(),
      "loginPage": (BuildContext context) => LoginPage(),
    }, debugShowCheckedModeBanner: false, home: LoginPage());
  }
}
