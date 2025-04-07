import 'package:first_project/component/CircularCheckBox.dart';
import 'package:first_project/component/EditText.dart';
import 'package:first_project/component/FilePickerDialog.dart';
import 'package:first_project/component/MyButton.dart';
import 'package:first_project/main.dart';
import 'package:first_project/theme/colors.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationState();
}

class _RegistrationState extends State<RegistrationScreen> {
  bool _isKemahasiswaanChecked = true;

  Uri? _fileUri;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 28),
        child: Column(
          children: [
            Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      style: ButtonStyle(splashFactory: NoSplash.splashFactory),
                      onPressed: () => Navigator.pop(context),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 16,
                            height: 16,
                            child: Image.asset(
                              "assets/image/ic_button_back.png",
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Back",
                            style: TextStyle(
                              color: colorsNavy,
                              fontFamily: "Inter",
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 18),
                        alignment: Alignment.bottomRight,
                        width: 64,
                        height: 64,
                        child: Image.asset("assets/image/logo.png"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 35),
            Container(
              padding: EdgeInsets.only(
                left: 36,
                right: 36,
                top: 24,
                bottom: 84,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(32)),
                color: colorsNavy,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 42),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Create New Account",
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: "Inter",
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Registered?",
                        style: TextStyle(
                          fontFamily: "Inter",
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          splashFactory: NoSplash.splashFactory,
                        ),
                        onPressed: () => {Navigator.pop(context)},
                        child: Text(
                          "Log In Here",
                          style: TextStyle(
                            color: Colors.transparent,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            shadows: [
                              Shadow(
                                color: Colors.white,
                                offset: Offset(0, -2),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  EditText(
                    text: "",
                    hint: "Asal UKM",
                    cornerRadius: 12,
                    marginHorizontal: 0,
                    marginVertical: 8,
                  ),
                  EditText(
                    text: "",
                    hint: "Email",
                    cornerRadius: 12,
                    marginHorizontal: 0,
                    marginVertical: 8,
                  ),
                  EditText(
                    text: "",
                    hint: "Password",
                    cornerRadius: 12,
                    marginHorizontal: 0,
                    marginVertical: 8,
                    isObscureText: true,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularCheckedBox(
                          textColor: Colors.white,
                          text: "Kemahasiswaan",
                          onChanged:
                              (newValue) => setState(() {
                                _isKemahasiswaanChecked = true;
                              }),
                          isChecked: _isKemahasiswaanChecked,
                          fontSize: 14,
                          borderColor: Colors.white,
                        ),
                        CircularCheckedBox(
                          textColor: Colors.white,
                          text: "Organisasi",
                          onChanged:
                              (newValue) => setState(() {
                                _isKemahasiswaanChecked = false;
                              }),
                          isChecked: !_isKemahasiswaanChecked,
                          fontSize: 14,
                          borderColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 6),
                        child: Text(
                          "Logo Entitas",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Inter",
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        width: 56,
                        height: 24,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 4,
                            padding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed:
                              () => showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return FilePickerDialog(fileUri: _fileUri, (
                                    newFileUri,
                                  ) {
                                    setState(() {
                                      _fileUri = newFileUri;
                                    });
                                  });
                                },
                              ),
                          child: Text(
                            _fileUri == null ? "Pilih" : "Lihat",
                            style: TextStyle(color: colorsNavy, fontSize: 14),
                          ),
                        ),
                      ),

                      //MyButton(text: "Pilih", onPressed: null, cornerRadius: 8,backgroundColor: Colors.white,)
                    ],
                  ),
                  MyButton(
                    text: "Sign Up",
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 4, color: Colors.white),
                              borderRadius: BorderRadius.zero,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF0B0E4F),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              width: 200,
                              height: 180,
                              padding: EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 64,
                                    height: 64,
                                    child: Image.asset(
                                      "assets/image/ic_checklist.png",
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Sign Up Successful",
                                    style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 24,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                      Future.delayed(Duration(seconds: 1), () {
                        Navigator.popUntil(
                          context,
                          ModalRoute.withName(MainRoutes.login.path),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Silahkan Login..")),
                        );
                      });
                    },
                    backgroundColor: Colors.white,
                    cornerRadius: 8,
                    textColor: colorsNavy,
                    margin: EdgeInsets.only(top: 56),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
