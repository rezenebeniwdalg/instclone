import 'package:flutter/material.dart';

class CustomNotificationVard extends StatelessWidget {
  const CustomNotificationVard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(children: [
        CircleAvatar(
          radius: 22,
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
