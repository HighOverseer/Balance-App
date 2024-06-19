import 'package:first_project/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TrialBalanceRow extends StatelessWidget {
  const TrialBalanceRow({
    super.key,
    this.text1 = "",
    this.text2 = "",
    this.text3 = "",
    this.text4 = "",
    this.paddingHorizontal = 4,
    this.paddingVertical = 16,
    this.isTextBold = false
  });

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final double paddingVertical;
  final double paddingHorizontal;
  final bool isTextBold;

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
                  flex: 3,
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
                          fontSize: 13,
                          color: colorsNavy,
                          
                          fontWeight: isTextBold ? FontWeight.bold : FontWeight.w500 ),
                    ),
                  )),
              Container(
                  height: double.infinity, color: Color(0xFFCECEE1), width: 1),
              Expanded(
                  flex: 12,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    padding: EdgeInsets.symmetric(
                        vertical: paddingVertical,
                        horizontal: paddingHorizontal),
                    child: Text(
                      text2,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 13,
                          color: colorsNavy,
                          fontWeight: isTextBold ? FontWeight.bold : FontWeight.w500),
                    ),
                  )),
              Container(
                  height: double.infinity, color: Color(0xFFCECEE1), width: 1),
              Expanded(
                  flex: 6,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: paddingVertical,
                        horizontal: paddingHorizontal),
                    child: Text(
                      text3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 13,
                          color: colorsNavy,
                          fontWeight: isTextBold ? FontWeight.bold : FontWeight.w500),
                    ),
                  )),
              Container(
                  height: double.infinity, color: Color(0xFFCECEE1), width: 1),
              Expanded(
                  flex: 6,
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
                          fontSize: 13,
                          color: colorsNavy,
                          fontWeight: isTextBold ? FontWeight.bold : FontWeight.w500),
                    ),
                  )),
            ],
          ),
        ));
  }
}
