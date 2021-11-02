import 'package:flutter/material.dart';
import 'package:task_app/widget/brand_colors.dart';

class RoundButton extends StatelessWidget {
  // const RoundButton({Key? key}) : super(key: key);

  final Color? btnColor, borderColor;
  final String? buttonText;
  final VoidCallback? onTapp;

  RoundButton({this.btnColor, this.onTapp, this.borderColor, this.buttonText});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTapp,
      height: 60,
      minWidth: MediaQuery.of(context).size.width - 20,
      color: btnColor ?? Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
        side: BorderSide(width: 2, color: borderColor ?? Colors.transparent),
      ),
      child: Text(
        "$buttonText",
        style: myStyle(17, shadaColor),
      ),
    );
  }
}
