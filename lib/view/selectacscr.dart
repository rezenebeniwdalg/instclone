import 'package:flutter/material.dart';
import 'package:instclone/core/constants/imageconstants.dart';
import 'package:instclone/globalwidgets/custombutton.dart';
import 'package:instclone/view/loginscr.dart';

class Selectacscr extends StatelessWidget {
  const Selectacscr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(ImageConst.insticon),
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&w=400"),
                radius: 50,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "eben",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                text: "Log In",
                onTap: () {
                  // print("my button pressed custom ");
                  // LoginScr();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScr()));
                },
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text("Switch Accounts",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff3797EF))))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(border: Border(top: BorderSide(width: .1))),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "dont have an acount?",
            style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(.6)),
            children: [
              TextSpan(text: "SignUp", style: TextStyle(color: Colors.blue))
            ],
          ),
        ),
      ),
    );
  }
}
