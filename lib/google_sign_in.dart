import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'user.dart';

class GoogleSigninProvider extends ChangeNotifier {
  final googleSignin = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;

  Future<GoogleSignInAccount?> googleLogin() async {
    final googelUser = await googleSignin.signIn();

    final googleAuth = await googelUser!.authentication;
    final credential = await GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
    if (googelUser == null) {
      return null;
    } else {
      return googelUser;
    }

    //notifyListeners();
  }

  void firebaseSignOut() {
    googleSignin.signOut();
  }
}
