import 'package:first_project/component/CircularCheckBox.dart';
import 'package:first_project/component/EditText.dart';
import 'package:first_project/component/MyButton.dart';
import 'package:first_project/main.dart';
import 'package:first_project/screen/dashboard/DashboardScreen.dart';

import 'package:first_project/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {

  LoginScreen(this.navigateToRegis, {super.key});

  final void Function() navigateToRegis;

  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  bool _isKemahasiswaanChecked = true;
  bool _isLoginSuccess = false;

  @override
  Widget build(BuildContext context) {
    if(_isLoginSuccess){
      Future.delayed(
        Duration(seconds: 3),
        (){
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => DashboardScreen()),
            ModalRoute.withName("/")
          );
        }
      );
    }
    return MyHomePage(
      _isLoginSuccess ? Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                margin: EdgeInsets.only(top: 34, right: 13),
                width: 64,
                height: 64,
                child: Image.asset("assets/image/logo.png")),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 168,
                    height: 168,
                    child: Image.asset("assets/image/logo_ukmp.png"),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                    margin: EdgeInsets.only(top: 54),
                    color: colorsNavy,
                    padding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 42,
                          height: 42,
                          child: Image.asset("assets/image/ic_checklist.png"),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Log In Successful",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Welcome to Balance,\nUKM Penalaran Unand!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                  )
                      )
                    ],
                  )
                  
                ],
              )
              ,
            ),
            )
          ],

        ):Center(
        child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 188,
              height: 188,
              child: Image.asset("assets/image/logo.png"),
            ),
            SizedBox(
              height: 18,
            ),
            const Text(
              "Login",
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111463),
                  fontFamily: "Inter",
                  decoration: TextDecoration.none),
            ),
            SizedBox(height: 14),
            EditText(
              text: "",
              hint: "E-mail",
              cornerRadius: 18.toDouble(),
              fontSize: 18,
            ),
            EditText(
              text: "",
              hint: "Password",
              cornerRadius: 18.toDouble(),
              fontSize: 18,
              isObscureText: true,
            ),
            Container(
              margin: EdgeInsets.only(left: 26, right: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularCheckedBox(
                      text: "Kemahasiswaan",
                      onChanged: (newValue) => setState(() {
                            _isKemahasiswaanChecked = true;
                          }),
                      isChecked: _isKemahasiswaanChecked,
                      fontSize: 14,
                      borderColor: colorsNavy
                      ),
                  CircularCheckedBox(
                      text: "Organisasi",
                      onChanged: (newValue) => setState(() {
                            if (newValue != null) {
                              _isKemahasiswaanChecked = false;
                            }
                          }),
                      isChecked: !_isKemahasiswaanChecked,
                      fontSize: 14,
                      borderColor: colorsNavy,
                      ),
                ],
              ),
            ),
            MyButton(
              text: "Log In",
              onPressed: () => setState(() {
                _isLoginSuccess = true;
              }),
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            ),
            Container(
                margin:
                    EdgeInsets.only(left: 24, right: 24, top: 22, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        flex: 7,
                        child: Divider(
                          color: Color(0xFF111463),
                          thickness: 4,
                          height: 1,
                        )),
                    Flexible(
                      flex: 2,
                      child: Text(
                        "OR",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF111463),
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 7,
                        child: Divider(
                          color: colorsNavy,
                          thickness: 4,
                          height: 1,
                        ))
                  ],
                )),
            TextButton(
              style: ButtonStyle(
                splashFactory: NoSplash.splashFactory
              ),
              onPressed: widget.navigateToRegis,
              child: Text(
                "Create New Account",
                style: TextStyle(
                  color: Colors.transparent,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                  shadows: [Shadow(color: colorsNavy, offset: Offset(0, -2))]),  
              ),
            )
          ],
        ),
      ),
    ));
  }
}
