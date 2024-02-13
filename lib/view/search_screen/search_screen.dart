import 'package:flutter/material.dart';
import 'package:netflix_december/utils/color_constants/color_constants.dart';
import 'package:netflix_december/utils/db/db.dart';
import 'package:netflix_december/view/search_screen/widgets/custom_search_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              color: ColorConstant.containerGrey,
              child: Row(
                children: [
                  Icon(Icons.search_rounded),
                  Text("SEARCH"),
                  Spacer(),
                  Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                "TOP SEARCHES",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: DataBase.searchScreenDatas.length,
                itemBuilder: (context, index) => CustomsearchWidget(
                  title:
                      DataBase.searchScreenDatas[index]["movieName"].toString(),
                  imageUrl:
                      DataBase.searchScreenDatas[index]["imageUrl"].toString(),
                  textcolor: Colors.white,
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
