import 'package:flutter/material.dart';
import 'package:netflix_december/utils/color_constants/color_constants.dart';

class SeconscustomCard extends StatelessWidget {
  const SeconscustomCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.des,
      required this.imageurl});

  final String title;
  final String subtitle;
  final String des;
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 193,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageurl), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Remind me",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(width: 7),
                // 2nd col
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
          // next row
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle,
                  style: TextStyle(color: ColorConstant.textColor),
                ),
                SizedBox(height: 5),
                Text(
                  title,
                  style: TextStyle(
                      color: ColorConstant.textColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  des,
                  style: TextStyle(color: ColorConstant.textColor),
                  maxLines: 3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
