import 'dart:async';
//import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ver_mat/ui/Home_Screen.dart';
import 'package:ver_mat/ui/auth/dashboard.dart';
import 'package:ver_mat/ui/auth/login_screen.dart';
import 'package:ver_mat/ui/home.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    final auth = FirebaseAuth.instance;

    final user = auth.currentUser;

    if (user != null) {
      Timer(const Duration(seconds: 9), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DashBoaard()));
      });
    } else {
      Timer(
          const Duration(seconds: 4),
          () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen())));
    }
  }
}
