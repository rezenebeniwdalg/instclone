import 'package:flutter/material.dart';

class FavourYou extends StatefulWidget {
  const FavourYou({super.key});

  @override
  State<FavourYou> createState() => _FavourYouState();
}

class _FavourYouState extends State<FavourYou> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.orange,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.pink,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}
