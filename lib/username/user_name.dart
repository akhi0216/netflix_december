import 'package:flutter/material.dart';
import 'package:netflix_december/utils/db/db.dart';
import 'package:netflix_december/view/bottom_navigationpage/bottom_navigationpage.dart';
import 'package:netflix_december/view/home_screen/home_screen.dart';

class UserName extends StatefulWidget {
  const UserName({super.key});

  @override
  State<UserName> createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logos_netflix (3).png"),
              SizedBox(
                width: 95,
              ),
              Icon(
                Icons.edit,
                color: Colors.white,
              )
              // Image.asset("assets/images/bx_bxs-pencil (1).png")
            ],
          )),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: GridView.builder(
            itemCount: DataBase.userdetails.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: (context, index) => index < DataBase.userdetails.length
                ? InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNav(),
                          ));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Image.asset(
                              DataBase.userdetails[index]["userimage"]!),
                          Text(
                            DataBase.userdetails[index]["username"]!,
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
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

            //   ],
            // ),
          ),
        ),
      ),
    );
  }
}
