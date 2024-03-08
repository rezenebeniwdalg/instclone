import 'package:flutter/material.dart';
import 'package:instclone/core/constants/imageconstants.dart';
import 'package:instclone/dummy_db.dart';
import 'package:instclone/globalwidgets/customstoryavatar.dart';
import 'package:instclone/globalwidgets/usrpostwdgt.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.camera_alt_outlined),
        title: Image.asset("assets/images/Instagram Logo.png"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined)),
          SizedBox(
            width: 10,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  Dummy_db.storylist.length,
                  (index) => Custavatar(
                    propic: Dummy_db.storylist[index]["propic"],
                    usrname: Dummy_db.storylist[index]["usrname"],
                    islive: Dummy_db.storylist[index]["islive"],
                  ),
                ),
              ),
            ),
            // ListView.builder(
            //   shrinkWrap: true,
            //   physics: NeverScrollableScrollPhysics(),
            //   itemCount: 10,
            //   itemBuilder: (context, index) => CustomPostContainer(),
            // ),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: Dummy_db.homepostlist.length,
              itemBuilder: (context, index) => CustomPostsContainer(
                userName: Dummy_db.homepostlist[index]["username"].toString(),
                location: Dummy_db.homepostlist[index]["location"].toString(),
                homepostlist: Dummy_db.homepostlist[index]["posts"],
                proPic: Dummy_db.homepostlist[index]["proPic"].toString(),
                caption: Dummy_db.homepostlist[index]["caption"].toString(),
                isLiked: Dummy_db.homepostlist[index]["liked"],
              ),
            )
          ],
        ),
      ),
    );
  }
}
