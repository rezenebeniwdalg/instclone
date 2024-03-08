import 'package:flutter/material.dart';
import 'package:instclone/core/constants/colorconst.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.butcolor = Colors.blue,
      this.haveborder = false,
      this.textColor = ColorConstants.white,
      this.onTap,
      this.verticalPadding = 15});
  final String text;
  final Color textColor;
  final Color butcolor;
  final bool haveborder;
  final double verticalPadding;

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: butcolor,
            borderRadius: BorderRadius.circular(8),
            border: haveborder == true
                ? Border.all(color: Colors.grey.withOpacity(.4))
                : null),
        child: Center(
          child: Text(text,
              style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              )),
        ),
      ),
    );
  }
}
