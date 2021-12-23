import 'package:flutter/material.dart';

class ProviderManager extends ChangeNotifier {
  int weight = 40;
  int age = 50;
  double height = 90;

  incrementweight() {
    weight++;
    notifyListeners();
  }

  decrementweight() {
    weight--;
    notifyListeners();
  }

  incrementage() {
    age++;
    notifyListeners();
  }

  decrementage() {
    age--;
    notifyListeners();
  }

  calculateHeight(double value) {
    height = value;
    notifyListeners();
  }

  changeTime() {
    age--;
    notifyListeners();
  }
}
