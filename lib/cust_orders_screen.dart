import 'package:flutter/material.dart';

class CustOrdersScreen extends StatefulWidget {
  const CustOrdersScreen({Key? key}) : super(key: key);

  @override
  _CustOrdersScreenState createState() => _CustOrdersScreenState();
}

class _CustOrdersScreenState extends State<CustOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your orders"),
      ),
      body: SafeArea(child: Text("orders")),
    );
  }
}
