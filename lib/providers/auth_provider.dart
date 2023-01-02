import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class LoginProvider with ChangeNotifier {

  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  bool _visibility = false;
  bool get visibility => _visibility;

  setVisibility(bool value) {
    _visibility = value;
    notifyListeners();
  }

  void login(String email, password) async {
    setLoading(true);
    try {
      Response response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {'email': email, 'password': password});

      if (response.statusCode == 200) {
        setLoading(false);

        var data = jsonDecode(response.body.toString());
        print(email + password);
        print(data['token']);
        print('Login successfully');
      } else {
        setLoading(false);
        print('failed');
        print(email + password);
      }
    } catch (e) {
      setLoading(false);
      print(e.toString());
      print(email + password);
    }
  }
}
