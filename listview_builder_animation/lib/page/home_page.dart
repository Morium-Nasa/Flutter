// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:listview_builder_animation/components/details.dart';
import 'package:listview_builder_animation/model/model.dart';

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
          name: 'Tanvir Ahmed',
          details: 'Dst akto aidike ay',
          sex: true,
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjAAwQyKxGO39mWtUYjD0s_uhMSmEi4wXyPg&usqp=CAU'),
    );
    myList.add(
      Model(
          id: 1,
          name: 'Tanvir Ahmed2',
          details: 'Dst akto aidike ay',
          sex: true,
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjAAwQyKxGO39mWtUYjD0s_uhMSmEi4wXyPg&usqp=CAU'),
    );
    myList.add(
      Model(
          id: 1,
          name: 'Tanvir Ahmed3',
          details: 'Dst akto aidike ay',
          sex: true,
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjAAwQyKxGO39mWtUYjD0s_uhMSmEi4wXyPg&usqp=CAU'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsPage(detailList: myList[index]),
                  ),
                );
              },
              leading: Hero(
                tag: myList[index],
                child: CircleAvatar(
                  backgroundImage: NetworkImage('${myList[index].image}'),
                ),
              ),
              title: Row(
                children: [
                  Text('${myList[index].name}'),
                  Spacer(),
                  Text(myList[index].sex == true ? "Male" : "Female"),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              subtitle: Text('${myList[index].details}'),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    myList.removeAt(index);
                  });
                },
                icon: Icon(Icons.delete),
              ),
            );
          },
        ),
      ),
    );
  }
}
