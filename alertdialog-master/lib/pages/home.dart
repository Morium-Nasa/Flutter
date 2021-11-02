// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logo Here'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Show Dialog'),
          onPressed: () => showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              // title: Text('Welcome To Beemabox'),
              content: Container(
                width: 400,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Container(
                                width: double.infinity,

                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/beemaboxFlat.png"),
                                    // fit: BoxFit.cover,
                                  ),
                                  // color: Colors.black,
                                ),
                                // child: Image(
                                //   image: AssetImage("assets/images/photo.jpg"),
                                //   fit: BoxFit.cover,
                                // ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                width: 300,

                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/confusedboy.png",
                                    ),
                                    // fit: BoxFit.cover,
                                  ),
                                  // color: Colors.black,
                                ),
                                // child: Image(
                                //   image: AssetImage("assets/images/photo.jpg"),
                                //   fit: BoxFit.cover,
                                // ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.close)),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Text(
                    //   "Welcome To BeemaBox",
                    //   style: TextStyle(fontWeight: FontWeight.bold),
                    // ),
                    // Divider(
                    //   color: Colors.black,
                    //   height: 2,
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Text(
                              "We want you to understand all about insurance, how it works, benifits of insurance, how to choose best plan and why you should buy an insurance plan right away!",
                            ),
                            DefaultTabController(
                              length: 4,
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: TabBar(
                                      isScrollable: true,
                                      tabs: [
                                        Tab(
                                          child: Text(
                                            "Insurance",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        Tab(
                                          child: Text(
                                            "Benifits",
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Tab(
                                          child: Text(
                                            "Eligibility",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        Tab(
                                          child: Text(
                                            "What you need",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TabBarView(
                                    children: [
                                      Container(
                                        child: Text("ABCde"),
                                      ),
                                      Container(
                                        child: Text("AAAAAAAAABBBBBBCCCCC"),
                                      ),
                                      Container(
                                        child: Text("AAAAAAAAABBBBBBCCCCC"),
                                      ),
                                      Container(
                                        child: Text("AAAAAAAAABBBBBBCCCCC"),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
