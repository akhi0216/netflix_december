import 'package:flutter/material.dart';
import 'package:netflix_december/utils/color_constants/color_constants.dart';

class CustomsearchWidget extends StatelessWidget {
  const CustomsearchWidget({
    super.key,
    required this.title,
    required this.imageUrl,
    this.textcolor = Colors.white,
  });
  final Color textcolor;
  final String title;

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: ColorConstant.containerGrey,
        child: Row(
          children: [
            Container(
              height: 76,
              width: 146,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 30),
            Text(
              title,
              style: TextStyle(color: textcolor),
            ),
            Spacer(),
            Icon(
              Icons.play_circle_outline_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 20),
          ],
        ));
  }
}
