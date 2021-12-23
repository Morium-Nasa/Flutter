// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:listview_builder_xm/componemts/global.dart';
import 'package:listview_builder_xm/model/model.dart';
import 'package:listview_builder_xm/pages/viewpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Model> myList = [];
  _HomePageState() {
    myList.add(
      Model(
        id: 1,
        pTitle: 'White For Women',
        pDetail: 'Blue, Full Body',
        pPrice: 69.0,
        pImage: 'assets/images/girl4.jpg',
        pQuantity: 0,
      ),
    );
    myList.add(
      Model(
        id: 1,
        pTitle: 'Angela For Women',
        pDetail: 'Red, Full Body',
        pPrice: 169.0,
        pImage: 'assets/images/girl3.jpg',
        pQuantity: 0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            print("Chicked SuccesFully");
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
        title: Center(
          child: Text(
            'Cart',
            style: mystyle(18, Colors.grey),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.orange,
              ),
            ),
            Expanded(
              flex: 8,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  final item = myList[index];

                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: Card(
                      color: Colors.white,
                      elevation: 7,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MyViewPage(
                                detailList: item,
                              ),
                            ),
                          );
                        },
                        isThreeLine: true,
                        leading: Hero(
                          tag: item,
                          child: Container(
                            height: 50,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('${item.pImage}'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          '${myList[index].pTitle}',
                          style: mystyle(14, Colors.black),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${item.pDetail} ',
                              style: mystyle(12, Colors.grey),
                            ),
                            Text(
                              'Price \$ ${item.pPrice}',
                              style: mystyle(16, Colors.blue),
                            ),
                          ],
                        ),
                        trailing: Container(
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
                                      item.pQuantity = item.pQuantity! + 1;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 18,
                                  ),
                                ),
                                Text(
                                  '${item.pQuantity} ',
                                  style: mystyle(16, Colors.grey),
                                ),
                                MaterialButton(
                                  minWidth: 30,
                                  onPressed: () {
                                    setState(() {
                                      item.pQuantity = item.pQuantity! - 1;
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
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyViewPage()));
                },
                child: Text('Go'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
