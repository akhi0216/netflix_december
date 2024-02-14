import 'package:flutter/material.dart';
import 'package:netflix_december/utils/color_constants/color_constants.dart';

class FirstcustomCard extends StatelessWidget {
  const FirstcustomCard(
      {super.key,
      required this.title1,
      required this.title2,
      required this.title3,
      required this.imageurl});
  final String title1;
  final String title2;
  final String title3;
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        height: 100,
        color: ColorConstant.containerGrey,
        child: Row(
          children: [
            Container(
              height: 70,
              width: 140,
              child: Image.network(
                imageurl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 30),
            Column(
              children: [
                Text(
                  title1,
                  style: TextStyle(color: ColorConstant.textColor),
                ),
                Text(
                  title2,
                  style: TextStyle(color: ColorConstant.textColor),
                ),
                Text(
                  title3,
                  style: TextStyle(color: ColorConstant.textColor),
                )
              ],
            )
          ],
        ));
  }
}
