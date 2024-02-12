import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.title,
      this.height = 200,
      this.width = 100,
      this.iscircle = false,
      required this.imagelist});
  final String title;
  final double height;
  final double width;
  final bool iscircle;
  final List<String> imagelist;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imagelist.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(imagelist[index]),
                              fit: BoxFit.fill),
                          shape: iscircle == true
                              ? BoxShape.circle
                              : BoxShape.rectangle,
                          // borderRadius: BorderRadius.circular(50),
                          color: Colors.amber),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
