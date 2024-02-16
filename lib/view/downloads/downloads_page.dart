import 'package:flutter/material.dart';
import 'package:netflix_december/utils/color_constants/color_constants.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundBlack,
      appBar: AppBar(
        backgroundColor: ColorConstant.backgroundBlack,
        title: Text(
          "Smart Downloads",
          style: TextStyle(color: ColorConstant.textColor),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text(
              "Introducing Downloads For You",
              style: TextStyle(
                  color: ColorConstant.textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages",
              maxLines: 5,
              style: TextStyle(fontSize: 10, color: ColorConstant.textColor),
            ),
            SizedBox(height: 15),
            Center(
              child: CircleAvatar(
                radius: 75,
                backgroundColor: ColorConstant.containerGrey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              color: ColorConstant.buttonBlue,
              child: Center(
                  child: Text(
                "SETUP",
                style: TextStyle(color: ColorConstant.textColor),
              )),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 50,
                width: 200,
                color: ColorConstant.containerGrey,
                child: Center(
                    child: Text(
                  "find something to download",
                  style: TextStyle(color: ColorConstant.textColor),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
