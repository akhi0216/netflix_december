import 'package:flutter/material.dart';
import 'package:netflix_december/utils/color_constants/color_constants.dart';
import 'package:netflix_december/utils/db/db.dart';
import 'package:netflix_december/utils/image_constants/image_constants.dart';
import 'package:netflix_december/view/home_screen/widgets/custom_card.dart';
// import 'package:netflix_december/view/custom_widgdet/custom_widgdet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundBlack,
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Container(
                height: 430,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Imageconstant.homepageimg),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 35, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Imageconstant.nlogo),
                    Text(
                      "TV shows",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "movies",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "My List",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              // 2nd
              // Positioned(
              //   bottom: 0,
              //   child: Container(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Image.asset(Imageconstant.topten),
              //         SizedBox(
              //           width: 10,
              //         ),
              //         Text(
              //           "#2 in Nigeria today",
              //           style: TextStyle(color: Colors.white, fontSize: 17),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),

          //  3rd
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 1st elmnt
              Column(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "My List",
                    style: TextStyle(color: ColorConstant.textColor),
                  )
                ],
              ),
              SizedBox(
                width: 30,
              ),
              // 2nd elmnt
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    color: ColorConstant.iconGrey,
                    borderRadius: BorderRadius.circular(6)),
                child: Row(
                  children: [
                    Icon(Icons.play_arrow),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "play",
                      style: TextStyle(color: ColorConstant.backgroundBlack),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              // 3rd elmnt
              // 1st elmnt
              Column(
                children: [
                  Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "info",
                    style: TextStyle(color: ColorConstant.textColor),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          //  3rd
          CustomCard(
              title: "previews",
              iscircle: true,
              imagelist: DataBase.movieimglistcircle),
          CustomCard(
            isbottomcard: true,
            imagelist: DataBase.movieImageUrlsone,
            title: "continue watching for",
            height: 250,
            width: 200,
          ),
          CustomCard(
            imagelist: DataBase.movieImageUrlstwo,
            title: "popular on netflix",
            height: 300,
            width: 200,
          ),
        ]),
      ),
      // ),
    );
  }
}
