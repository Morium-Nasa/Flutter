import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gridview_xm/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://media.istockphoto.com/photos/closeup-of-airplane-wing-flying-at-sunrise-picture-id1157137642?k=20&m=1157137642&s=170667a&w=0&h=2p9kOve3NrbOFwib61YJ0l0e8F7I7LtGL9Bu3erj-KA='),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Traval with comfort and safety',
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 40.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                color: Colors.orange,
                height: 60.0,
                minWidth: 200.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
