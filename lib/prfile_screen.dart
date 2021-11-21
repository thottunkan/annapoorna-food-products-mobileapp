import 'package:flutter/material.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreem extends StatefulWidget {
  const ProfileScreem({Key? key}) : super(key: key);
  @override
  _ProfileScreemState createState() => _ProfileScreemState();
}

class _ProfileScreemState extends State<ProfileScreem> {
  String name = "";
  String email = "";
  String photo = "";
  String id = "";

  void initState() {
    super.initState();
  }

  Future getUserDetailsSP() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    String name = sp.getString("name") ?? "";
    String email = sp.getString("email") ?? "";
    String photo = sp.getString("photo") ?? "";
    String id = sp.getString("id") ?? "";
    setState(() {
      this.name = name;
      this.email = email;
      this.photo = photo;
      this.id = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    getUserDetailsSP();
    return Scaffold(
      appBar: AppBar(
        title: Text("profile"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            WidgetCircularAnimator(
              size: 250,
              innerIconsSize: 3,
              outerIconsSize: 3,
              innerAnimation: Curves.easeInOutBack,
              outerAnimation: Curves.easeInOutBack,
              innerColor: Colors.deepPurple,
              outerColor: Colors.orangeAccent,
              innerAnimationSeconds: 10,
              outerAnimationSeconds: 10,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[200]),
                child: Image.network(
                  photo,
                  scale: 1.0,
                ),
              ),
            ),
            Spacer(),
            Text("Name : $name "),
            Text("Email : $email "),
            Spacer(),
            Spacer()
          ],
        ),
      ),
    );
  }
}
