// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:listview_builder_animation/model/model.dart';

class DetailsPage extends StatefulWidget {
  //const DetailsPage({Key? key}) : super(key: key);
  final Model? detailList;
  DetailsPage({this.detailList});
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Hero(
              tag: widget.detailList!,
              child: Image.network('${widget.detailList!.image}'),
            ),
            Text('${widget.detailList!.name}'),
          ],
        ),
      ),
    );
  }
}
