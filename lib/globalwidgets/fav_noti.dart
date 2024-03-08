import 'package:flutter/material.dart';

class CustomNotificationVard extends StatelessWidget {
  const CustomNotificationVard({super.key});

  @override
  Widget build(BuildContext context) {
    List profileImages = ["", ""];
    bool isfollow = true;
    bool isAlreadyfollowing = true;
    return Container(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(children: [
        profileImages.length < 2
            ? CircleAvatar(
                radius: 22,
              )
            : Stack(
                children: [
                  SizedBox(
                    height: 44,
                    width: 44,
                  ),
                  CircleAvatar(
                    radius: 16,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(radius: 16),
                    ),
                  )
                ],
              ),
        SizedBox(
          height: 12,
        ),
        Expanded(
            child: Text(
          "Kareena liked your photo. 1h",
          maxLines: 3,
          textAlign: TextAlign.justify,
          overflow: TextOverflow.ellipsis,
        )),
        Spacer(),
        isfollow
            ? Container()
            : Container(
                height: 44,
                width: 44,
                // color: Colors.yellow,
                child: Image.asset("assets/images/Icon.png"),
              )
      ]),
    );
  }
}
