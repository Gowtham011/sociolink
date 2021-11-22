import 'dart:html' as html;
import 'dart:js' as js;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'SocialButton.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stay Connected',
      theme: ThemeData(primarySwatch: Colors.blue, visualDensity: VisualDensity.adaptivePlatformDensity),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String socialName = "Gowtham";
  String description = "Application Developer \nwho loves to create interesting applications with an eye to UI.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage('https://media-exp1.licdn.com/dms/image/C4E03AQE7veLxG9146Q/profile-displayphoto-shrink_800_800/0/1628261390186?e=1643241600&v=beta&t=OSu0KrIZzy20ETNFgJBIyI2Zp-NOawh-_FvniFPeLZo'),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 4),
                        blurRadius: 4.0,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  socialName,
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.w400, height: 1.5, letterSpacing: 0),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Social links',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black87),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 150,
                  height: 1,
                  color: Colors.deepPurpleAccent,
                ),
                const SizedBox(
                  height: 30,
                ),
                SocialButton(
                  url: 'https://github.com/gowtham011',
                  icon: MdiIcons.github,
                  iconColor: Colors.black,
                  label: "GitHub",
                ),
                const SizedBox(
                  height: 25,
                ),
                SocialButton(
                  url: 'https://www.linkedin.com/in/gowtham-dhanabalan-5aa1b5209/',
                  icon: MdiIcons.linkedin,
                  iconColor: Colors.blue[800],
                  label: "LinkedIn",
                ),
                const SizedBox(
                  height: 25,
                ),
                SocialButton(
                  url: ' https://api.whatsapp.com/send?phone=917558127579',
                  icon: MdiIcons.message,
                  iconColor: Colors.teal,
                  label: "Whatsapp",
                ),
                const SizedBox(
                  height: 55,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Copyright 2021.Gowtham.All Rights Reserved',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
