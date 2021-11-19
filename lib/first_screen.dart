import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'user.dart';

class FirstScreen extends StatelessWidget {
  final CurUser? user;
  const FirstScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade200,
      appBar: AppBar(
        title: Text("annapoorna"),
        actions: [
          //list if widget in appbar actions
          PopupMenuButton(
            icon: Icon(Icons.menu), //don't specify icon if you want 3 dot menu
            color: Colors.white,
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Text(
                  "Profile",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              PopupMenuItem<int>(
                value: 0,
                child: Text(
                  "Your Orders",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              PopupMenuItem<int>(
                value: 0,
                child: Text(
                  "SignOut",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
            onSelected: (item) => {print(item)},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Rise Powder'),
                  subtitle: Text(
                    'Annapoorna Food Products',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Image(image: AssetImage("img/rice.jpg")),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Rs 26/-',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ],
                      ),
                      Text(
                        'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ],
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ORDER NOW'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Wheat Powder'),
                  subtitle: Text(
                    'Annapoorna Food Products',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Image(image: AssetImage("img/wheat.jpg")),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ORDER NOW'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Chilli Powder'),
                  subtitle: Text(
                    'Annapoorna Food Products',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Image(image: AssetImage("img/chilli.jpg")),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ORDER NOW'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Kashmiri Chilli Powder'),
                  subtitle: Text(
                    'Annapoorna Food Products',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Image(image: AssetImage("img/chillik.jpg")),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ORDER NOW'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Turmeric Powder'),
                  subtitle: Text(
                    'Annapoorna Food Products',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Image(image: AssetImage("img/turmeric.jpg")),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ORDER NOW'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Coriander Powder'),
                  subtitle: Text(
                    'Annapoorna Food Products',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Image(image: AssetImage("img/coriander.jpg")),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ORDER NOW'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
