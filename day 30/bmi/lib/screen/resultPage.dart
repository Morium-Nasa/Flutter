import 'dart:async';

import 'package:bmi/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      final result = Provider.of<ProviderManager>(context, listen: false);
      result.changeTime();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<ProviderManager>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("${data.age}"),
      ),
    );
  }
}
