import 'package:flutter/material.dart';

class Custavatar extends StatelessWidget {
  const Custavatar(
      {super.key,
      required this.propic,
      required this.usrname,
      this.islive = false});
  final String propic;
  final String usrname;
  final bool islive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SizedBox(
              height: 110,
            ),
            Container(
              padding: EdgeInsets.all(3),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      end: Alignment.bottomRight,
                      colors: [Colors.red, Colors.blue, Colors.yellow])),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 240, 240),
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(propic),
                ),
              ),
            ),
            Positioned(
              bottom: 8,
              child: islive == true
                  ? Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 4, color: Colors.white),
                      ),
                      child: Center(
                        child: Text(
                          "Live",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  : SizedBox(),
            )
          ],
        ),
        SizedBox(
          height: 3,
        ),
        Text(usrname),
      ]),
    );
  }
}
