import 'package:cwlistview_builder/model/model.dart';
import 'package:cwlistview_builder/pages/pages1.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Model> mylist = [];

  _HomeState() {
    mylist.add(Model(
        id: 999,
        name: "Tanvir",
        gender: true,
        details: "Unpredictable",
        image: "https://wallpaperaccess.com/full/2309745.jpg"));
    mylist.add(Model(
        id: 999,
        name: "Tanvir",
        gender: true,
        details: "Unpredictable",
        image: "https://wallpaperaccess.com/full/2309745.jpg"));
    mylist.add(Model(
        id: 999,
        name: "Tanvir",
        gender: true,
        details: "Unpredictable",
        image: "https://wallpaperaccess.com/full/2309745.jpg"));
    mylist.add(Model(
        id: 999,
        name: "Tanvir",
        gender: true,
        details: "Unpredictable",
        image: "https://wallpaperaccess.com/full/2309745.jpg"));
    mylist.add(Model(
        id: 999,
        name: "Tanvir",
        gender: true,
        details: "Unpredictable",
        image: "https://wallpaperaccess.com/full/2309745.jpg"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: ListView.builder(
            itemCount: mylist.length,
            itemBuilder: (context, index) {
              final item = mylist[index];

              return ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Details(
                            detaillists: item,
                          )));
                },
                leading: Hero(
                  tag: mylist[index],
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("${mylist[index].image}"),
                  ),
                ),
                title: Row(
                  children: [
                    Text("${mylist[index].id}"),
                    Text("${mylist[index].name}"),
                    Text(mylist[index].gender == true ? "Male" : "Female"),
                  ],
                ),
                subtitle: Text("${mylist[index].details}"),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      mylist.removeAt(index);
                    });
                  },
                  icon: Icon(Icons.delete),
                  color: Colors.red,
                ),
              );
            }),
      ),
    );
  }
}
