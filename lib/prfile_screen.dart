import 'package:flutter/material.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

class ProfileScreem extends StatefulWidget {
  const ProfileScreem({Key? key}) : super(key: key);

  @override
  _ProfileScreemState createState() => _ProfileScreemState();
}

class _ProfileScreemState extends State<ProfileScreem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile"),
      ),
      body: SafeArea(
        child: WidgetCircularAnimator(
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
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
            child: Image.asset(
              "img/rice.jpg",
            ),
          ),
        ),
      ),
    );
  }
}
