import 'package:flutter/material.dart';
import 'package:netflix_december/utils/color_constants/color_constants.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.title,
      this.height = 200,
      this.width = 100,
      this.iscircle = false,
      required this.imagelist,
      this.isbottomcard = false});
  final String title;
  final double height;
  final double width;
  final bool iscircle;
  final bool isbottomcard;
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
                      alignment: Alignment.bottomCenter,
                      height: height,
                      width: width,
                      // alignment: ,
                      child: Visibility(
                        visible: isbottomcard,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: width,
                              height: 5,
                              color: Colors.grey,
                              child: Container(
                                height: 5,
                                width: 40,
                                color: Colors.red,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: width,
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              color: ColorConstant.backgroundBlack,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.info_outline,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
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
