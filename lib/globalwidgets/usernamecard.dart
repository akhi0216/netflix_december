import 'package:flutter/material.dart';
import 'package:netflix_december/utils/db/db.dart';

class UsernameCard extends StatelessWidget {
  const UsernameCard(
      {super.key, required this.imageurl, required this.username});
  final String imageurl;
  final String username;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageurl),
        Text(
          username,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
