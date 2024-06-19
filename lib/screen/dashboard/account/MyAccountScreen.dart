import 'package:first_project/component/ConfirmationDilaog.dart';
import 'package:first_project/screen/dashboard/GeneralLedger/GeneralLedgerHeadRow.dart';
import 'package:first_project/screen/dashboard/GeneralLedger/GeneralLedgerRow.dart';
import 'package:first_project/component/MonthPickerDialog.dart';
import 'package:first_project/screen/dashboard/TransactionRecord/TransactionRecordHeadRow.dart';
import 'package:first_project/main.dart';
import 'package:first_project/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return MyHomePage(Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    color: Color(0xFF0B0E4F),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              style: ButtonStyle(
                                  padding: MaterialStatePropertyAll(
                                      EdgeInsets.all(0)),
                                  alignment: Alignment.centerLeft,
                                  splashFactory: NoSplash.splashFactory),
                              onPressed: () => Navigator.pop(context),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: Image.asset(
                                        "assets/image/ic_button_back_white.png"),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Back",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Inter",
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              "Akun saya",
                              style: TextStyle(
                                  fontFamily: "Inter",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24),
                            )
                          ],
                        ),
                        Spacer(),
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.asset("assets/image/logo_2.png"),
                        )
                      ],
                    ))),
          ],
        ),
        Container(
          padding: EdgeInsets.all(28),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 55, right: 55, top: 22),
                padding: EdgeInsets.symmetric(horizontal: 22, vertical: 13),
                decoration: BoxDecoration(
                    border: Border.all(color: colorsNavy, width: 1)),
                child: Image.asset("assets/image/logo_ukmp.png"),
              ),
              Container(
                  margin: EdgeInsets.only(top: 4),
                  child: TextButton(
                    style: ButtonStyle(
                        alignment: Alignment.centerLeft,
                        splashFactory: NoSplash.splashFactory),
                    onPressed: () => {Navigator.pop(context)},
                    child: Text(
                      "Edit Foto",
                      style: TextStyle(
                          color: Colors.transparent,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          decorationColor: colorsNavy,
                          shadows: [
                            Shadow(color: colorsNavy, offset: Offset(0, -2))
                          ]),
                    ),
                  )),
                  SizedBox(height: 44,),
                   Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Nama Entitas",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          color: colorsNavy),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 8, bottom: 11),
                      child: Text(
                      "UKM Penalaran Unand",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 19,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          color: colorsNavy)
                    ),
                    )
                  ),
                  Divider(
                    color: colorsNavy,
                    height: 2,
                    thickness: 3,
                  )
            ],
          ),
        ),
        Spacer(),
        Row(
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              color: Color(0xFF0B0E4F),
              width: 56,
              height: 56,
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () => showDialog(
                context: context,
                builder: (context) {
                  return ConfirmationDialog(
                    "Keluar dari akun?",
                    textColor: Colors.white,
                    buttonColor: Colors.white,
                    buttonTextColor: colorsNavy,
                    backgroundColor: colorsNavy,
                    isTextBold: false,
                    height: 107,
                    radius: 0,
                     onItemPressed: (isConfirmed){
                      if(isConfirmed){
                        Navigator.pushNamed(context, MainRoutes.login.path);
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Keluar dari akun..")
                              )
                          );
                      }
                     }
                  );
                }),
                child: SizedBox(
                  child: Image.asset("assets/image/ic_logout.png"),
                ),
              ),
            )
          )
          ],
        ),
      ],
    ));
  }
}
