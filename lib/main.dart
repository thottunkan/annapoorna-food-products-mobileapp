import 'package:flutter/material.dart';
// import 'package:vector_math/vector_math_64.dart';
import 'login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/src/material/colors.dart' as col;

import 'first_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: col.Colors.amber,
    ),
    home: MyApp(),
  ));
  // CheckUser check = CheckUser();
  // check.checkDetailsSP();
}

class CheckUser {
  Future checkDetailsSP() async {
    SharedPreferences? sp = await SharedPreferences.getInstance();
    String name = sp.getString("name") ?? "";
    String email = sp.getString("email") ?? "";
    String photo = sp.getString("photo") ?? "";
    String id = sp.getString("id") ?? "";

    if (name == "") {
      runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyApp(),
      ));
    } else {
      runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: FirstScreen(),
      ));
    }
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}
