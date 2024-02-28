import 'package:flutter/material.dart';
import 'package:instclone/core/constants/imageconstants.dart';
import 'package:instclone/view/selectacscr.dart';

class SplashScr extends StatefulWidget {
  const SplashScr({super.key});

  @override
  State<SplashScr> createState() => _SplashScrState();
}

class _SplashScrState extends State<SplashScr> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Selectacscr()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(
        ImageConst.appIcon,
        scale: 1.5,
      )),
    );
  }
}
