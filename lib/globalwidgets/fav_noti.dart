import 'package:flutter/material.dart';

class CustomNotificationVard extends StatelessWidget {
  const CustomNotificationVard({super.key});

  @override
  Widget build(BuildContext context) {
    List profileImages = ["", ""];
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
        Text("Kareena liked your photo. 1h"),
        Spacer(),
        Container(
          height: 44,
          width: 44,
          color: Colors.yellow,
        )
      ]),
    );
  }
}
