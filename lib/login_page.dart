import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'admin_screen.dart';
import 'first_screen.dart';
import 'package:testapp/google_sign_in.dart';
import 'user.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Spacer(),
              Spacer(),
              Center(child: Image(image: AssetImage("img/cmpny1.jpg"))),
              Spacer(),
              SignInButton(Buttons.Google, onPressed: () async {
                WidgetsFlutterBinding.ensureInitialized();
                Firebase.initializeApp();
                var provider = new GoogleSigninProvider();
                var user = await provider.googleLogin();
                var name = user!.displayName.toString();
                var email = user.email;

                var photo = user.photoUrl.toString();
                var curruser = new CurUser(name, email, photo);
                if (user == null) {
                } else {
                  print("user id = " +
                      user.id +
                      " email = " +
                      email +
                      " name = " +
                      name);
                  if (email == "ambadinarayan98@gmail.com" || email == "") {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return AdminScreen();
                    }));
                  } else {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return FirstScreen(user: curruser);
                    }));
                  }
                }
              }, text: "SignIn With Google"),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
