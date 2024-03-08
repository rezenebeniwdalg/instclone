import 'package:flutter/material.dart';
import 'package:instclone/core/constants/colorconst.dart';
import 'package:instclone/globalwidgets/Customcardbuilderwithtitle.dart';

class YourNotificationsTab extends StatefulWidget {
  const YourNotificationsTab({super.key});

  @override
  State<YourNotificationsTab> createState() => _YourNotificationsTabState();
}

// int itemCount = 0;

class _YourNotificationsTabState extends State<YourNotificationsTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: ColorConstants.primaryBlack.withOpacity(0.1)))),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            child: Text("Follow requests"),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>
                  Custcardbuildwtitle(itemCount: index + 1))
        ],
      ),
    );
  }
}
