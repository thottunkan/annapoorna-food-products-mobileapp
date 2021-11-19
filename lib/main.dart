import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';
import 'login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/src/material/colors.dart' as col;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  Color mainColor = Color(0xffb74093);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: col.Colors.green,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}
