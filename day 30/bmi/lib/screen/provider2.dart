import 'package:flutter/material.dart';

class ProviderMan extends ChangeNotifier {
  int age = 50;

  decrementagee() {
    age--;
    notifyListeners();
  }
}
