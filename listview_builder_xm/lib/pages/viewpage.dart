import 'package:flutter/material.dart';
import 'package:listview_builder_xm/componemts/global.dart';
import 'package:listview_builder_xm/model/model.dart';

class MyViewPage extends StatefulWidget {
  //const MyViewPage({Key? key}) : super(key: key);
  final Model? detailList;
  MyViewPage({this.detailList});

  @override
  _MyViewPageState createState() => _MyViewPageState();
}

class _MyViewPageState extends State<MyViewPage> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Hero(
              tag: widget.detailList!,
              child: Container(
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('${widget.detailList!.pImage}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              '${widget.detailList!.pPrice}',
              style: mystyle(26, Colors.black),
            ),
            Container(
              // color: Colors.red,
              // height: 50,
              width: 100,
              child: Center(
                child: Row(
                  children: [
                    MaterialButton(
                      minWidth: 30,
                      onPressed: () {
                        setState(() {
                          widget.detailList!.pQuantity =
                              widget.detailList!.pQuantity! + 1;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        size: 18,
                      ),
                    ),
                    Text(
                      '${widget.detailList!.pQuantity!}',
                    ),
                    MaterialButton(
                      minWidth: 30,
                      onPressed: () {
                        setState(() {
                          widget.detailList!.pQuantity =
                              widget.detailList!.pQuantity! - 1;
                        });
                      },
                      child: Icon(
                        Icons.close,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              '${widget.detailList!.pQuantity! * widget.detailList!.pPrice!}',
            ),
          ],
        ),
      ),
    );
  }
}
