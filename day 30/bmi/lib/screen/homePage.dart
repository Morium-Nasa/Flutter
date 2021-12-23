import 'package:bmi/calculation.dart';
import 'package:bmi/providers.dart';
import 'package:bmi/screen/resultPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 90;
  int weight = 50;
  int age = 20;
  bool isMale = true;
  var res, interpretation, ans;

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<ProviderManager>(context);
    return Scaffold(
      backgroundColor: Color(0xFF111328),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF111328),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  isMale = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: isMale
                                        ? Colors.teal
                                        : Color(0xFF1D1E33),
                                    borderRadius: BorderRadius.circular(16)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.male,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Male",
                                      style: TextStyle(color: Colors.white30),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            flex: 5,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  isMale = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: !isMale
                                        ? Colors.teal
                                        : Color(0xFF1D1E33),
                                    borderRadius: BorderRadius.circular(16)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.female,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Female",
                                      style: TextStyle(color: Colors.white30),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            flex: 5,
                          ),
                        ],
                      ),
                      flex: 5,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFF1D1E33),
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Height",
                              style: TextStyle(color: Colors.white30),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                    '${providerData.height.toStringAsFixed(0)}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 32)), //
                                Text('cm',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14)),
                              ],
                            ),
                            SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: Colors.pink,
                                  inactiveTrackColor: Colors.grey,
                                  thumbColor: Colors.pink,
                                  overlayColor: Colors.blue,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 10.0),
                                  overlayShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 15.0),
                                ),
                                child: Slider(
                                    min: 60,
                                    max: 180,
                                    value: providerData.height,
                                    onChanged: (double val) {
                                      providerData.calculateHeight(val);
                                    }))
                          ],
                        ),
                      ),
                      flex: 5,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF1D1E33),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Weight",
                                    style: TextStyle(color: Colors.white30),
                                  ),
                                  Text(
                                    "${providerData.weight}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          providerData.incrementweight();
                                        },
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          shape: CircleBorder(),
                                          primary: Color(0xff555867),
                                          padding: EdgeInsets.all(14),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          providerData.decrementweight();
                                        },
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xff555867),
                                          shape: CircleBorder(),
                                          padding: EdgeInsets.all(14),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            flex: 5,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF1D1E33),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "age",
                                    style: TextStyle(color: Colors.white30),
                                  ),
                                  Text(
                                    "${providerData.age}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          providerData.incrementage();
                                        },
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          shape: CircleBorder(),
                                          primary: Color(0xff555867),
                                          padding: EdgeInsets.all(14),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          providerData.decrementage();
                                        },
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xff555867),
                                          shape: CircleBorder(),
                                          padding: EdgeInsets.all(14),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            flex: 5,
                          ),
                        ],
                      ),
                      flex: 5,
                    ),
                  ],
                ),
              ),
              flex: 9,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Calculation cal = Calculation(
                      age: age, height: height.toInt(), weight: weight);
                  res = cal.calculateBMI();
                  ans = cal.getResult();
                  interpretation = cal.getInterpretation();
                  print("bmi is $res");
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ResultPage()));

                  /* showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            title: Text('Bmi is $res'),
                            content: Text('$interpretation'),
                          ));*/
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: Colors.pink,
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 20),
                  ),
                ),
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
