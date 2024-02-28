import 'package:flutter/material.dart';
import 'package:instclone/core/constants/imageconstants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.camera_alt_outlined),
          title: Image.asset(ImageConst.insticon),
        ),
      ),
    );
  }
}
