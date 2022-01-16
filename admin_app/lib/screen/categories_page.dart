import 'package:admin_app/provider/category_provider.dart';
import 'package:admin_app/screen/edit_category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<CategoryProvider>(context, listen: false).getCategory(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var categoryData = Provider.of<CategoryProvider>(context).categoryList;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: categoryData.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Stack(
                        children: [
                          Image.network(
                            "https://homechef.antapp.space/category/${categoryData[index].image}",
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            top: 5,
                            bottom: 5,
                            left: 5,
                            right: 5,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  "https://homechef.antapp.space/category/${categoryData[index].icon}"),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(
                                      builder: (context) => EditCategory(
                                            categoryModel: categoryData[index],
                                          )))
                                  .then((value) =>
                                      Provider.of<CategoryProvider>(context,
                                              listen: false)
                                          .getCategory(context));
                            },
                            child: Text("Edit"),
                          ),
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                categoryData.removeAt(index);
                              });
                            },
                            child: Text("Delete"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
