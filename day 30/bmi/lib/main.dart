import 'dart:js';

import 'package:bmi/providers.dart';
import 'package:bmi/screen/homePage.dart';
import 'package:bmi/screen/provider2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ProviderManager()),
    ChangeNotifierProvider(create: (context) => ProviderMan()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
