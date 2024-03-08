import 'package:flutter/material.dart';
import 'package:instclone/globalwidgets/Customcardbuilderwithtitle.dart';
import 'package:instclone/globalwidgets/fav_noti.dart';
import 'package:instclone/view/favour_you.dart';

class FavourScr extends StatelessWidget {
  const FavourScr({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // bottom:preferredSize(preferredSize: Size.fromheight(0),)
        appBar: TabBar(
            // tabAlignment: TabAlignment.,
            dividerHeight: 1,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(child: Tab(text: "Following")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(child: Tab(text: "You")),
              ),
            ]),
        body: TabBarView(children: [
          FavourYou(),
          Custcardbuildwtitle(),
        ]),
      ),
    );
  }
}
