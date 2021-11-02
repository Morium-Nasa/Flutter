import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyTabbedPage(),
    );
  }
}

class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({Key? key}) : super(key: key);

  @override
  _MyTabbedPageState createState() => new _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage>
    with SingleTickerProviderStateMixin {
  //this is the tab list we can add new tab here
  final List<Tab> myTabs = <Tab>[
    new Tab(text: 'LEFT'),
    new Tab(text: 'MID'),
    new Tab(text: 'RIGHT'),
  ];

  //initials variable in TabController
  TabController? _tabController;

  void initState() {
    super
        .initState(); //u can ignore or delete the super key word for simplexcity
    _tabController = new TabController(
        vsync: this, length: myTabs.length); //define here how many tab we have
  }

  // void dispose() {
  //   _tabController!.dispose();
  //   super.dispose(); //u can ignore or delete the super key word for simplexcity
  // }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Tab demo"),
        bottom: new TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),

      body: new TabBarView(
        controller: _tabController,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                  "We want you to understand all about insurance, how it works, benifits of insurance, how to choose best plan and why you should buy an insurance plan right away!"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                  "We want you to understand all about insurance, how it works, benifits of insurance, how to choose best plan and why you should buy an insurance plan right away!"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                  "We want you to understand all about insurance, how it works, benifits of insurance, how to choose best plan and why you should buy an insurance plan right away!"),
            ),
          ),
        ],
        // controller: _tabController,
        // // last night we were talking about map for understanding this u have to understand map well
        // children: myTabs.map((Tab tab) {
        //   return new Center(child: new Text('${tab.text}'));
        // }).toList(),
      ),

      //this floatingActionButton is also use for tab if y want thn u can ignore or delete it
      floatingActionButton: new FloatingActionButton(
        onPressed: () => _tabController!
            .animateTo((_tabController!.index + 1) % 3), // Switch tabs
        child: new Icon(Icons.swap_horiz),
      ),
    );
  }
}
