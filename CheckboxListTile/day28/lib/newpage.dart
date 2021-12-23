import 'package:day28/checkmodel.dart';
import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  List<CheckModel> mylist = [];

  bool isallans = false;
  _NewPageState() {
    mylist.add(CheckModel(title: 'Bangladesh', isselected: false));
    mylist.add(CheckModel(title: 'India', isselected: false));
    mylist.add(CheckModel(title: 'Pakistan', isselected: false));
    mylist.add(CheckModel(title: 'USA', isselected: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text("Hello"),
            value: isallans,
            onChanged: (value) {
              setState(() {
                isallans = value!;
                mylist.forEach((element) {
                  element.isselected = value;
                });
                //   print(isans.toString());
              });
            },
          ),
          SizedBox(
            height: 50,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: mylist.length,
            itemBuilder: (context, index) {
              return CheckboxListTile(
                title: Text('${mylist[index].title}'),
                value: mylist[index].isselected,
                onChanged: (value) {
                  setState(() {
                    mylist[index].isselected = value;
                    final check =
                        mylist.every((element) => element.isselected!);
                    isallans = check;
                  });
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
