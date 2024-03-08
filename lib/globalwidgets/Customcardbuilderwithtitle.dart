import 'package:flutter/material.dart';
import 'package:instclone/globalwidgets/fav_noti.dart';

class Custcardbuildwtitle extends StatelessWidget {
  const Custcardbuildwtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 8, left: 16, right: 16, top: 13),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "title",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          SizedBox(
            width: 13,
          ),
          Column(
            children: List.generate(4, (index) => CustomNotificationVard()),
          )
        ],
      ),
    );
  }
}
