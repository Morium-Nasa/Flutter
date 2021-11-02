import 'package:cwlistview_builder/model/model.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  // const Details({Key? key}) : super(key: key);
  final Model? detaillists;

  Details({this.detaillists});
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${widget.detaillists!.name}"),
              Text("${widget.detaillists!.id}"),
              Text("${widget.detaillists!.id}"),
              Text("${widget.detaillists!.gender}"),
              Text("${widget.detaillists!.details}"),
              Hero(
                  tag: widget.detaillists!,
                  child: Image(
                      image: NetworkImage("${widget.detaillists!.image}")))
            ],
          ),
        ),
      ),
    );
  }
}
