import 'package:flutter/material.dart';

class YourNotificationsTab extends StatefulWidget {
  const YourNotificationsTab({super.key});

  @override
  State<YourNotificationsTab> createState() => _YourNotificationsTabState();
}

class _YourNotificationsTabState extends State<YourNotificationsTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(border: Border(bottom: BorderSide())),
          )
        ],
      ),
    );
  }
}
