import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instclone/core/constants/imageconstants.dart';
import 'package:instclone/globalwidgets/custombutton.dart';
import 'package:instclone/view/bottomnavbar/botnavbar.dart';
// import 'package:instclone/view/bottomnavbar/botnavbar.dart';

class LoginScr extends StatelessWidget {
  const LoginScr({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Center(
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
                    controller: passController,
                    onTapOutside: (event) {
                      FocusScope.of(context).unfocus();
                    },
                    decoration: InputDecoration(
                        hintText: 'Username',
                        hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 195, 194, 194)),
                        fillColor: Color.fromARGB(255, 239, 237, 237),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color.fromARGB(255, 180, 178, 178)
                                    .withOpacity(.1)))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: nameController,
                    onTapOutside: (event) {
                      FocusScope.of(context).unfocus();
                    },
                    obscuringCharacter: "*",
                    // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 195, 194, 194)),
                        fillColor: Color.fromARGB(255, 239, 237, 237),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 128, 127, 127)
                                    .withOpacity(.1)))),

                    onChanged: (value) {
                      print(value);
                      // setState(() {});
                    },
                  ),
                  // CustomButton(
                  //       ButtonColor
                  // )

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "forgot password?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff3797EF),
                            ),
                            textAlign: TextAlign.right,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    text: "Log In",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Botnavbar()));
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
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
        ),
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
