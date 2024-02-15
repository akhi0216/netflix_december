import 'package:flutter/material.dart';
import 'package:netflix_december/utils/color_constants/color_constants.dart';
import 'package:netflix_december/utils/db/db.dart';
import 'package:netflix_december/view/coming_soonpage/widgets/firstcustom_card.dart';
import 'package:netflix_december/view/coming_soonpage/widgets/secondcustom_card.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({super.key});

  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundBlack,
      appBar: AppBar(
        backgroundColor: ColorConstant.backgroundBlack,
        leading: Icon(Icons.notifications, color: Colors.red),
        title: Text("Notifications",
            style: TextStyle(
                color: ColorConstant.textColor, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: DataBase.comingsoondatas.length,
                itemBuilder: (context, index) => FirstcustomCard(
                    title1:
                        DataBase.comingsoondatas[index]["title1"].toString(),
                    title2:
                        DataBase.comingsoondatas[index]["title2"].toString(),
                    title3:
                        DataBase.comingsoondatas[index]["title3"].toString(),
                    imageurl:
                        DataBase.comingsoondatas[index]["imageurl"].toString()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // 2nd
            ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => SeconscustomCard())
          ],
        ),
      ),
    );
  }
}
