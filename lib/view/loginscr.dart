import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instclone/core/constants/colorconst.dart';
import 'package:instclone/core/constants/imageconstants.dart';
import 'package:instclone/globalwidgets/custombutton.dart';
import 'package:instclone/view/bottomnavbar/botnavbar.dart';
// import 'package:instclone/view/bottomnavbar/botnavbar.dart';

class LoginScr extends StatefulWidget {
  const LoginScr({super.key});
  @override
  State<LoginScr> createState() => _LoginScrState();
}

class _LoginScrState extends State<LoginScr> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          backgroundColor: Colors.transparent,
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(ImageConst.insticon),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    fillColor: ColorConstants.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                ColorConstants.primaryBlack.withOpacity(.1))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                ColorConstants.primaryBlack.withOpacity(.4))),
                  ),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passController,
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: ColorConstants.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                ColorConstants.primaryBlack.withOpacity(.1))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                ColorConstants.primaryBlack.withOpacity(.4))),
                  ),
                  onChanged: (value) {
                    print(value);
                    setState(() {});
                  },
                ),
                SizedBox(height: 8),
                // CustomButton(
                //       ButtonColor
                // )

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.primaryBlue),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButton(
                  butcolor: nameController.text.isNotEmpty &&
                          passController.text.isNotEmpty
                      ? ColorConstants.primaryBlue
                      : ColorConstants.primaryBlue.withOpacity(.4),
                  text: "Log in",
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavBarScreen()),
                        (route) => false);
                  },
                ),
                SizedBox(height: 30),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook),
                        Text(
                          "Login with Facebook",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3797EF),
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Divider(
                      endIndent: 30,
                    )),
                    Text("OR"),
                    Expanded(
                        child: Divider(
                      indent: 30,
                    )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  // decoration: BoxDecoration(
                  //     border: Border(top: BorderSide(width: .1))),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "dont have an acount?",
                      style: TextStyle(
                          fontSize: 16, color: Colors.black.withOpacity(.6)),
                      children: [
                        TextSpan(
                            text: "SignUp",
                            style: TextStyle(color: Colors.blue))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
        bottomNavigationBar: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration:
                BoxDecoration(border: Border(top: BorderSide(width: .1))),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Instagram or Facebook",
                style: TextStyle(
                    fontSize: 16, color: Colors.black.withOpacity(.6)),
                // children: [
                //   TextSpan(text: "SignUp", style: TextStyle(color: Colors.blue))
                // ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
