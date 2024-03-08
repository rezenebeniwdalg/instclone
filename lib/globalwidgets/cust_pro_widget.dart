import 'package:flutter/material.dart';
import 'package:instclone/core/constants/colorconst.dart';

class CustomProfileDataWidget extends StatelessWidget {
  const CustomProfileDataWidget(
      {super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: TextStyle(
              color: ColorConstants.primaryBlack,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        Text(
          title,
          style: TextStyle(
              color: ColorConstants.primaryBlack,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
