import 'package:flutter/material.dart';
import 'package:netflix_december/utils/color_constants/color_constants.dart';

import 'package:netflix_december/utils/db/db.dart';
import 'package:netflix_december/utils/image_constants/image_constants.dart';

class UserName extends StatefulWidget {
  const UserName({super.key});

  @override
  State<UserName> createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundBlack,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorConstant.backgroundBlack,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets\images\logos_netflix (3).png"),
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
