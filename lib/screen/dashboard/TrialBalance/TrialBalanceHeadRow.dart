import 'package:first_project/theme/colors.dart';
import 'package:flutter/widgets.dart';

class TrialBalanceHeadRow extends StatelessWidget {
  const TrialBalanceHeadRow({
    super.key,
    this.text1 = "",
    this.text2 = "",
    this.text3 = "",
    this.text4 = "",
    this.paddingHorizontal = 4,
    this.paddingVertical = 16,
  });

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final double paddingVertical;
  final double paddingHorizontal;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 1, color: colorsNavy),
        top: BorderSide(width: 1, color: colorsNavy),
      )),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: paddingVertical, horizontal: paddingHorizontal),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(color: Color(0xFFCECEE1), width: 1))),
                child: Text(
                  text1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 15,
                      color: colorsNavy,
                      fontWeight: FontWeight.w500),
                ),
              )),
          Expanded(
              flex: 12,
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: paddingVertical, horizontal: paddingHorizontal),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(color: Color(0xFFCECEE1), width: 1))),
                child: Text(
                  text2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 15,
                      color: colorsNavy,
                      fontWeight: FontWeight.w500),
                ),
              )),
          Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: paddingVertical, horizontal: paddingHorizontal),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(color: Color(0xFFCECEE1), width: 1))),
                child: Text(
                  text3,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 15,
                      color: colorsNavy,
                      fontWeight: FontWeight.w500),
                ),
              )),
          Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: paddingVertical, horizontal: paddingHorizontal),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(color: Color(0xFFCECEE1), width: 1))),
                child: Text(
                  text4,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 15,
                      color: colorsNavy,
                      fontWeight: FontWeight.w500),
                ),
              )),
        ],
      ),
    );
  }
}
