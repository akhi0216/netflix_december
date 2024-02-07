import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_december/username/user_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => UserName(),
      ));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 207,
          height: 56,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/logos_netflix (3).png"))),
        ),
      ),
    );
  }
}
