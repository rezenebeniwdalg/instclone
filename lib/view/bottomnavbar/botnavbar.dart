import 'package:flutter/material.dart';
import 'package:instclone/view/homescreen.dart';

class Botnavbar extends StatefulWidget {
  const Botnavbar({super.key});

  @override
  State<Botnavbar> createState() => _BotnavbarState();
}

class _BotnavbarState extends State<Botnavbar> {
  int indexvalue = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    // Screen3(),
    // Screen4(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[indexvalue],
      bottomNavigationBar: BottomNavigationBar( onTap: (value){if (value != 2){
        indexvalue = value;
        setState(() {
          
        });
      }},)
      // floatingActionButtonLocation:
      //     FloatingActionButtonLocation.miniCenterDocked,
      // floatingActionButton: Icon(Icons.add_box_outlined),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video_outlined), label: ""),
        BottomNavigationBarItem(icon: CircleAvatar(radius: 10), label: ""),
      ]),
    );
  }
}
