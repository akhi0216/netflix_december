import 'package:flutter/material.dart';
import 'package:netflix_december/globalwidgets/usernamecard.dart';
import 'package:netflix_december/utils/color_constants/color_constants.dart';
import 'package:netflix_december/utils/db/db.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundBlack,
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            height: 150,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => index <
                        DataBase.userdetails.length
                    ? UsernameCard(
                        imageurl:
                            DataBase.userdetails[index]["userimage"].toString(),
                        username:
                            DataBase.userdetails[index]["username"].toString(),
                        height: index == 0 ? 100 : 80,
                        width: index == 0 ? 100 : 80,
                      )
                    : InkWell(
                        child: Column(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              // color: Colors.white,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/addbutton.png")),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                      ),

                // Column(
                //       children: [
                //         Container(
                //           height: 70,
                //           width: 90,
                //           decoration: BoxDecoration(
                //               image: DecorationImage(
                //                   image: NetworkImage(DataBase
                //                       .userdetails[index]["userimage"]
                //                       .toString()),
                //                   fit: BoxFit.fill)),
                //         ),
                //         SizedBox(height: 5),
                //         Text(
                //           DataBase.userdetails[index]["username"].toString(),
                //           style: TextStyle(color: ColorConstant.textColor),
                //         )
                //       ],
                //     ),
                separatorBuilder: (context, index) => SizedBox(width: 10),
                itemCount: DataBase.userdetails.length + 1),
          ),
          SizedBox(height: 7),
          // 2nd
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.edit,
                color: Colors.white,
                size: 14,
              ),
              SizedBox(width: 7),
              Text(
                "manage profiles",
                style: TextStyle(color: ColorConstant.textColor),
              )
            ],
          ),
          SizedBox(height: 7),
          // 3rd
          Container(
            // height: 250,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            color: ColorConstant.containerGrey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //row
                Row(
                  children: [
                    Icon(
                      Icons.sms_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Tell friends about Netflix",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.textColor,
                          fontSize: 20),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                // row ends
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
                  style: TextStyle(
                    color: ColorConstant.textColor,
                    fontSize: 10,
                  ),
                  maxLines: 2,
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Terms&Conditions",
                  style:
                      TextStyle(fontSize: 10, color: ColorConstant.textColor),
                ),
                SizedBox(
                  height: 7,
                ),
                // next row
                // Row(
                //   children: [
                //     Container(
                //       height: 37,
                //       width: 310,
                //       color: ColorConstant.backgroundBlack,
                //     ),
                //     SizedBox(width: 7),
                //     Container(
                //       height: 37,
                //       width: 75,
                //       color: ColorConstant.textColor,
                //       child: Center(
                //         child: Text(
                //           "Next",
                //           style: TextStyle(
                //               color: Colors.black, fontWeight: FontWeight.bold),
                //         ),
                //       ),
                //     )
                //   ],
                // ),

                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        color: ColorConstant.backgroundBlack,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 30),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          color: ColorConstant.textColor,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: Center(
                            child: Text(
                              "Copy Link",
                              style: TextStyle(
                                  color: ColorConstant.backgroundBlack),
                            ),
                          ),
                        ))
                  ],
                ),
                SizedBox(height: 10),
                // row ends

                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("assets/images/whatsapp.png")),
                      VerticalDivider(
                        color: ColorConstant.textColor,
                        thickness: 2,
                        width: 10,
                        indent: 5,
                        endIndent: 5,
                      ),
                      Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("assets/images/facebook.png")),
                      VerticalDivider(
                        color: ColorConstant.textColor,
                        thickness: 2,
                        width: 10,
                        indent: 5,
                        endIndent: 5,
                      ),
                      Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("assets/images/mail.png")),
                      VerticalDivider(
                        color: ColorConstant.textColor,
                        thickness: 2,
                        width: 10,
                        indent: 5,
                        endIndent: 5,
                      ),
                      Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("assets/images/more.png"))
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 7),
          //next row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.done,
                  size: 35,
                  color: Colors.white,
                ),
                SizedBox(width: 7),
                Text(
                  "My List",
                  style:
                      TextStyle(color: ColorConstant.textColor, fontSize: 22),
                )
              ],
            ),
          ),
          Divider(
            color: ColorConstant.containerGrey,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "App Settings",
                      style: TextStyle(
                          color: ColorConstant.textColor, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Account",
                      style: TextStyle(
                          color: ColorConstant.textColor, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Help",
                      style: TextStyle(
                          color: ColorConstant.textColor, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Sign Out",
                      style: TextStyle(
                          color: ColorConstant.textColor, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
