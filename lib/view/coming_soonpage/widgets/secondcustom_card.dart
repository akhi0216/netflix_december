import 'package:flutter/material.dart';

class SeconscustomCard extends StatelessWidget {
  const SeconscustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 193,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/20153996/pexels-photo-20153996/free-photo-of-man-in-hat-and-checkered-trousers-lying-down-on-concrete-blocks.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  fit: BoxFit.cover)),
          child: Padding(
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
                SizedBox(width: 20),
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
        )
      ],
    );
  }
}
