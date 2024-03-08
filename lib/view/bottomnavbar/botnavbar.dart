import 'package:flutter/material.dart';
import 'package:instclone/globalwidgets/customstoryavatar.dart';
import 'package:instclone/view/crtpostscr.dart';
import 'package:instclone/view/favour.dart';
import 'package:instclone/view/homescreen.dart';
import 'package:instclone/view/profile_screen.dart';
import 'package:instclone/view/searchscreen.dart';
import 'package:instclone/view/selectacscr.dart';
// import 'package:instagram_clone_application/view/select_account_screen/select_account_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> screesList = [
    HomeScreen(),
    SearchScreen(),
    CreatePostScreen(),
    FavourScr(),
    ProfileScreen(),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screesList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value != 2) {
            selectedIndex = value;
            setState(() {});
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreatePostScreen(),
                ));
          }
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),

          // center bottm nav  button
          BottomNavigationBarItem(
              icon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all()),
                  child: const Icon(Icons.add)),
              label: ""),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: ""),
          const BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=400"),
                radius: 15,
              ),
              label: ""),
        ],
      ),
    );
  }
}
