import 'package:flutter/material.dart';
import 'package:task_app/widget/brand_colors.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final dynamic? icon;
  final String? hintText;
  final Color? bgColor;
  final Function? function;
  final dynamic? formatter;
  MyTextField(
      {this.bgColor,
      this.controller,
      this.formatter,
      this.function,
      this.hintText,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: icon,
        border: InputBorder.none,
        fillColor: Colors.transparent,
        hintStyle: myStyle(16, Colors.grey),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: shadaColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: shadaColor)),
      ),
    );
  }
}
