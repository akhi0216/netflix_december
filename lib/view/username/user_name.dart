import 'package:flutter/material.dart';

class UserName extends StatefulWidget {
  const UserName({super.key});

  @override
  State<UserName> createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logos_netflix (3).png"),
              SizedBox(
                width: 100,
              ),
              Icon(
                Icons.edit,
                color: Colors.white,
              )
              // Image.asset("assets/images/bx_bxs-pencil (1).png")
            ],
          )),
    );
  }
}
