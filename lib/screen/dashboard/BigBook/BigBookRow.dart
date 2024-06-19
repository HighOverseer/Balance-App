import 'package:first_project/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BigBookRow extends StatelessWidget {
  const BigBookRow({
    super.key,
    this.text1 = "",
    this.text2 = "",
    this.text3 = "",
    this.text4 = "",
    this.text5 = "",
    this.paddingHorizontal = 4,
    this.paddingVertical = 12,
  });

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final double paddingVertical;
  final double paddingHorizontal;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(color: Color(0xFFCECEE1), width: 1),
        )),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(
                        vertical: paddingVertical,
                        horizontal: paddingHorizontal),
                    child: Text(
                      text1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 12,
                          color: colorsNavy,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
              Container(
                  height: double.infinity, color: Color(0xFFCECEE1), width: 1),
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: paddingVertical,
                        horizontal: paddingHorizontal),
                    child: Text(
                      text2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 12,
                          color: colorsNavy,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
              Container(
                  height: double.infinity, color: Color(0xFFCECEE1), width: 1),
              Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: paddingVertical,
                        horizontal: paddingHorizontal),
                    child: Text(
                      text3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 12,
                          color: colorsNavy,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
              Container(
                  height: double.infinity, color: Color(0xFFCECEE1), width: 1),
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(
                        vertical: paddingVertical,
                        horizontal: paddingHorizontal),
                    child: Text(
                      text4,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 12,
                          color: colorsNavy,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
              Container(
                  height: double.infinity, color: Color(0xFFCECEE1), width: 1),
              Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.symmetric(
                        vertical: paddingVertical,
                        horizontal: paddingHorizontal),
                    child: Text(
                      text5,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 12,
                          color: colorsNavy,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
            ],
          ),
        ));
  }
}
