import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserInformation with ChangeNotifier {
  String? _name;
  String? _email;
  String? _uid;
  String? _photoUrl;

  String? get photoUrl => _photoUrl;
  String? get name => _name;
  String? get email => _email;
  String? get uid => _uid;

  void updateUserInfo(User user) {
    _name = user.displayName;
    _email = user.email;
    if (user.photoURL != null) {
      _photoUrl = user.photoURL;
    } else {
      _photoUrl = 'https://via.placeholder.com/150';
    }
    _uid = user.uid;
    notifyListeners();
  }
}
