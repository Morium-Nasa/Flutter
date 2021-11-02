import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/widget/brand_colors.dart';
import 'package:task_app/widget/button.dart';

class StepperOne extends StatelessWidget {
  const StepperOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: -200,
              right: 40,
              child: Transform.rotate(
                angle: pi / 5,
                child: Container(
                  width: 450,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
            Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 25),
                  child: Text(
                    "Upgrade Progress your work with the team",
                    style: myStyle(36, Colors.white, FontWeight.w600),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                    child: SvgPicture.asset(
                      "slider1.svg",
                    ),
                  ),
                ),
                RoundButton(
                  btnColor: btnColor,
                  onTapp: () {
                    Navigator.pushNamed(context, "stepper2");
                  },
                  buttonText: "Sign Up",
                ),
                SizedBox(
                  height: 16,
                ),
                RoundButton(
                  //btnColor: btnColor,
                  borderColor: shadaColor,
                  onTapp: () {},
                  buttonText: "Sign Up",
                ),
                Padding(
                  padding: EdgeInsets.only(top: 32),
                  child: SvgPicture.asset(
                    "indicator.svg",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
