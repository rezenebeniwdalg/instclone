import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.butcolor = Colors.blue,
      this.haveborder = false,
      this.onTap});
  final String text;
  final Color butcolor;
  final bool haveborder;

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: butcolor,
            borderRadius: BorderRadius.circular(5),
            border: haveborder == true
                ? Border.all(color: Colors.grey.withOpacity(.4))
                : null),
        child: Center(
          child: Text(
            "Log in",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
