// ignore: file_names
import 'package:flutter/cupertino.dart';
import '../models/user/user_model.dart';

class UserProvider extends ChangeNotifier {
  User? _user;

  User? get user => _user;

  void setUser(User userparams) {
    _user = userparams;
    notifyListeners();
  }
}
