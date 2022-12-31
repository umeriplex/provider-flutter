import 'package:flutter/foundation.dart';

class ExampleOneProvider with ChangeNotifier {
  double _value = 1;
  double get value => _value;

  void setValue(double v){
    _value = v;
    notifyListeners();
  }
}
