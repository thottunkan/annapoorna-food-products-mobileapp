import 'package:flutter/material.dart';
import 'google_sign_in.dart';
import 'login_page.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("admin console"),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.menu), //don't specify icon if you want 3 dot menu
            color: Colors.white,
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Text(
                  "SignOut",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
            onSelected: (item) => {
              if (item == 0)
                {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    GoogleSigninProvider().firebaseSignOut();
                    return LoginPage();
                  }))
                }
            },
          ),
        ],
      ),
      body: SafeArea(child: Text("Admin Screen")),
    );
  }
}
