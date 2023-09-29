
import 'package:flutter/material.dart';
import 'package:login_regestration_ui/appbar.dart';
import 'package:login_regestration_ui/login.dart';
import 'package:login_regestration_ui/profile.dart';
import 'package:login_regestration_ui/regester.dart';
import 'package:login_regestration_ui/setting.dart';

import 'account.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=>MyLogin(),
      'regester': (context)=>MyRegester(),
      'appbar': (context)=>MyAppBar(),
      'profile': (context)=>MyProfileAccount(),
    },
  ));
}

