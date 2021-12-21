import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  var images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSmGzLZe0BFXBv7MejRarMQEK62peBDhYy9g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDQgEgr1-BaUZF9mPBULc1iC4tI7rBQy2DOw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFtoqR01rKECIKP-a_iVya8UdQrqn6C33KDQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSmGzLZe0BFXBv7MejRarMQEK62peBDhYy9g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDQgEgr1-BaUZF9mPBULc1iC4tI7rBQy2DOw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFtoqR01rKECIKP-a_iVya8UdQrqn6C33KDQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSmGzLZe0BFXBv7MejRarMQEK62peBDhYy9g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDQgEgr1-BaUZF9mPBULc1iC4tI7rBQy2DOw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFtoqR01rKECIKP-a_iVya8UdQrqn6C33KDQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSmGzLZe0BFXBv7MejRarMQEK62peBDhYy9g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDQgEgr1-BaUZF9mPBULc1iC4tI7rBQy2DOw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFtoqR01rKECIKP-a_iVya8UdQrqn6C33KDQ&usqp=CAU",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: StaggeredGridView.countBuilder(
            shrinkWrap: true,
            crossAxisCount: 2,
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) => new Container(
              child: Image.network(
                "${images[index]}",
                fit: BoxFit.cover,
              ),
            ),
            staggeredTileBuilder: (int index) => new StaggeredTile.fit(
              1,
            ),
            physics: NeverScrollableScrollPhysics(),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
        ),
      ),
    );
  }
}
