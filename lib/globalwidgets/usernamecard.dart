import 'package:flutter/material.dart';
import 'package:netflix_december/utils/db/db.dart';

class UsernameCard extends StatelessWidget {
  const UsernameCard(
      {super.key,
      required this.imageurl,
      required this.username,
      this.height = 100,
      this.width = 100});
  final String imageurl;
  final String username;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Column(
        children: [
          Image.asset(imageurl),
          Text(
            username,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
