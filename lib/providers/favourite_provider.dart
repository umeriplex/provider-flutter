import 'package:flutter/foundation.dart';
class FavouriteProvider with ChangeNotifier{

  List<int> _list = [];
  List<int> get list => _list;

  void addItem(int i){
    _list.add(i);
    notifyListeners ();
  }
  void removeItem(int i){
    _list.remove(i);
    notifyListeners();
  }
}