import 'package:flutter/material.dart';
import 'package:instclone/core/constants/colorconst.dart';
import 'package:instclone/dummy_db.dart';
import 'package:instclone/globalwidgets/cust_pro_widget.dart';
import 'package:instclone/globalwidgets/custombutton.dart';
import 'package:instclone/globalwidgets/highlightavatar.dart';
import 'package:instclone/view/progridview.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.lock),
              Text("ebenezer"),
              Icon(Icons.keyboard_arrow_down_rounded),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 48,
                          backgroundColor:
                              ColorConstants.primaryBlack.withOpacity(.1),
                          child: CircleAvatar(
                              radius: 46,
                              backgroundColor: ColorConstants.white,
                              child: CircleAvatar(
                                radius: 43,
                                backgroundColor: ColorConstants.primaryBlack,
                                backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=400"),
                              )),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomProfileDataWidget(
                                  title: "Posts", value: "20"),
                              CustomProfileDataWidget(
                                  title: "Followers", value: "50"),
                              CustomProfileDataWidget(
                                  title: "Following", value: "99"),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "EBENEZER GLADWIN",
                      style: TextStyle(
                          color: ColorConstants.primaryBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                        maxLines: 3,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        "LIFE IS MEANT TO BE A SOLO"),
                    SizedBox(
                      height: 16,
                    ),
                    CustomButton(
                      text: "Edit Profile",
                      haveborder: true,
                      verticalPadding: 5,
                      butcolor: ColorConstants.transparent,
                      textColor: ColorConstants.primaryBlack,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 42,
                                backgroundColor:
                                    ColorConstants.primaryBlack.withOpacity(.1),
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundColor: ColorConstants.white,
                                  child: Icon(Icons.add),
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Add",
                                style: TextStyle(
                                    color: ColorConstants.primaryBlack,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          Row(
                            children: List.generate(
                              Dummy_db.highlights.length,
                              (index) => HighlightAvatar(
                                  propic: Dummy_db.highlights[index]["propic"],
                                  usrname: Dummy_db.storylist[index]
                                      ["usrname"]),
                              // 10,
                              // (index) => Padding(
                              //   padding: const EdgeInsets.only(left: 10),
                              //START
                              // child: Column(
                              // children: [s
                              // CircleAvatar(
                              //   radius: 36,
                              //   backgroundColor: ColorConstants
                              //       .primaryBlack
                              //       .withOpacity(.1),
                              //   // child: CircleAvatar(
                              //   //     radius: 34,
                              //   //     backgroundColor: ColorConstants.white,
                              //   //     child: CircleAvatar(
                              //   //       radius: 32,
                              //   //       backgroundColor:
                              //   //           ColorConstants.primaryBlack,
                              //   //       // backgroundImage: NetworkImage(
                              //   //       //     "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=400"),
                              //   //     )),
                              // ),
                              // SizedBox(
                              //   height: 3,
                              // ),
                              // Text(
                              //   "title",
                              //   style: TextStyle(
                              //       color: ColorConstants.primaryBlack,
                              //       fontSize: 14,
                              //       fontWeight: FontWeight.normal),
                              // ),
                              // ],
                              // ),
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 20,
              ),
              TabBar(
                  indicatorWeight: 1,
                  dividerHeight: 0,
                  indicatorColor: ColorConstants.primaryBlack,
                  labelColor: ColorConstants.primaryBlack,
                  unselectedLabelColor:
                      ColorConstants.primaryBlack.withOpacity(.3),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_on_sharp),
                    ),
                    Tab(
                      icon: Icon(Icons.person_pin_rounded),
                    )
                  ]),
              Container(
                height: 400,
                child: TabBarView(children: [
                  ProGridView(),
                  Container(
                    color: Colors.green,
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
