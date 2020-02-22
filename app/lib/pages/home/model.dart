import 'package:flutter/cupertino.dart';

class Model extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  set counter(int value) {
    _counter = value;
    notifyListeners();
  }

  void increment() => counter += 1;
}
